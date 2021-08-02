function RPSAChart() {

    var region = $('.regional_patient_status_A .rpsa_map .rpsam_graph svg path');
    var detail = $('.regional_patient_status_A .rpsa_detail > div');
    region.click(function(){
        var thDataCity = $(this).attr('class');
        $('.regional_patient_status_A .rpsa_map .rpsam_graph button[data-city="' + thDataCity + '"]').addClass('select');
        detail.find('> div').removeClass('open');
        $('#' + thDataCity).addClass('open');
    });
}

function RPRAChart() {

}
 

 
 
