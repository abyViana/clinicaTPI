<?php

namespace sisLog2;

use Illuminate\Database\Eloquent\Model;

class Pago extends Model
{
    protected $table=  'pago';

    protected $primaryKey= 'idPago';

    public $timestamps=false;

    protected $fillable= [
    	'estado',
    	'idPaciente',
    	'idTipoConsulta',
        'idMedico',
    	'total',
    	'fechaEmitido',
    	'fechaCancelado'

    ];
}
