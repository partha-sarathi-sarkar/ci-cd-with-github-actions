const http = require("http");

const server = http.createServer((req, res) => {
  res.end("API Service Running");
});

server.listen(3000, () => {
  console.log("API running on port 3000");
});