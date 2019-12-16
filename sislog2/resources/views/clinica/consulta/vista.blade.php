<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="utf-8"/>
<title>Expediente de Paciente</title>
<style type="text/css">
hr {
          border-color: #66BDA9;
          height: 1px;
          margin: 5px 0;
          display: block;
          clear: both;
      }
.Estilo11 {font-weight: bold}
<!--
body {
  background-image: url();
}
.Estilo9 {color: 1}
.Estilo10 {font-size: 9px}
.Estilo11 {font-weight: bold}
-->
</style></head>
<body>
<h1 align="center"><font color="#66BDA9">Clinica Medica Génesis - Reporte Consulta</font></h1>
<?php

use sisLog2\Paciente;
?>
<?php
  $nomPaciente=Paciente::findOrFail($consulta->idPaciente);
?>
<h3>Nombre paciente: {{$nomPaciente->nombre}} {{$nomPaciente->apellido}}</h3>
<h3>Fecha: 03/11/2019</h3>

<?php

use sisLog2\Medico;

$nomMedico=Medico::findOrFail($consulta->idMedico);
?>
<hr>
      
      <div id="project">
        <div><span>Direccion:</span> </div>
        <div><span>Telefono:</span> 2531-2078</div>
        <div><span>Horario: </span> Lunes a viernes de 12:30 pm a 3:30 pm </div>
        <hr>
<div align="left">
  <table width="540" height="230" border="0" bordercolor="#F0F0F0" bgcolor="white">
      <th height="42" background="
" bgcolor="#FFFFFF" scope="col">
<table width="540" height="230" border="0" align="center" bordercolor="#F0F0F0">
          <tr>
            <td colspan="5" bgcolor="skyblue" class="Estilo11">Consulta de Paciente</td>
          </tr>
          <tr>
            <th class="Estilo9" scope="col"><div align="left">Fecha Consulta:</div></th>
            <th class="Estilo9" scope="col"><div align="left">{{$consulta->fechaConsulta}}</div></th>
          </tr>
          <tr>
            <td class="Estilo9"><div align="left">Razon de consulta:</div></td>
            <td class="Estilo9"><div align="left">{{$consulta->nombreConsulta}}</div></td>
          </tr>
          <tr>
            <td class="Estilo9"><div align="left">Examen Fisico:</div></td>
            <td class="Estilo9"><div align="left"></div>{{$consulta->examenFisico}}</td>
          </tr>
          <tr>
            <td class="Estilo9"><div align="left">Diagnostico:</div></td>
            <td class="Estilo9"><div align="left">{{$consulta->diagnostico}}</div></td>
          </tr>
          <tr>
            <td class="Estilo9"><div align="left">Edad Paciente:</div></td>
            <td class="Estilo9"><div align="left">{{$consulta->edadPaciente}} años</div></td>
            </tr>
          <tr>
            <td class="Estilo9"><div align="left">Peso:</div></td>
            <td class="Estilo9"><div align="left">{{$consulta->pesoPaciente}} kg</div></td>
            </tr>
          <tr>
            <td class="Estilo9"><div align="left">Altura:</div></td>
            <td class="Estilo9"><div align="left">{{$consulta->alturaPaciente}} m</div></td>
            </tr>
          <tr>
            <td class="Estilo9"><div align="left">Nombre Médicos:</div></td>
            <td class="Estilo9"><div align="left">{{$nomMedico->nombre}}</div></td>
            </tr>
        
          <tr>
            <td colspan="5" bgcolor="skyblue" class="Estilo9">&nbsp;</td>
          </tr>
          </table>
          <hr>
          <footer>
          <center></center>         
          </footer>
</div>
</body>
</html>