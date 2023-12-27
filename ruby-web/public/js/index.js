const clock = document.getElementById("clock");

setInterval(() => {
  clock.innerText = new Date().toLocaleTimeString();
}, 1000);
