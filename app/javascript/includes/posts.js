document.addEventListener("turbolinks:load", () => {
  let form = document.getElementById("save_views");
  if(form !== null) form.submit();
})