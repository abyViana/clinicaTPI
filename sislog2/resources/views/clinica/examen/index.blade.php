@extends ('layouts.administrador')
@section ('contenido')
    

    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <h3>Listado de Controles de Examenes Clinicos <a href="examen/create"><button class="btn btn-success">Nuevo Control</button></a></h3>
            @include('clinica.examen.search')
        </div>
    </div>


    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-condensed table-hover">
                    <thead>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Medico Asignado</th>
                        <th>Tipo de Examen</th>
                        <th>Resultado de Examen</th>
                        <th>Fecha de Control</th>
                        <th>Hora de Control</th>
                        <th>Opciones</th>
                    </thead>
                    @foreach ($examen as $exam)
                    <tr>
                        <td>{{ $exam->idExamen}}</td>
                        <td>{{ $exam->nombrePaciente}}</td>
                        <td>{{ $exam->medicoAsignado}}</td>
                        <td>{{ $exam->tipoExamen}}</td>
                        <td>{{ $exam->resultado}}</td>
                        <td>{{ $exam->fechaControl}}</td>
                        <td>{{ $exam->horaControl}}</td>
                        <td>
                            <a href="{{URL::action('ExamenController@edit', $exam->idExamen)}}"><button class="btn btn-info">Editar</button></a>
                            <a href="" data-target="#modal-delete-{{$exam->idExamen}}" data-toggle="modal"><button class="btn btn-danger">Eliminar</button></a>
                        </td>
                    </tr>
                    @include('clinica.examen.modal')
                    @endforeach
                </table>
            </div>
            {{$examen->render()}}
        </div>
    </div>
 <a href="{{URL::action('HomeController@index')}}"><button class="btn btn-info">Ver Menu Principal</button></a>   


@endsection

