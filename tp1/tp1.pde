PImage imagendeinicio, imagencredito1, imagencredito2, imagencredito3,imagencierre;
int tamellipse=50;
int posX=100;
int posY=0;
int fc, falsofc;
PFont inicio;
boolean imagenfondo=false;
color relleno;

void setup() {
  size(900, 600);
  imagendeinicio= loadImage ("img1.jpg");
  imagencredito1= loadImage ("images1.jpg");
  imagencredito2= loadImage ("images2.jpg");
  imagencredito3= loadImage ("images3.jpg");
  imagencierre= loadImage ("img2.jpg");
  inicio = loadFont ("ShowcardGothic-Reg-48.vlw");
  relleno=color(0, 0, 0);
}
void draw() {
  posY++;
  falsofc=frameCount--;
  println (frameCount);
  println (mouseX);
  println (mouseY);
  image (imagendeinicio, 0, 0, width, height);
  strokeWeight(3);
  fill (0);
  ellipse (450, 450, 150, tamellipse);
  fill(255,0,0);
  textFont (inicio, 20);
  text ("Creditos", 410, 460);

  if (imagenfondo==true) {
    background(250);
    image (imagencredito1, 0, 0, width, height);
    fc=frameCount++;
    if (fc> 10 && fc<140) {
      textSize (40);
      fill(255,0,0);
      text ("KILL BILL", 620, 650 - posY);
    } else if (fc>=140 && fc< 210) {

      image(imagencredito2, 0, 0, width, height);
      textSize (20);
      fill(255,0,0);
      text ("DIRECTOR:\nQUENTIN TARANTINO", 620,564 - posY);
      text ("PROTAGONISTAS:\n"+"UMA THURMAN\nDAVID CARRADINE", 620, 690 - posY);
    } else if (fc>=210 && fc<310) {
      image(imagencredito3, 0, 0, width, height);
      textSize (14);
      fill(250,0,0);
      text ("ACTORES SECUNDARIOS:\n"+"DARYL HANNAH\nMICHAEL MADSEN",620, 450- posY);
      text ("MUSICA:\nBANG BANG-NANCY SINATRA\nTWISTED NERVE-BERNARD HERRMANN",620, 564 - posY);
        } else if (fc>=310) {
      image(imagencierre, 0, 0, width, height);
      fill (0);
      textSize (30);
      text ("PRESS R", 480, 480);
          
    }
  }
}    

void mouseClicked () {

  if (dist(mouseX, mouseY, 450, 450) < 75) {
    imagenfondo=true;
  }
}

void keyPressed() {
  if (key =='R' || key == 'r') {
    imagenfondo = false;
    frameCount=0;
    posY=0;
  }
}
