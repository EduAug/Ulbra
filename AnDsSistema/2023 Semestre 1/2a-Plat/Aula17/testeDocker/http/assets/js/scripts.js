document.addEventListener('DOMContentLoaded', function(){

  var btn = document.getElementById('colorBtn');
  var colorSet = 0;

  btn.addEventListener("click", function onClick(){

    if(colorSet == 0){

      btn.style.backgroundColor = "#FFFFFF";
      btn.style.color = "#000000";
      btn.style.borderColor = "#808080"
      colorSet = 1;
    }else{

      btn.style.backgroundColor = "#000000";
      btn.style.color = "#FFFFFF";
      btn.style.borderColor = "#000000"
      colorSet = 0;
    }
  });

});