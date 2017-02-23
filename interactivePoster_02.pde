import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
Ball b;
PImage img;

void setup() {
  size(915, 1080);
  img = loadImage("final.jpg");
  image(img, 0, 0);
  b = new Ball();
  video = new Capture(this, 160, 120);
  opencv = new OpenCV(this, 160, 120);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
  video.loadPixels();
}

void draw() {
  background(50);
  image(img, 0, 0);
  b.update();
  b.show();
}

void keyPressed () {
  switch (key) {
    case('s'): 
    String date = new java.text.SimpleDateFormat("yyyy_MM_dd_kkmmss").format(new java.util.Date ());
    saveFrame("TMTIVMU"+date+".jpg");
  }
}