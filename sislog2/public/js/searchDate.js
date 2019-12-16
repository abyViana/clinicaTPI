$(function(){
	
	$('#from_date').on('change',onSelectDateFrom);
});

function onSelectDateFrom(){

	var date_from = $(this).val();
	var date_to =$('#to_date').val();
	
	var url= "{{route('tactico/vehiculo/fetch_data')}}";
	$.ajax({
		type:'POST',
		url: url,
		data: 'desde-'+date_from+'-hasta-'+date_to,
		success:function(data){
			for(var count = 0; count < data.length; count++)
    		{
     		output += '<tr>';
     		output += '<td>' + data[count].idvehiculo + '</td>';
     		output += '<td>' + data[count].marcavehiculo + '</td>';
     		output += '<td>' + data[count].tipodesperfecto + '</td></tr>';
    		}
    		$('tbody').html(output);
		}
	});

	if(date_from != '' &&  date_to != ''){
		alert('vamos a buscar');
   		
  	}
  	else{
   		alert('Both Date is required');
  	}
}

