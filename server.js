const { HostedModel } = require('@runwayml/hosted-models');

const express = require('express');
const app = express();

require('dotenv').config();

app.use(express.json());

app.listen(3000, () => console.log('listening at 3000'));

const model = new HostedModel({
  url: process.env.RUNWAYURL,
  token: process.env.RUNWAYTOKEN,
});

app.post('/mouse', async (request, response) => {
  console.log('requesting StyleGAN mouse');
  const inputs = request.body;
  const outputs = await model.query(inputs);
  response.send(outputs.image);
});
