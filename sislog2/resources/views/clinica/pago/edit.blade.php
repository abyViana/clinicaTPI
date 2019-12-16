<div class="modal fade modal-slide-in-rigth" aria-hidden="true" role="dialog" tabindex="-1" id="modal-edit-{{$pago->idPago}}">
    {{Form::Open(array('action'=>array('PagoController@update',$pago->idPago),'method'=>'PATCH'))}}
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                <h4 class="modal-title">Total de consulta</h4>
            </div>
            <div class="modal-body">
                <div>
                    <label>id Pago</label>
                    {{$pago->idPago }}
                </div>
                <div>
                    <label>Nombre de Paciente</label>
                    {{ $pago->nombre }}
                </div>
                <div>
                    <label>Consulta realizada</label>
                    {{ $pago->nombreConsulta }}
                </div>
                <div>
                    <label>Total a Pagar</label>
                    {{ $pago->total }}
                </div>
                
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-success">Realizar Pago</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                
            </div>
        </div>
    </div>
    {{Form::Close()}}
    
</div>

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