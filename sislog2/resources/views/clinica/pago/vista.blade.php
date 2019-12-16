<?php

use sisLog2\Proyecto;
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="utf-8"/>
<title>Reporte pagos de consulta</title>
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



<section table>
<div class="row">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
  <div class ="table-responsive">
    <table class="table table-striped table-bordered table-condensed table-hover">
                    <thead>          
                        <th>No.</th>
                        <th>Tipo Consulta</th>
                        <th>Total Pendiente</th>
                        <th>Total Recaudado</th>
                        <th>Opciones</th>
                    </thead>
                    <tr>
                        <td>01</td>
                        <td>Consulta General</td>
                        <td>$ 24.00</td>
                        <td>$ <?php echo $CGeneral; ?>.00</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>02</td>
                        <td>Consulta Pediatrica</td>
                        <td>$ 25.00</td>
                        <td>$ <?php echo $CNiños; ?>.00</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>03</td>
                        <td>Ginecologia</td>
                        <td>$ 30.00</td>
                        <td>$ <?php echo $CEmb; ?>.00</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>04</td>
                        <td>Dermatologia</td>
                        <td>$ 55.00</td>
                        <td>$ <?php echo $CDer; ?>.00</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>05</td>
                        <td>Oftalmologia</td>
                        <td>$ 55.00</td>
                        <td>$ <?php echo $COft; ?>.00</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Subtotal</td>
                        <td></td>
                        <td>$ 189.00</td>
                        <td>$ 251.00</td>
                        <td></td>
                    </tr>

                </table>
</div>
</div>
</div>
</section>