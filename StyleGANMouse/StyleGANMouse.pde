import http.requests.*;
import javax.imageio.ImageIO;
import javax.xml.bind.DatatypeConverter;
import java.io.ByteArrayInputStream;

void setup() {
  size(512, 512);
  randomSeed(14);

  PostRequest post = new PostRequest("http://localhost:3000/mouse");
  String zarray = "[";

  for (int i = 0; i < 511; i++) {
    zarray += random(-1, 1) + ",";
  }
  zarray += random(-1, 1) + "]";
  String json = "{\"z\":"+ zarray + ",";
  json += "\"truncation\": 0.5 }";
  post.addHeader("Content-Type", "application/json");
  post.addData(json);
  post.send();
  String base64 = post.getContent();
  PImage img = convertBase64(base64);
  image(img, 0, 0, 512, 512);
}


PImage convertBase64(String base64Image) {
  int commaIndex = base64Image.indexOf(',');
  if (commaIndex >= 0) {
    base64Image = base64Image.substring(commaIndex + 1);
  }
  PImage result = null;
  try {
    byte[] decodedBytes = DatatypeConverter.parseBase64Binary(base64Image);

    if (decodedBytes == null) {
      return null;
    }

    ByteArrayInputStream in = new ByteArrayInputStream(decodedBytes);
    result = new PImage(ImageIO.read(in));
  } 
  catch (IOException e) {
    e.printStackTrace();
  }

  return result;
}
