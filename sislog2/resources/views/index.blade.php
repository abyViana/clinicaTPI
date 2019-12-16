@extends ('layouts.admin')
@section ('contenido')
    

    <div class="row">
        


        

    </div>
    <br>
    <div class="row">
        <!--para el otro menu
        <div class="col-lg-4">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <center>
            <img src="{{asset('img/doctor.PNG')}}" alt="Generic placeholder image" width="140" height="140">
            </center>
            <center>
            <h3>Gestion de Medico <a href="clinica/medico"><button class="btn btn-success">Entrar</button></a></h3>
            </center>
        </div>
        </div>
-->
<div class="col-lg-4">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <center>
            <img src="{{asset('img/informe_ingresos.png')}}" alt="Generic placeholder image" width="140" height="140">
            </center>
            <center><h3>Reporte de Herramientas</h3></center><center><a href="/estrategico/herramienta"><button class="btn btn-success">Entrar</button></a></center>
        </div>
        </div>

        <div class="col-lg-4">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <center>
            <img src="{{asset('img/informe_ingresos.png')}}" alt="Generic placeholder image" width="140" height="140">
            </center>
            <center><h3>Reporte de Seguridad</h3></center><center><a href="/estrategico/proyectofactible"><button class="btn btn-success">Entrar</button></a></center>
        </div>
        </div>

        <div class="col-lg-4">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <center>
            <img src="{{asset('img/informe_ingresos.png')}}" alt="Generic placeholder image" width="140" height="140">
            </center>
            <center><h3>Reporte de ingresos por servicio comparado con el mes anterior</h3></center><center><a href="/estrategico/ingreso"><button class="btn btn-success">Entrar</button></a></center>
        </div>
        </div>

        


        <!--<div class="col-lg-4">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <center>
            <img src="{{asset('img/informe_ingresos.png')}}" alt="Generic placeholder image" width="140" height="140">
            </center>
            <center>
            <h3>Reporte de Proyectos Iniciados con Irregularidad <a href="tactico/iregularidad"></center><center><button class="btn btn-success">Entrar</button></a></h3>
            </center>
        </div>
        </div>-->

        <!--<div class="col-lg-4">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <center>
            <img src="{{asset('img/informe_ingresos.png')}}" alt="Generic placeholder image" width="140" height="140">
            </center>
            <center><h3>Reporte de Proyectos Infactibles</h3></center><center><a href="/tactico/infactible"><button class="btn btn-success">Entrar</button></a></center>
        </div>
        </div>-->

        
      
      <!--<div class="col-lg-4">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <center>
            <img src="{{asset('img/informe_ingresos.png')}}" alt="Generic placeholder image" width="140" height="140">
            </center>
            <center><h3>Reporte de Proyectos Aprobados por Ejecutar</h3></center><center><a href="/tactico/aprobado"><button class="btn btn-success">Entrar</button></a></center>
        </div>
        </div>-->

<div class="col-lg-4">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <center>
            <img src="{{asset('img/informe_ingresos.png')}}" alt="Generic placeholder image" width="140" height="140">
            </center>
            <center><h3>Reporte Costos comparado con el mes Anterior</h3></center><center><a href="/estrategico/costo"><button class="btn btn-success">Entrar</button></a></center>
        </div>
        </div>
    </div>
    
    

@endsection