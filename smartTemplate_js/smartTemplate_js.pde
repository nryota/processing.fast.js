// processing.fast.jsを使ったPC/iOS/Android向けサンプル

void setup() {
  size(640, 960);          // PC用に画面の大きさを決める
  orientation(PORTRATE);   // iOS/Androidのときは全画面にする（縦持ち）
  
  background(255);
  noStroke();
}

void draw() {
  fill(random(255), random(255), random(255));
  ellipse(random(width), random(height), 100, 100);

  fill(255);
  textSize(70);
  text("Smart Template", 40, 100); 
}