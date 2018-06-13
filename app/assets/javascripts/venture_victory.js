$(document).on("change", "#country", function(){
  var country = $(this).val();
  $.ajax({
    url: "/get_cities/"+country,
    method: "GET",  
    dataType: "json",
    data: {country: country},
    error: function (xhr, status, error) {
      console.error('AJAX Error: ' + status + error);
    },
    success: function (response) {
      console.log(response);
      var cities = response["cities"];
      $("#city").html('<option>Select citysss</option>');
      for(var i=0; i< cities.length; i++){
        $("#city").append('<option value="' + cities[i] + '">' + cities[i] + '</option>');
      }      
    }
  });
});