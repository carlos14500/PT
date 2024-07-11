<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Air Clear</title>
  <!-- Font -->
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500&display=swap" rel="stylesheet">
 <!-- Font Awesome -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
 <!-- Animate.css -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
  <!-- CUSTOM CSS -->
  <link rel="stylesheet" href="dist/styles.css">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>

  <div class="menu-btn">
    <i class="fas fa-bars fa-2x"></i>
  </div>
  <div class="header">
    <nav class="titulo">


    </nav>

  </div>
  <div id="map"></div>


  <div class="container">
    <!-- Navigation -->
    <nav class="nav-main">
      <!-- Brand -->
      <img src="dist/imagenes/logo.png" alt="Air Clear Logo" class="nav-brand">
      <!-- Left Nav -->
      <ul class="nav-menu">
        <li><a href="#home">Inicio</a></li>
        <li><a href="#monitoring">Monitoreo</a></li>
        <li><a href="#recommendations">Recomendaciones</a></li>
        <li><a href="#statistics">Estad�sticas</a></li>
        <li><a href="#contact">Contacto</a></li>
      </ul>

    </nav>
    <hr>

    <!-- SHOWCASE -->
    <section id="home">
    <header class="showcase">

      <h2 style="font-size: 40px; margin-top: 30px;">�Conoces la calidad del aire de tu colonia?</h2>
      <p>Aqu� conocer�s la calidad del aire de nuestras sedes principales.
        Descubre c�mo mantenemos un ambiente saludable en cada ubicaci�n y toma medidas informadas para tu bienestar. �Comienza a explorar ahora mismo!</p>
      <!-- <a href="#" class="btn">
        SignUp <i class="fas fa-chevron-right"></i>
      </a> -->
      <img src="dist/imagenes/mapa.png" alt="Imagen superpuesta" class="superpuesta">


      <div class="animated-marker1 tooltip">
        <lord-icon
        src="https://cdn.lordicon.com/tdtlrbly.json"
        trigger="hover"
        colors="primary:#121331,secondary:#c71f16"
        style="width:100px;height:100px;"
        title="Sensor en Direcci�n 1">

    </lord-icon>
