<?php

namespace sisLog2\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PagoFormRequest extends FormRequest
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
            'total'=> 'required|',
            'fechaEmitido' => 'required|date',
            'estado' => 'required|in:Pediente, Cancelado'
        ];
    }
}

