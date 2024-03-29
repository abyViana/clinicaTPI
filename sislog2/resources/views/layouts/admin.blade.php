<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Clinica Medica</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('css/font-awesome.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('css/AdminLTE.css')}}">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="{{asset('css/_all-skins.min.css')}}">
    <!--Fullcalendar-->
    <link rel="stylesheet" href="{{asset('fullcalendar/fullcalendar.min.css')}}">
    <link rel="apple-touch-icon" href="{{asset('img/apple-touch-icon.png')}}">
    <link rel="shortcut icon" href="{{asset('img/favicon.ico')}}">

    <link href="{{ asset('css/default.css') }}" rel="stylesheet">
    <link href="{{ asset('css/default.date.css') }}" rel="stylesheet">

  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">

        <!-- Logo -->
        <a href="{{url('home')}}" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>CM</b>G</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Clinica Medica</b></span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Navegación</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                 <span class="hidden-xs">{{ Auth::user()->name }}</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    
                    <p>
                      {{ Auth::user()->email }}
                      <small>Clinica Genesis</small>
                      <small>DSI115</small>
                    </p>
                  </li>
                  
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    
                    <div class="pull-right">
                      <a href="{{url('/logout')}}" class="btn btn-default btn-flat">Cerrar</a>
                    </div>
                  </li>
                </ul>
              </li>
              
            </ul>
          </div>

        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
                    
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header"></li>
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-user"></i>
                <span>Paciente</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="{{url('clinica/paciente')}}"><i class="fa fa-circle-o"></i> Expediente de Paciente</a></li>
                <!--<li><a href="#"><i class="fa fa-circle-o"></i> Registro de Medico</a></li>-->
              </ul>
            </li>
            <!--
            <li class="treeview">
              <a href="#">
                <i class="fa fa-heartbeat"></i>
                <span>Doctores</span>
                 <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="{{url('clinica/medico')}}"><i class="fa fa-circle-o"></i>Gestión de Medico</a></li>
                <li><a href="{{url('clinica/estrategico')}}"><i class="fa fa-circle-o"></i> Pacientes atendidos</a></li>
              </ul>
            </li>

            -->
            <li class="treeview">
              <a href="#">
                <i class="fa fa-money"></i>
                <span>Pago Consulta</span>
                 <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="{{  url('clinica/pago') }} "><i class="fa fa-ban"></i> Pagos pendientes</a></li>
                <li><a href=" {{ url('clinica/pago/show') }} "><i class="fa fa-signal"></i> Estadisticas</a></li>
              </ul>
            </li>
              <!--     
            <li class="treeview">
              <a href="#">
                <i class="fa fa-folder"></i> <span>Reportes</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Pacientes atendidos</a></li>
                
              </ul>
            </li>
            
             <li>
              <a href="#">
                <i class="fa fa-plus-square"></i> <span>Ayuda</span>
                <small class="label pull-right bg-red">PDF</small>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-info-circle"></i> <span>Acerca De...</span>
                <small class="label pull-right bg-yellow">IT</small>
              </a>
            </li>
               -->         
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>





       <!--Contenido-->
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        
        <!-- Main content -->
        <section class="content">
          
          <div class="row">
            <div class="col-md-12">
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Sistema Informatico para la gestión de procedimientos de la Clinica Medica</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                                  <!--Contenido-->
                              @yield('contenido')
                                  <!--Fin Contenido-->
                           </div>
                        </div>
                            
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <!--Fin-Contenido-->
      

      
    <!-- jQuery 2.1.4 -->
    <script src="{{asset('js/jQuery-2.1.4.min.js')}}"></script>
    <!--Fullcalendar-->
    <script type="text/javascript" src="{{ asset('fullcalendar/lib/moment.min.js') }} "></script>
    <script type="text/javascript" src="{{ asset('fullcalendar/fullcalendar.min.js') }} "></script>
    <script type="text/javascript" src="{{ asset('fullcalendar/locale/es.js') }} "></script>
    <!-- Highcharts JS -->
    <script  src="{{ asset('js/highcharts.js') }} "></script>
    <script  src="{{ asset('js/graficas.js') }} "></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{asset('js/app.min.js')}}"></script>


    
    <script src="{{ asset('js/legacy.js') }}"></script>
    <script src="{{ asset('js/picker.date.js') }}"></script>
    <script src="{{ asset('js/picker.js') }}"></script>

    @yield('scripts')
      <script>
                $(function () {
                  //iCheck for checkbox and radio inputs
                  $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                  });
                  //Red color scheme for iCheck
                  $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                    checkboxClass: 'icheckbox_minimal-red',
                    radioClass: 'iradio_minimal-red'
                  });
                  //Flat red color scheme for iCheck
                  $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                  });
                });
      </script>
  </body>
</html>
