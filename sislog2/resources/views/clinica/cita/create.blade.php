@extends ('layouts.admin')
@section('contenido')

<div class="row" id="crCita">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <h3>Crear Nueva Cita</h3>
            @if (count($errors)>0)
            <div class="alert alert-danger">
                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach 
                </ul>   
            </div>
            @endif

            {!!Form::open(array('url'=>'clinica/cita','method'=>'POST','autocomplete'=>'off'))!!}
            {{Form::token()}}

            <div class="form-group">
                <label for="nombrePaciente" class="required">Nombre del Paciente</label>
                <input type="text" value="{{old('nombrePaciente')}}"name="nombrePaciente" class="form-control" placeholder="Nombre Paciente...">  
            </div>
            <!-- Seleccion de Medico   -->
            <div class="form-group">
                <label for="nombreMedico" class="required">Nombre del Medico</label>
                <select name="nombreMedico" id="input" class="form-control" value="{{old('nombreMedico')}}">
                    <option value="">Seleccione el medico</option>
                    @foreach ($medicos as $medico)
                    <!-- valor de value es por el id del medico  y muestra el nombre del medico-->
                        <option value="{{ $medico['idMedico'] }}"> {{ $medico['nombre'] }}</option>
                    @endforeach
                </select>
  
            </div>
            <div class="form-group">
                <label for="fechaCita" class="required">Fecha de la Cita</label>
                <input type="date" value="{{old('fechaCita')}}" name="fechaCita" class="form-control" placeholder="fecha cita...">    
            </div>
            <div class="form-group">
                <label for="horaCita" class="required">Hora de la Cita</label>
                <input type="time" value="{{old('horaCita')}}" name="horaCita" class="form-control" placeholder="00:00:00">   
            </div>

            <div class="form-group">
                <label for="tipoCita" class="required">Tipo de Consulta</label>
                <select name="tipoCita" id="input" class="form-control" value="{{ old('tipoCita') }}">
                    <option value="">Seleccione el tipo de consulta</option>
                    <option value="consulta general"> Consulta general</option>
                    <option value="control de embarazo">Control de embarazo</option>
                    <option value="control de niño">Control de niño</option>
                    <option value="oftalmologia">Oftalmologia</option>
                    <option value="dermatologia">Dermatologia</option>
                </select>
            </div>
            <div class="form-group">
                <label for="reservacionCita" class="required">Reservar cita</label>
                <br>
                <input type="radio" name="reservacionCita" value="1">Si<br>
                <input type="radio" name="reservacionCita" value="0">No <br>
            </div>
            <div class="form-group">
                <button class="btn btn-primary" type="submit">Guardar</button>
                <button class="btn btn-danger" type="reset">Cancelar</button>
            </div>
            {!!Form::close()!!}

        </div>
   </div>
   <a href="{{URL::action('CitaController@index')}}"><button class="btn btn-info">Ver Listado de Citas</


@endsection

@if(session()->has('msj'))
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Clinica Medica Betel</title>
</head>
<body>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        swal("Procesamiento", "Ejecutado Exitosamente", "success");
         

        //Puedes colocar warning, error, success y por último info.
    </script>
</body>
</html>
@endif

@if(session()->has('errormsj'))
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Clinica Medica Betel</title>
</head>
<body>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        swal("Error", "En el Procesamiento", "error");
         

        //Puedes colocar warning, error, success y por último info.
    </script>
</body>
</html>
@endif