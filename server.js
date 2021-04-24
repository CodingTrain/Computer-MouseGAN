const { HostedModel } = require('@runwayml/hosted-models');

const express = require('express');
const app = express();
app.use(express.json());

app.listen(3000, () => console.log('listening at 3000'));

const model = new HostedModel({
  url: 'https://mousegan-2b71f8a9.hosted-models.runwayml.cloud/v1/',
  token: '3YVDQtfN+EEI11i89w3ESw==',
});

app.post('/mouse', async (request, response) => {
  console.log('requesting StyleGAN mouse');
  const inputs = request.body;
  const outputs = await model.query(inputs);
  response.send(outputs.image);
});
