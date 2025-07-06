const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('🍕 Your pizza is on the way, enjoy!!');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
