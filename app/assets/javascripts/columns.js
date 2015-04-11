var counter = 1;
function addInput(divName){
  var htmlString = "<div class='row'><div class='col-xs-6'><input class='form-control' id='sheet_column_title' name='column[][title]' placeholder='Column Title' type='text'></div><div class='col-xs-6'><input class='form-control' id='sheet_column_data_type' name='column[][data_type]' placeholder='Data Type (Numbers, Words, yes/no)' type='text'></div></div>";
  var newdiv = document.createElement('div');
  newdiv.innerHTML = htmlString;
  document.getElementById(divName).appendChild(newdiv);
  counter++;
}