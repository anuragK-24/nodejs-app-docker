const http = require("http");
const hostname = "0.0.0.0";
const PORT = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "Text-Plain");
  res.end(
    "Hey you successfully build runned your application deployed on docker"
  );
});

server.listen(PORT, hostname, () => {
  console.log(`The server running on the Port ${PORT}`);
});
