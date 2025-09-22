const express = require("express");
const app = express();

// Route
app.get("/", (req, res) => {
  res.send("Hello from Node.js app!");
});

// Start server only if not in test mode
let server;
if (require.main === module) {
  server = app.listen(3000, () => {
    console.log("Server is running on port 3000");
  });
}

module.exports = app; // 👈 export app for testing
