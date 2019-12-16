<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use sisLog2\Vehiculo;
use Illuminate\Support\Facades\Input;


Route::get('/', function () {
    return view('auth/login');
});


Route::auth();

Route::get('/home', 'HomeController@index');

//Route::resource('seguridad/usuario','UsuarioController');

Route::group(['middleware' => 'usuarioAdmin'], function () {
	Route::resource('seguridad/usuario','UsuarioController');
    Route::resource('seguridad/bitacora','BitacoraController');

	//para hacer un grupo de rutas de recursos con las peticiones index,update,edit,cretae,etc
	Route::get('seguridad','IndiceController@index2');
});


Route::group(['middleware' => 'usuarioDoctor'], function () {
    
    //para hacer un grupo de rutas de recursos con las peticiones index,update,edit,cretae,etc
    Route::resource('clinica/paciente','PacienteController');
    Route::resource('clinica/medico','MedicoController');
    Route::resource('clinica/reportes','reportesController@index');
    Route::resource('clinica/examen','ExamenController');
    Route::resource('clinica/incapacidad','IncapacidadController');
    Route::resource('clinica/cita','CitaController');
    Route::resource('clinica/consulta','ConsultaController');
    Route::resource('clinica/pago','PagoController');
    Route::resource('clinica/receta','RecetaController');
    Route::resource('clinica/infoReceta','InforeceController');
    Route::resource('clinica','IndiceController@index');
    Route::get('clinica','IndiceController@inde1');
});


Route::group(['middleware' => 'usuarioTactico'], function () {
    Route::resource('seguridad/usuario','UsuarioController');
    Route::resource('seguridad/bitacora','BitacoraController');
    Route::get('seguridad','IndiceController@index2');

    //Rutas de clinica
    Route::resource('clinica/paciente','PacienteController');
    Route::resource('clinica/medico','MedicoController');
    Route::resource('clinica/examen','ExamenController');
    Route::resource('clinica/incapacidad','IncapacidadController');
    Route::resource('clinica/cita','CitaController');
    Route::resource('clinica/consulta','ConsultaController');
    Route::resource('clinica/pago','PagoController');
    Route::resource('clinica/receta','RecetaController');
    Route::resource('clinica/infoReceta','InforeceController');
    Route::resource('clinica/estrategico','EstrategicoController');
    Route::resource('clinica/tactico','TacticoController');


	Route::get('clinica','IndiceController@inde1');

});