<span class="tooltiptext"style="left: 140%; top:20%">UPIITA IPN  <br>
  Av Instituto Polit�cnico Nacional 2580, La Laguna Ticoman, Gustavo A. Madero, 07340 Ciudad de M�xico, CDMX</span>
      </div>
      <div class="animated-marker2 tooltip">
        <lord-icon
        src="https://cdn.lordicon.com/tdtlrbly.json"
        trigger="hover"
        colors="primary:#121331,secondary:#c71f16"
        style="width:100px;height:100px;"
        title="Sensor en Direcci�n 1">
    </lord-icon>
    <span class="tooltiptext" style="left: -170%;">ESCOM IPN <br> Unidad Profesional Adolfo L�pez Mateos, Av. Juan de Dios B�tiz, Nueva Industrial Vallejo, Gustavo A. Madero, 07320 Ciudad de M�xico, CDMX</span>
      </div>

    </div>
    <div class="animated-marker3 tooltip">
      <lord-icon
      src="https://cdn.lordicon.com/tdtlrbly.json"
      trigger="hover"
      colors="primary:#121331,secondary:#c71f16"
      style="width:100px;height:100px;"
      title="Sensor en Direcci�n 1">
  </lord-icon>
  <span class="tooltiptext" style="left: 140%; top: -30%;">CDA <br>Belisario Dom�nguez 22, Centro Hist�rico de la Cdad. de M�xico, Las Ranas, Cuauht�moc, 06010 Ejido del Centro, CDMX</span>
    </div>

    </header>
  </section>

  <section id="monitoring">
      <div class="quality-status-row">
        <div class="quality-status">
          <div class="quality-circle good"></div>
          <span>Buena</span>
        </div>
        <div class="quality-status">
          <div class="quality-circle acceptable"></div>
          <span>Aceptable</span>
        </div>
        <div class="quality-status">
          <div class="quality-circle regular"></div>
          <span>Regular</span>
        </div>
        <div class="quality-status">
          <div class="quality-circle poor"></div>
          <span>Mala</span>
        </div>
      </div>


      <div class="container">
        <div class="column">
          <div class="donut-set">
            <div class="general-title">UPIITA</div>
            <div class="donut-container">
              <canvas id="ubicacion-sensores-1"></canvas>
              <div class="donut-label">Sensor 1</div>
            </div>
          </div>

          <div class="donut-set">
            <div class="general-title">Part�culas</div>
            <div class="donut-container">
              <canvas id="pm1-1"></canvas>
              <div class="donut-label">PM1</div>
            </div>
            <div class="donut-container">
              <canvas id="pm25-1"></canvas>
              <div class="donut-label">PM2.5</div>
            </div>
            <div class="donut-container">
              <canvas id="pm10-1"></canvas>
              <div class="donut-label">PM10</div>
            </div>
          </div>
        </div>
        <div class="column">
          <div class="donut-set">
            <div class="general-title">ESCOM</div>
            <div class="donut-container">
              <canvas id="ubicacion-sensores-2"></canvas>
              <div class="donut-label">Sensor 2</div>
            </div>
          </div>
          <div class="donut-set">
            <div class="general-title">Part�culas</div>
            <div class="donut-container">
              <canvas id="pm1-2"></canvas>
              <div class="donut-label">PM1</div>
            </div>
            <div class="donut-container">
              <canvas id="pm25-2"></canvas>
              <div class="donut-label">PM2.5</div>
            </div>
            <div class="donut-container">
              <canvas id="pm10-2"></canvas>
              <div class="donut-label">PM10</div>
            </div>
          </div>
        </div>

        <div class="column">
          <div class="donut-set">
            <div class="general-title">CDA</div>
            <div class="donut-container">
              <canvas id="ubicacion-sensores-3"></canvas>
              <div class="donut-label">Sensor 3</div>
            </div>
          </div>
          <div class="donut-set">
            <div class="general-title">Part�culas</div>
            <div class="donut-container">
              <canvas id="pm1-3"></canvas>
              <div class="donut-label">PM1</div>
            </div>
            <div class="donut-container">
              <canvas id="pm25-3"></canvas>
              <div class="donut-label">PM2.5</div>
            </div>
            <div class="donut-container">
              <canvas id="pm10-3"></canvas>
              <div class="donut-label">PM10</div>
            </div>
          </div>
        </div>

      </div>
    </section>

    <!-- Secci�n del Gr�fico y Descripci�n -->
    <section id="statistics">
      <div class="chart-container">
        <div id="chart_div"></div>
        <div class="description-section chart-section">
          <h3>Calidad del Aire Registrada durante los �ltimos 6 Meses en CDMX</h3>
          <p>La gr�fica muestra la calidad del aire registrada a lo largo de seis meses en promedio de nuestras diferentes ubicaciones. Los datos reflejan variaciones basadas en mediciones continuas y muestran tendencias que pueden influir en la salud p�blica y las pol�ticas ambientales.</p>
        </div>
      </div>
    </section>


    <section >
      <div class="container-chart">
        <div class="text-section">
          <div class="description-section2">
            <h3>Calidad del Aire Registrada durante un d�a en CDMX</h3>
            <p>Las mediciones de PM2.5, PM1 y PM10 se est�n realizando a las siguientes horas del d�a: 6 AM, medio d�a, 6 PM y 12 AM. Esta gr�fica muestra la evoluci�n de las concentraciones de part�culas a lo largo de ese per�odo.</p>
          </div>
        </div>
        <div class="chart-section2">
          <div id="chart_div2"></div>
        </div>
      </div>
    </section>



    <!-- NEWS CARDS -->
    <section id="recommendations">
    <div class="news-cards">
      <div class="container">
        <h2>Recomendaciones seg�n la calidad del aire</h2>
        <div id="recommendation-cards" class="cards-container">
          <div class="card">
            <img src="dist/imagenes/8.png" alt="Recomendaci�n 1">

          </div>
          <div class="card">
            <img src="dist/imagenes/7.png" alt="Recomendaci�n 2">

          </div>
          <div class="card">
            <img src="dist/imagenes/6.png" alt="Recomendaci�n 3">

          </div>
          <div class="card">
            <img src="dist/imagenes/5.png" alt="Recomendaci�n 4">

          </div>
        </div>
      </div>
    </div>





  <!-- Footer Links -->
  <section id="contact">
  <div class="footer-links">
    <div class="footer-container">
      <ul>
        <li>
          <a href="#">
            <h3>Contacto</h3>
          </a>
        </li>
        <li>
          <a href="#"> Email: anamoura1600@alumno.ipn.mx</a>
        </li>
        <li>
          <a href="#"> Tel: +52 55 31820036</a>
        </li>
      </ul>
      <ul>
        <li>
          <a href="#">
            <h3>Secciones</h3>
          </a>
        </li>
        <li>
          <a href="#"> Inicio</a>
        </li>
        <li>
          <a href="#monitoring"> Monitoreo</a>
        </li>
        <li>
          <a href="#recommendations"> Recomendaciones</a>
        </li>
        <li>
          <a href="#statistics"> Estadisticas</a>
        </li>
      </ul>
      <ul>
        <li>
          <a href="#">
            <h3>Direcci�n</h3>
          </a>
        </li>
        <li>
          <a href="#">  Av Instituto Polit�cnico Nacional 2580, La Laguna Ticoman, Gustavo A. Madero, 07340 Ciudad de M�xico, CDMX</a>
        </li>
      </ul>
    </div>
  </div>
