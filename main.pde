void setup()
{
  size(displayWidth, displayHeight);
}

int mousex = mouseX, mousey = mouseY;

boolean pilot = true;

void devscsho() 
{
 if(keyPressed)//スクショ
 {
   if (key == ENTER) 
   {
     String path = System.getProperty("user.home") + "/Desktop/Processing";
     save(path + '/' + mouseX + ',' + mouseY +  ".jpg");
     println(path + '/' + mouseX + ',' + mouseY + ".jpg");
   }
 }
}

void devloc()//マウスの座標表示
{
  background(255);
  fill(0);
  text("(" + mouseX + ", " + mouseY + ")", mouseX + 10, mouseY);
  textSize(50);
  noFill();
}

void enemyHP()
{
  quad(1290, 15, 1843, 15, 1887, 60, 1290, 60);
}

void playerInfo()
{
  ellipse(420, 878, 140, 140);
  ellipse(357, 892, 40, 40);
  ellipse(149, 892, 40, 40);
  ellipse(372, 929, 26, 26);
  ellipse(149, 929, 26, 26);
  quad(149, 872, 357, 872, 357, 912, 149, 912); 
  quad(149, 916, 372, 916, 372, 942, 149, 942);
}

void draw()
{
  if(pilot == true)//デバッグパイロット有効時
  {
    devscsho();
    devloc();
  }
  playerInfo();
  enemyHP();
}
