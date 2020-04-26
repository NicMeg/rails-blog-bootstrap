document.addEventListener("turbolinks:load", funciton(){
  var form = document.getElementById("save_views");
  if(form !== null) form.submit();

})