</div>
</section>
  <!-- Scroll Reveal -->
  <script src="https://unpkg.com/scrollreveal"></script>
  <script src="dist/main.js"></script>
  <script src="https://cdn.lordicon.com/lordicon.js"></script>
  <script>
      
      
<% 
    // Declarar variables en un scriptlet
    AirQualityData datos = null;

%>
      
    // Datos para los gr�ficos (ejemplo)
    const dataUbicacionSensores = {
      datasets: [{
        data: [1, 2], // Ajusta estos datos seg�n tus ubicaciones de sensores
        backgroundColor: ['#5cb85c', '#d3d3d3'] // Azul y Naranja para UPIITA
      }],
    };

    const dataUbicacionSensoresESCOM = {
      datasets: [{
        data: [1, 2], // Ajusta estos datos seg�n tus ubicaciones de sensores
        backgroundColor: ['#FFA500', '#d3d3d3'] // Azul y Rojo para ESCOM
      }],
    };

    const dataUbicacionSensoresCDA = {
      datasets: [{
        data: [1, 2], // Ajusta estos datos seg�n tus ubicaciones de sensores
        backgroundColor: ['#FF4500', '#d3d3d3'] // Azul y Verde para CDA
      }],
    };

    const dataPM1 = {
      datasets: [{
        data: [92, 85], // Ajusta estos datos seg�n los niveles de PM1
        backgroundColor: ['#FF5733', '#d3d3d3']
      }],
      labels: ['PM1', '']
    };

    const dataPM25 = {
      datasets: [{
        data: [23423, 100], // Ajusta estos datos seg�n los niveles de PM2.5
        backgroundColor: ['#FFC300', '#d3d3d3']
      }],
      labels: ['PM2.5', '']
    };

    const dataPM10 = {
      datasets: [{
        data: [34, 27, 20], // Ajusta estos datos seg�n los niveles de PM10
        backgroundColor: ['#FF5733', '#d3d3d3']
      }],
      labels: ['PM10', '']
    };

    // Opciones comunes para los gr�ficos
    const options = {
      cutout: '70%',
      plugins: {
        legend: {
          display: false
        }
      }
    };

    // Configuraci�n de los gr�ficos usando Chart.js
    // Ubicaci�n de sensores - UPIITA
    new Chart(document.getElementById('ubicacion-sensores-1'), {
      type: 'doughnut',
      data: dataUbicacionSensores,
      options: options
    });

    // Ubicaci�n de sensores - ESCOM
    new Chart(document.getElementById('ubicacion-sensores-2'), {
      type: 'doughnut',
      data: dataUbicacionSensoresESCOM,
      options: options
    });

    // Ubicaci�n de sensores - CDA
    new Chart(document.getElementById('ubicacion-sensores-3'), {
      type: 'doughnut',
      data: dataUbicacionSensoresCDA,
      options: options
    });

    // PM1 - Columna 1
    new Chart(document.getElementById('pm1-1'), {
      type: 'doughnut',
      data: dataPM1,
      options: options
    });

    // PM2.5 - Columna 1
    new Chart(document.getElementById('pm25-1'), {
      type: 'doughnut',
      data: dataPM25,
      options: options
    });

    // PM10 - Columna 1
    new Chart(document.getElementById('pm10-1'), {
      type: 'doughnut',
      data: dataPM10,
      options: options
    });

    // PM1 - Columna 2
    new Chart(document.getElementById('pm1-2'), {
      type: 'doughnut',
      data: dataPM1,
      options: options
    });

    // PM2.5 - Columna 2
    new Chart(document.getElementById('pm25-2'), {
      type: 'doughnut',
      data: dataPM25,
      options: options
    });

    // PM10 - Columna 2
    new Chart(document.getElementById('pm10-2'), {
      type: 'doughnut',
      data: dataPM10,
      options: options
    });

    // PM1 - Columna 3
    new Chart(document.getElementById('pm1-3'), {
      type: 'doughnut',
      data: dataPM1,
      options: options
    });

    // PM2.5 - Columna 3
    new Chart(document.getElementById('pm25-3'), {
      type: 'doughnut',
      data: dataPM25,
      options: options
    });

    // PM10 - Columna 3
    new Chart(document.getElementById('pm10-3'), {
      type: 'doughnut',
      data: dataPM10,
      options: options
    });
    initializeChart('ubicacion-sensores-1', dataUbicacionSensores, options, 'recommendation-upiita');
