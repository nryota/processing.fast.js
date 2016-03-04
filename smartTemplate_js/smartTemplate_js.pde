/* @pjs preload="star.png"; 
 */

PImage starImg; 

void setup() {
  size(640, 960, P2D);     // PC用に画面の大きさを決める
  orientation(PORTRATE);   // iOS/Androidのときは全画面にする（縦持ち）
  starImg = loadImage("star.png");
}

void draw() {
  background(160, 60, 60);

  textSize(30);
  text("processing.fast.js", 40, 60);
  text("FPS " + nf(frameRate, 2, 1), 40, 100);

  blendMode(ADD);
  translate(mouseX, mouseY);
  for(int i=0; i<500; i++) {
    rotate(i * 0.08f);
    scale(0.995f);
    translate(0, sin(frameCount * 0.002f) * 50);
    tint(255, 50 + i % 100);
    image(starImg, cos(frameCount * 0.01f) * 200, 0);
  } 
}