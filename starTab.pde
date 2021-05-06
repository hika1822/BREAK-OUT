float xx = 366;//スター1の初期X座標
int yy = 50;//スター1の初期Y座標
float xx2 = 360;//スター2の初期X座標
int yy2 = 50;//スター2の初期Y座標
float dx2 = random(10, 15);//スター2のXの速度を乱数設定
float dy2 = random(10, 15);//スター2のYの速度を乱数設定
float dx = random(10, 15);//スター1のX速度を乱数設定
float dy = random(10, 15);//スター1のYの速度を乱数設定
boolean[] starEnable = new boolean[20];
boolean starEnables = true;
boolean starEnables2 = true;
boolean starEnables3 = false;
int g;
int counter = 0;
int colflag =0;


/**************************************************
 starMake():弾である星を作成する関数
 *一応とげの数を変更可能にしている
 ***************************************************/
void starMake(float x, float y, int r, int toge) 
{
  int vertexNum = toge*2;  // 頂点数(トゲの数×2)
  int longV;  // 中心点から頂点までの距離
  int longT = r;  // 中心点からとげまでの距離
  int longY = longT/2;  // 中心点から谷までの距離をとげまでの距離の半分に

  pushMatrix();//今の座標を保存
  translate(x, y);//座標軸を右にx,左にyだけ移動
  rotate(radians(-90));//-90度回転
  beginShape();//点と点をつなげるためのやつ
  
  /**************************************************
　　半径が中心点から頂点となる円上に頂点を等間隔で配
　　置させる(とげが5個の場合は36度ごとに頂点を半径lo
　　ngT or longYの円上に配置する)
 　 頂点が奇数のとき谷(longY)に、偶数のときとげ
    (longT)にさせる
　***************************************************/
  for (int i = 0; i < vertexNum; i++) 
  {
    if (i % 2 == 0)//偶数
    {
      longV = longT;//longVはとんがる
    } 
    else//奇数
    {
      longV = longY;//longVは谷になる
    }
    vertex(longV * cos(radians(360 * i / vertexNum)), longV * sin(radians(360 * i / vertexNum)));//i=1ならx=cos72°,y=sin72°の座標に頂点を配置
  }
  endShape(CLOSE);//これないとbeginShape終わんない
  popMatrix();
}


//スターの動きを管理する関数
void moveStar()
{
    if(keyPressed)
    {
      if(key == 'f' && counter == 1)
      {
        yy = temp + 100;
        xx = 366;
        starEnables = false;
      }
    }
    if(starEnables == true)
    {
      if(xx <= 360)
      {
        dx = random(10, 15);//deadline内で強制的に正の向きにしてdeadlineへの侵入を防ぐ
      }
    }
    if(starEnables == false)
    {  
      if(xx > width - 30 || xx < 30 || (xx < 365 && yy < temp + 180 && yy > temp))
      {
         dx = -dx;
      }
      if(yy > height - 30 || yy < 30 || (xx < 365 && yy >= temp + 180 || xx < 365 && yy <= temp))
      {
         dy = -dy;
      }
      if(yy < 29 && yy > 0)//バグ修正用
      {
         yy += 30;
      }
      if(xx < 365 && yy >= temp + 180 || xx < 365 && yy <= temp)
      {
        starEnables = true;
      }
      
      //ボスとの当たり判定
      if(xx > 1600 && xx < 1900 && yy > 202 && yy < 500)
      {
        starEnables = true;
        colflag++;
      }
      xx += dx;
      yy += dy;
      fill(255, 255, 0);
      strokeWeight(7);
      stroke(255, 193, 0);
      starMake(xx, yy, 30, 5);
      fill(255, 255, 255);
      noStroke();
      starMake(xx, yy, 15, 5);
    }
    //n=2
    if(keyPressed)
    { //<>//
      if(key == 'f' && counter == 1)
      {
        yy2 = temp2 + 100;
        starEnables2 = false;
        xx2 = 366;
      }
    }
    if(starEnables2 == true)
    {
      if(xx2 <= 360)
      {
        dx2 = random(10, 15);
      }
    }
    if(starEnables2 == false)
    { 
      if(xx2 > width - 30 || xx2 < 30 || (xx2 < 365 && yy2 < temp2 + 180 && yy2 > temp2))
      {
         dx2 = -dx2;
      }
      if(yy2 > height - 30 || yy2 < 30 || (xx2 < 365 && yy2 >= temp2 + 180 || xx2 < 365 && yy2 <= temp2))
      {
         dy2 = -dy2;
      }
      if(xx2 < 365 && yy2 >= temp2 + 180 || xx2 < 365 && yy2 <= temp2)
      {
        starEnables2 = true;
      }
      
      //ボスとの当たり判定
      if(xx2 > 1600 && xx2 < 1900 && yy2 > 202 && yy2 < 500)
      {
        starEnables2 = true;
        colflag++;
      }
      
      xx2 += dx2;
      yy2 += -dy2;
      fill(255, 255, 0);
      strokeWeight(7);
      stroke(255, 193, 0);
      starMake(xx2, yy2 - 50, 30, 5);
      fill(255, 255, 255);
      noStroke();
      starMake(xx2, yy2 - 50, 15, 5);
    }
  
  if(starEnables == true && starEnables2 == true)
  {
    counter = 1;
  }
  else
  {
    counter = 0;
  }
  
  strokeWeight(1);
}
