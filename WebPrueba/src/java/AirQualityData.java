import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

public class AirQualityData {
    String fecha;
    private int aqi;
    private int aqiAlto;
    private double pm1;
    private int altoPm1;
    private double pm25;
    private int altoPm25;
    private double pm10;
    private int altoPm10;
    private double temperatura;
    private double temperaturaAlta;
    private double temperaturaBaja;
    private double humedad;
    private double humedadAlta;
    private double humedadBaja;
    private double rocio;
    private double maxRocio;
    private double minRocio;
    private double bh;
    private double maxTempBh;
    private double minTempBh;
    private double indiceCalor;
    private double maxIndiceCalor;

    // Getters y Setters con anotaciones JAXB
    
    public String getFecha() {
        return fecha;
    }
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    public int getAqi() {
        return aqi;
    }
    public void setAqi(int aqi) {
        this.aqi = aqi;
    }
    @XmlElement(name="AQI_Alto")
    public int getAqiAlto() {
        return aqiAlto;
    }
    public void setAqiAlto(int aqiAlto) {
        this.aqiAlto = aqiAlto;
    }
    @XmlElement(name="PM_1")
    public double getPm1() {
        return pm1;
    }
    public void setPm1(double pm1) {
        this.pm1 = pm1;
    }
    @XmlElement(name="Alto_PM_1")
    public int getAltoPm1() {
        return altoPm1;
    }
    public void setAltoPm1(int altoPm1) {
        this.altoPm1 = altoPm1;
    }
    @XmlElement(name="PM2_5")
    public double getPm25() {
        return pm25;
    }
    public void setPm25(double pm25) {
        this.pm25 = pm25;
    }
    @XmlElement(name="Alto_PM2_5")
    public int getAltoPm25() {
        return altoPm25;
    }
    public void setAltoPm25(int altoPm25) {
        this.altoPm25 = altoPm25;
    }
    @XmlElement(name="PM_10")
    public double getPm10() {
        return pm10;
    }
    public void setPm10(double pm10) {
        this.pm10 = pm10;
    }
    @XmlElement(name="Alto_PM_10")
    public int getAltoPm10() {
        return altoPm10;
    }
    public void setAltoPm10(int altoPm10) {
        this.altoPm10 = altoPm10;
    }
    @XmlElement
    public double getTemperatura() {
        return temperatura;
    }
    public void setTemperatura(double temperatura) {
        this.temperatura = temperatura;
    }
    @XmlElement(name="Temperatura_Alta")
    public double getTemperaturaAlta() {
        return temperaturaAlta;
    }
    public void setTemperaturaAlta(double temperaturaAlta) {
        this.temperaturaAlta = temperaturaAlta;
    }
    @XmlElement(name="Temperatura_Baja")
    public double getTemperaturaBaja() {
        return temperaturaBaja;
    }
    public void setTemperaturaBaja(double temperaturaBaja) {
        this.temperaturaBaja = temperaturaBaja;
    }
    @XmlElement
    public double getHumedad() {
        return humedad;
    }
    public void setHumedad(double humedad) {
        this.humedad = humedad;
    }
    @XmlElement(name="Humedad_Alta")
    public double getHumedadAlta() {
        return humedadAlta;
    }
    public void setHumedadAlta(double humedadAlta) {
        this.humedadAlta = humedadAlta;
    }
    @XmlElement(name="Humedad_Baja")
    public double getHumedadBaja() {
        return humedadBaja;
    }
    public void setHumedadBaja(double humedadBaja) {
        this.humedadBaja = humedadBaja;
    }
    @XmlElement
    public double getRocio() {
        return rocio;
    }
    public void setRocio(double rocio) {
        this.rocio = rocio;
    }
    @XmlElement(name="Max_Rocio")
    public double getMaxRocio() {
        return maxRocio;
    }
    public void setMaxRocio(double maxRocio) {
        this.maxRocio = maxRocio;
    }
    @XmlElement(name="Min_Rocio")
    public double getMinRocio() {
        return minRocio;
    }
    public void setMinRocio(double minRocio) {
        this.minRocio = minRocio;
    }
    @XmlElement
    public double getBh() {
        return bh;
    }
    public void setBh(double bh) {
        this.bh = bh;
    }
    @XmlElement(name="MAXTEMPBH")
    public double getMaxTempBh() {
        return maxTempBh;
    }
    public void setMaxTempBh(double maxTempBh) {
        this.maxTempBh = maxTempBh;
    }
    @XmlElement(name="MINTEMPBH")
    public double getMinTempBh() {
        return minTempBh;
    }
    public void setMinTempBh(double minTempBh) {
        this.minTempBh = minTempBh;
    }
    @XmlElement(name="IndiceCalor")
    public double getIndiceCalor() {
        return indiceCalor;
    }
    public void setIndiceCalor(double indiceCalor) {
        this.indiceCalor = indiceCalor;
    }
    @XmlElement(name="Max_IndiceCalor")
    public double getMaxIndiceCalor() {
        return maxIndiceCalor;
    }
    public void setMaxIndiceCalor(double maxIndiceCalor) {
        this.maxIndiceCalor = maxIndiceCalor;
    }
}