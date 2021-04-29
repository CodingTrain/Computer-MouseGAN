# Computer MouseGAN

Processing and node.js project for rendering MouseGAN images from RunwayML.

![An image of generated output from a computer mouse GAN. Shows a number of blobs that vaguely resemble computer mice.](/assets/example-image.png)

## Usage

Clone or download this repository.

```bash
git clone https://github.com/CodingTrain/Computer-MouseGAN.git
cd Computer-MouseGAN
```

### Set In runway with the ComputerMouseGAN

⚠️ Hosting a model on RunwayML costs money. Please review RunwayML's current pricing and be aware of the costs.

Navigate to https://app.runwayml.com/models/choochoo/ComputerMouseGAN link to view the model in RunwayML. You will need to sign into RunwayML or create an account if you don't already have one.

Click on the `Host Model` Button. The defaults are fine, hit `Host Model` again. Then go into the `Settings` under the `</>` or view code snippets button. There you will find the URL and API Key to use in the `.env` files this project.

![A gif of a browser following the steps above.](/assets/runway-process.gif)

### Start The Node Server

You'll need nodejs and npm installed if you don't already have them installed. Go to [nodejs.org](https://nodejs.org) to installing them.

Copy the `.env-sample` and rename the resulting file `.env`. Then edit that file to include the URL and API key you got from RunwayML.

Run `npm install` in the root directory of this repository.

Run `npm start` to start the server!

### Running Processing Sketches

Install the included http requests library. To do this unzip the include `httprequests_processing.zip` file. Then move the resulting directory called `httprequests_processing` to the library install location for Processing. Typically `~/sketchbook/libraries/` on Unix based systems and `Documents/sketchbook/libraries` on Windows.

You then can open the Processing sketches in the ProcessingIDE and run them.

### Help

If you have issues with this process you can post in the issues of this repository. Or more likely a speeder response is to ask for help in the Coding Train Discord server. You can join at [thecodingtrain.com/discord](https://thecodingtrain.com/discord).
