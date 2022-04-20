let buttons = document.querySelectorAll(".formOrder");
buttons.forEach((elem) => {
  elem.addEventListener("click", () => {
    document.querySelector("#formWithPhone").classList.toggle("hidden");
  });
});
