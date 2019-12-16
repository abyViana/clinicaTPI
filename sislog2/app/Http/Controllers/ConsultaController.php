<?php

namespace sisLog2\Http\Controllers;

use Illuminate\Http\Request;

use sisLog2\Http\Requests;
use sisLog2\Consulta;
use sisLog2\Paciente;
use sisLog2\Medico;
use sisLog2\Pago;
use sisLog2\TipoConsulta;
use Carbon\Carbon;
use Illuminate\Support\Facades\Redirect;
use sisLog2\Http\Requests\ConsultaFormRequest;
use DB;
use PDF;

class ConsultaController extends Controller
{
    //
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request)
        {
            $query=trim($request->get('searchText'));
            $pacientes=DB::table('paciente')->join('consulta','consulta.idPaciente','=','paciente.idPaciente')
            ->where('paciente.apellido','LIKE','%'.$query.'%')
            ->orWhere('paciente.nombre','LIKE','%'.$query.'%')
            ->orWhere('consulta.idConsulta','LIKE','%'.$query.'%')
            ->paginate(7);
            return view('clinica.consulta.index',["pacientes"=>$pacientes,"searchText"=>$query,]);
        }
    }
        public function create()
    {
        $paciente = Paciente:: all();
        $medico = Medico:: all();
        return view("clinica.consulta.create", compact('paciente'), compact('medico')); 
    }
    
        public function store(ConsultaFormRequest $request)
    {
        $consulta = new Consulta;
        $consulta->nombreConsulta=$request->get('nombreConsulta');
        $consulta->tipoConsulta=$request->get('tipoConsulta'); 
        $consulta->fechaConsulta=$request->get('fechaConsulta');
        $consulta->diagnostico=$request->get('diagnostico');
        $consulta->idPaciente=$request->get('idPaciente');
        $consulta->idMedico=$request->get('idMedico');
        $consulta->examenFisico=$request->get('examenFisico');
        $consulta->edadPaciente=$request->get('edadPaciente');
        $consulta->alturaPaciente=$request->get('alturaPaciente');
        $consulta->pesoPaciente=$request->get('pesoPaciente');
        $consulta->alergiasPaciente=$request->get('alergiasPaciente');
        $consulta->medPaciente=$request->get('medPaciente');
        $consulta->temPaciente=$request->get('temPaciente');
        $consulta->presionArtPaciente=$request->get('presionArtPaciente');

        $consulta->save();

        $pago = new Pago;
        $pago->estado='Pendiente';
        $pago->idPaciente=$request->get('idPaciente');
        $pago->idTipoConsulta=$request->get('tipoConsulta');
        $pago->idMedico=$request->get('idMedico');
        $aCancelar=DB::table('tipoConsulta')->select('precio')->where('idTipoConsulta',$pago->idTipoConsulta)->first();
        $pago->total= $aCancelar->precio;
        $pago->fechaEmitido=$request->get('fechaConsulta');
        $pago->save();

        return Redirect::to('clinica/consulta');
    }

        public function show($id)
    {

        $consulta=Consulta::findOrFail($id);
        $pdf = PDF::loadView("clinica.consulta.vista",["consulta"=>$consulta]);
        return $pdf->stream($consulta->nombre);
        

    }

        public function edit($id)
    {
        $medico = Medico:: all();
        $paciente = Paciente:: all();
        
        return view("clinica.consulta.edit",["consulta"=>Consulta::findOrFail($id)], compact('paciente'))->with('medico',$medico);
    }


        public function update(ConsultaFormRequest $request,$id)
    {
        
        $consulta=Consulta::findOrFail($id);
        $consulta->nombreConsulta=$request->get('nombreConsulta');
        $consulta->tipoConsulta=$request->get('tipoConsulta'); 
        $consulta->fechaConsulta=$request->get('fechaConsulta');
        $consulta->diagnostico=$request->get('diagnostico');
        $consulta->idPaciente=$request->get('idPaciente');
        $consulta->idMedico=$request->get('idMedico');
        $consulta->examenFisico=$request->get('examenFisico');
        $consulta->edadPaciente=$request->get('edadPaciente');
        $consulta->alturaPaciente=$request->get('alturaPaciente');
        $consulta->pesoPaciente=$request->get('pesoPaciente');
        $consulta->alergiasPaciente=$request->get('alergiasPaciente');
        $consulta->medPaciente=$request->get('medPaciente');
        $consulta->temPaciente=$request->get('temPaciente');
        $consulta->presionArtPaciente=$request->get('presionArtPaciente');

        $consulta->update();
        
        return Redirect::to('clinica/consulta');
    }


        public function destroy($id)
    {
    	$consulta=Consulta::findOrFail($id);
    	$consulta->delete();

    	return Redirect::to('clinica/consulta');
    }
}