initializeChart('ubicacion-sensores-2', dataUbicacionSensoresESCOM, options, 'recommendation-escom');
initializeChart('ubicacion-sensores-3', dataUbicacionSensoresCDA, options, 'recommendation-cda');

initializeChart('pm1-1', dataPM, options);
initializeChart('pm25-1', dataPM, options);
initializeChart('pm10-1', dataPM, options);

initializeChart('pm1-2', dataPM, options);
initializeChart('pm25-2', dataPM, options);
initializeChart('pm10-2', dataPM, options);

initializeChart('pm1-3', dataPM, options);
initializeChart('pm25-3', dataPM, options);
initializeChart('pm10-3', dataPM, options);
  </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      // Carga la librer�a de visualizaci�n de Google Charts
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        // Define los datos como un array de arrays
        var data = google.visualization.arrayToDataTable([
          ['Mes', 'PM2.5', 'PM1', 'PM10'],
          ['Mes 1', 20, 15, 25],
          ['Mes 2', 18, 12, 22],
          ['Mes 3', 22, 17, 28],
          ['Mes 4', 16, 14, 20],
          ['Mes 5', 19, 16, 24],
          ['Mes 6', 21, 18, 26]
          // Puedes reemplazar estos valores con tus promedios calculados
        ]);

        // Opciones del gr�fico
        var options = {
          title: 'Promedios mensuales de PM2.5, PM1 y PM10',
          curveType: 'line', // Tipo de gr�fico: 'line', 'area', 'bar', etc.
          legend: { position: 'top' },
          vAxis: { title: '�g/m�' }
        };

        // Crea una instancia del gr�fico de l�nea, especificando el elemento donde se va a mostrar
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

        // Dibuja el gr�fico con los datos y las opciones especificadas
        chart.draw(data, options);
      }
    </script>
    <title>Mediciones de PM2.5, PM1 y PM10 en un d�a</title>
    <!-- Incluye la librer�a de Google Charts -->
    <script type="text/javascript">
      // Carga la librer�a de visualizaci�n de Google Charts
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        // Define los datos como un array de arrays
        var data = google.visualization.arrayToDataTable([
          ['Hora', 'PM2.5', 'PM1', 'PM10'],
          ['6 AM', 20, 15, 25],
          ['12 PM', 18, 12, 22],
          ['6 PM', 22, 17, 28],
          ['12 AM', 16, 14, 20]
          // Puedes reemplazar estos valores con tus mediciones reales
        ]);

        // Opciones del gr�fico
        var options = {
          title: 'Mediciones de PM2.5, PM1 y PM10 en un d�a',
          curveType: 'line', // Tipo de gr�fico: 'line', 'area', 'bar', etc.
          legend: { position: 'top' },
          vAxis: { title: '�g/m�' }, // Etiqueta del eje y con unidades �g/m�
          hAxis: { title: 'Hora' }   // Etiqueta del eje x con las horas del d�a
        };

        // Crea una instancia del gr�fico de l�nea, especificando el elemento donde se va a mostrar
        var chart = new google.visualization.LineChart(document.getElementById('chart_div2'));

        // Dibuja el gr�fico con los datos y las opciones especificadas
        chart.draw(data, options);
      }
    </script>


</body>


</html>