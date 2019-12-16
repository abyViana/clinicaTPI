<?php

namespace sisLog2;

use Illuminate\Database\Eloquent\Model;

class Actvidad extends Model
{
    protected $table = "actividad"; 

	protected $primaryKey = 'IDACTIVIDAD'; 

    public $timestamps=false;

    protected $fillable = [
    	'IDEJECUCION','DESCRIPCIONACTIVIDAD','NOMBREACTIVIDAD',
    ];

    protected $guarded =[

    ];
}
