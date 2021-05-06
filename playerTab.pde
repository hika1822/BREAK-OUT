int temp;//playerの座標を一時保存するための整数(スター1で使う)
int temp2;//playerの座標を一時保存するための整数(スター2で使う)

void playerInfo()
{
  stroke( 0, 0, 0 );
  ellipse(420, 878, 140, 140);
  ellipse(420, 878, 160, 160);
  ellipse(357, 892, 40, 40);
  ellipse(149, 892, 40, 40);
  ellipse(372, 929, 26, 26);
  ellipse(149, 929, 26, 26);
  quad(149, 872, 357, 872, 357, 912, 149, 912); 
  quad(149, 916, 372, 916, 372, 942, 149, 942);
}

void playerMake()
{
  PFont myFont = createFont("Meiryo", 32);  //①フォントを作成する
  textFont(myFont);  //②テキストのフォントを設定する
  text("選択", 668, 208);
  textSize(50);
}

void playerMade()
{
   int y = constrain(mouseY, 0, height - 150);//プレイヤーの移動範囲を制限
   image(img2, 80, y);
   image(img8, 250, y);
   temp = y;//playerの座標を一時保存(スター1で使う)
   temp2 = y;//playerの座標を一時保存(スター2で使う)
}
