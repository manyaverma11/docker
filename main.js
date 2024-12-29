const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  return res.json({ message: "Hey, i am nodejs in container. " });
});

app.listen(port, () => console.log(`Server started on PORT: ${port}`));
