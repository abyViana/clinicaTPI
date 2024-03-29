@extends ('layouts.administrador')
@section ('contenido')
   <div class="row">
    	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    		<h3>Editar Control de Examen: {{$examen->nombrePaciente}}</h3>
    		@if (count($errors)>0)
    		<div class="alert alert-danger">
    			<ul>
    			@foreach ($errors->all() as $error)
    				<li>{{$error}}</li>
    			@endforeach	
    			</ul>	
    		</div>
    		@endif

    		{!!Form::model($examen,['method'=>'PATCH','route'=>['clinica.examen.update',$examen->idExamen]])!!}
    		{{Form::token()}}

    		
            <div class="form-group">
            <label for="nombrePaciente">Nombre de Paciente</label>  
            <select name ="nombrePaciente" id="input" class="form-control" >
                <option value="{{$examen->nombrePaciente}}"">--Escoja el Nombre del Paciente--</option>>
             @foreach($pacientes as $paciente)
                <option value="{{$paciente['nombre']}}"> {{$paciente['nombre']}}
                </option>
             @endforeach  

             </select>
            </div>

            <div class="form-group">
            <label for="medicoAsignado">Medico Asignado</label>  
            <select name ="medicoAsignado" id="input" class="form-control">
                <option value="{{$examen->medicoAsignado}}">--Escoja El Medico Asignado--</option>>
             @foreach($medicos as $medico)
                <option value="{{$medico['nombre']}}"> {{$medico['nombre']}}
                </option>
             @endforeach  

             </select>
             </div>

             <div class="form-group">
                <label for="tipoExamen">Tipo de Examen </label>
                <select name="tipoExamen" class=" form-control" >
                    <option value="{{$examen->tipoExamen}}">--Escoja el Tipo de examen--</option>
                     <option value="Sangre">Sangre</option>
                     <option value="Orina">Orina</option>
                     <option value="Heces">Heces</option>
                     <option value="Hemograma">Hemograma</option>
                     <option value="Glucosa">Glucosa</option>
                     <option value="Citologia">Citologia</option>

                    
                    
               </select>
            </div>
            <div class="form-group">
                <label for="resultado">Resultado de Examenes</label>
                <input type="text" name="resultado" class="form-control" value="{{$examen->resultado}}" placeholder="Resultado de Examenes..."> 
            </div>
            <div class="form-group">
                <label for="fechaControl">Fecha del Control realizado</label>
                <input type="text" name="fechaControl" class="form-control" value="{{$now->format('d/m/Y')}}"> 
            </div>
            <div class="form-group">
                <label for="horaControl">Hora del Control realizado</label>
                <input type="time" name="horaControl" class="form-control" value="{{$now->format('H:i')}}"> 
            </div>

    		<div class="form-group">
    			<button class="btn btn-primary" type="submit">Guardar</button>
    			<button class="btn btn-danger" type="reset">Cancelar</button>
    		</div>
    		{!!Form::close()!!}

    	</div>
   </div>
   <a href="{{URL::action('ExamenController@index')}}"><button class="btn btn-info">Ver Listado de Controles</button></a>
   
@endsection



