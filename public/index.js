require("./index.html");

const Elm = require("../src/Main.elm");
const mountNode = document.getElementById("root");
const app = Elm.Main.embed(mountNode);

app.ports.log.subscribe(function(str) {
  console.log(str);
});

document.body.addEventListener("click", function(e) {
  app.ports.clicks.send({ x: e.clientX, y: e.clientY });
});

app.ports.fetchGreeting.subscribe(function(name) {
  app.ports.receiveGreeting.send("Hello, " + name + "!");
});
