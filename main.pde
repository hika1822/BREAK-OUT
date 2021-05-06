PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15;
boolean pilot = true;//debugpilot
int count = 0;

void setup()
{
  size(displayWidth, 970);
  frameRate(60);
  
  //ブロック表示を有効化
  for(int i = 0; i < 5; i++)
  {
    iBlock[i] = true;
    i2Block[i] = true;
    i3Block[i] = true;
    i4Block[i] = true;
    i5Block[i] = true;
  }
  
  
  for(int g = 0; g < 20; g++)
  {
    starEnable[g] = true;
  }
  img1 = loadImage("mahoutsukai_fire.png");//炎
  img2 = loadImage("mahoutsukai_fire2.png");//炎戦闘用
  img3 = loadImage("mahoutsukai_thunder.png");//電気
  img4 = loadImage("mahoutsukai_thunder2.png");//電気戦闘用
  img5 = loadImage("mahoutsukai_water.png");//水
  img6 = loadImage("mahoutsukai_water2.png");//水戦闘用
  img7 = loadImage("mahoutsukai_wind.png");//風
  img8 = loadImage("book_madousyo_necronomicon2.png");//風
  img9 = loadImage("character_cthulhu_azathoth.png");//魔法書
  img10 = loadImage("block01.png");
  img11 = loadImage("block02.png");
  img12 = loadImage("block03.png");
  img13 = loadImage("block04.png");
  img14 = loadImage("block05.png");
  img15 = loadImage("5801458i.jpg");
}



void draw()
{
  image(img15, 0, 0);
  //background(0, 255, 255);
  if(pilot == true)//デバッグパイロット有効時
  {
    //dScsho();
    starInfo();
    devLine();
  }
  strokeWeight(1);
  noFill();
   //<>//
  playerMake();
  
  playerMade();
  
  playerInfo();
  
  enemyParam();
    
  enemyHP();
  
  moveStar();
  
  createBlock();
  
}
