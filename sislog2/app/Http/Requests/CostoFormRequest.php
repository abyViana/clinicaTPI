<?php

namespace sisLog2\Http\Requests;

use sisLog2\Http\Requests\Request;

class CostoFormRequest extends Request
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
            'IDCOSTO' => 'required|max:100',
            'IDPROYECTO' => 'required|max:100',
            'NOMBREPROYECTO' => 'required|max:100',
            'FECHACOSTRO'=>'required',
            'COSTOMESACTUAL'=>'required',
            'COSTOMESANTERIOR'=>'required',
            'DIFERENCIACOSTO'=>'required',
            'PORCENTCOSTO'=>'required',
            
            
            
            
            
        ];
    }
}
