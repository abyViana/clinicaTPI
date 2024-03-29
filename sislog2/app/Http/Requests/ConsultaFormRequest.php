<?php

namespace sisLog2\Http\Requests;

use sisLog2\Http\Requests\Request;

class ConsultaFormRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'nombreConsulta' => 'required|max:100',
            'tipoConsulta' => 'required',
            'fechaConsulta' => 'required| date',
            'idPaciente' => 'required|numeric',
            'idMedico' => 'required | numeric',
            'diagnostico' => 'required|max:100',
            'pesoPaciente' => 'required',
            'alturaPaciente' => 'required'
        ];
    }
}



