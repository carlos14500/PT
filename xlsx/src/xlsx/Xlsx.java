/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xlsx;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class Xlsx {
    public static void main(String[] args) {
        String filePath = "C:\\Users\\carlo\\OneDrive\\Escritorio\\XML\\XMLCompleto.xlsx"; 
        String jdbcURL = "jdbc:sqlserver://CARLOSEMILIO;databaseName=Mediciones;user=sa;password=root";

        List<String> sharedStrings = new ArrayList<>();
        List<List<String>> data = new ArrayList<>();

        // Leer sharedStrings.xml
        try (FileInputStream fis = new FileInputStream(new File(filePath));
             ZipInputStream zis = new ZipInputStream(fis)) {
            ZipEntry ze;

            while ((ze = zis.getNextEntry()) != null) {
                if (ze.getName().equals("xl/sharedStrings.xml")) {
                    sharedStrings = readSharedStrings(zis);
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Leer sheet1.xml
        try (FileInputStream fis = new FileInputStream(new File(filePath));
             ZipInputStream zis = new ZipInputStream(fis)) {
            ZipEntry ze;

            while ((ze = zis.getNextEntry()) != null) {
                if (ze.getName().equals("xl/worksheets/sheet1.xml")) {
                    data = readSheetXML(zis, sharedStrings);
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Insertar datos en MSSQL
        try (Connection conn = DriverManager.getConnection(jdbcURL)) {
            String sql = "INSERT INTO Mediciones (Fecha, AQI, AQI_Alto, PM_1, Alto_PM_1 , PM2_5, Alto_PM2_5, PM_10, Alto_PM_10, Temperatura, Temperatura_Alta, Temperatura_Baja, Humedad, Humedad_Alta, Humedad_Baja, Rocio, Max_Rocio, Min_Rocio, BH, MAXTEMPBH, MINTEMPBH, IndiceCalor, Max_IndiceCalor) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);

            for (List<String> row : data) {
                for (int i = 0; i < row.size(); i++) {
                    statement.setString(i + 1, row.get(i));
                }
                statement.addBatch();
            }
            statement.executeBatch();
            System.out.println("Datos insertados correctamente en la base de datos.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static List<String> readSharedStrings(ZipInputStream zis) {
        List<String> sharedStrings = new ArrayList<>();

        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(zis);

            NodeList stringList = doc.getElementsByTagName("si");
            for (int i = 0; i < stringList.getLength(); i++) {
                Element stringItem = (Element) stringList.item(i);
                NodeList textList = stringItem.getElementsByTagName("t");
                StringBuilder sb = new StringBuilder();
                for (int j = 0; j < textList.getLength(); j++) {
                    sb.append(textList.item(j).getTextContent());
                }
                sharedStrings.add(sb.toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return sharedStrings;
    }

    private static List<List<String>> readSheetXML(ZipInputStream zis, List<String> sharedStrings) {
        List<List<String>> data = new ArrayList<>();

        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(zis);

            NodeList rowList = doc.getElementsByTagName("row");
            for (int i = 0; i < rowList.getLength(); i++) {
                Element row = (Element) rowList.item(i);
                NodeList cellList = row.getElementsByTagName("c");
                List<String> rowData = new ArrayList<>();
                for (int j = 0; j < cellList.getLength(); j++) {
                    Element cell = (Element) cellList.item(j);
                    String cellValue = getCellValue(cell, sharedStrings);
                    rowData.add(cellValue);
                }
                data.add(rowData);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }

    private static String getCellValue(Element cell, List<String> sharedStrings) {
        String cellType = cell.getAttribute("t");
        String cellValue = "";

        NodeList valueList = cell.getElementsByTagName("v");
        if (valueList.getLength() > 0) {
            cellValue = valueList.item(0).getTextContent();
        }

        if ("s".equals(cellType) && !cellValue.isEmpty()) {
            int idx = Integer.parseInt(cellValue);
            cellValue = sharedStrings.get(idx);
        }

        return cellValue;
    }
}



