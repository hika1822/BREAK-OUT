//ブロックについてのタブ

boolean[] iBlock = new boolean[5];
boolean[] i2Block = new boolean[5];
boolean[] i3Block = new boolean[5];
boolean[] i4Block = new boolean[5];
boolean[] i5Block = new boolean[5];


//createBlock():ブロックの表示or非表示と移動中の処理を行う関数
void createBlock()
{
  count++;
  
  //First:緑色のブロックを展開
  if(count >= 60 * 3)//3秒以降
  {
    int xB = 1300, yB = -194;//ブロックのX座標を1300、Y座標を-194、速度を10に設定
    for(int i = 0; i < 5; i++)
    {
       yB += 194;//iの数だけブロックのy座標を194可算し並べていく
       if(iBlock[i])//iBlock[i]がtrueならばブロックを表示する
       {
         image(img10, xB - count, yB);//ブロックを左に移動させる
       }
      if((xx > ((xB - count) - 30) && xx < ((xB - count) + 92)) && (yy >yB && yy < (yB + 194)) && iBlock[i]) //スターがブロック内に入り、trueのとき
      {
        dx = -dx;//スター1を反射
        iBlock[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
      if((xx2 > ((xB - count) - 30) && xx2 < ((xB - count) + 92)) && (yy2 >yB && yy2 < (yB + 194)) && iBlock[i]) //スター2がブロック内に入り、trueのとき
      {
        dx2 = -dx2;//スター2を反射
        iBlock[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
    }
  }
  
  //Second:赤色のブロックを展開
  if(count >= 60 * 4)//4秒以降
  {
    int xB = 1300, yB = -194;//ブロックのX座標を1300、Y座標を-194、速度を10に設定
    for(int i = 0; i < 5; i++)
    {
       yB += 194;//iの数だけブロックのy座標を194可算し並べていく
       if(i2Block[i])//iBlock[i]がtrueならばブロックを表示する
       {
         image(img11, xB - count + 90, yB);//ブロックを左に移動させる
       }
      if((xx > ((xB - count + 90) - 30) && xx < ((xB - count + 90) + 92)) && (yy >yB && yy < (yB + 194)) && i2Block[i]) //スターがブロック内に入り、trueのとき
      {
        dx = -dx;//スター1を反射
        i2Block[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
      if((xx2 > ((xB - count + 90) - 30) && xx2 < ((xB - count + 90) + 92)) && (yy2 >yB && yy2 < (yB + 194)) && i2Block[i]) //スター2がブロック内に入り、trueのとき
      {
        dx2 = -dx2;//スター2を反射
        i2Block[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
    }
  }
  
   //Third:水色のブロックを展開
  if(count >= 60 * 5)//5秒以降
  {
    int xB = 1300, yB = -194;//ブロックのX座標を1300、Y座標を-194、速度を10に設定
    for(int i = 0; i < 5; i++)
    {
       yB += 194;//iの数だけブロックのy座標を194可算し並べていく
       if(i3Block[i])//iBlock[i]がtrueならばブロックを表示する
       {
         image(img12, xB - count + 90 * 2, yB);//ブロックを左に移動させる
       }
      if((xx > ((xB - count + 90 * 2) - 30) && xx < ((xB - count + 90 * 2) + 92)) && (yy >yB && yy < (yB + 194)) && i3Block[i]) //スターがブロック内に入り、trueのとき
      {
        dx = -dx;//スター1を反射
        i3Block[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
      if((xx2 > ((xB - count + 90 * 2) - 30) && xx2 < ((xB - count + 90 * 2) + 92)) && (yy2 >yB && yy2 < (yB + 194)) && i3Block[i]) //スター2がブロック内に入り、trueのとき
      {
        dx2 = -dx2;//スター2を反射
        i3Block[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
    }
  }
  
   //fourth:白色のブロックを展開
  if(count >= 60 * 6)//6秒以降
  {
    int xB = 1300, yB = -194;//ブロックのX座標を1300、Y座標を-194、速度を10に設定
    for(int i = 0; i < 5; i++)
    {
       yB += 194;//iの数だけブロックのy座標を194可算し並べていく
       if(i4Block[i])//iBlock[i]がtrueならばブロックを表示する
       {
         image(img13, xB - count + 90 * 3, yB);//ブロックを左に移動させる
       }
      if((xx > ((xB - count + 90 * 3) - 30) && xx < ((xB - count + 90 * 3) + 92)) && (yy >yB && yy < (yB + 194)) && i4Block[i]) //スターがブロック内に入り、trueのとき
      {
        dx = -dx;//スター1を反射
        i4Block[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
      if((xx2 > ((xB - count + 90 * 3) - 30) && xx2 < ((xB - count + 90 * 3) + 92)) && (yy2 >yB && yy2 < (yB + 194)) && i4Block[i]) //スター2がブロック内に入り、trueのとき
      {
        dx2 = -dx2;//スター2を反射
        i4Block[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
    }
  }
  
   //Fifth:青色のブロックを展開
  if(count >= 60 * 7)//7秒以降
  {
    int xB = 1300, yB = -194;//ブロックのX座標を1300、Y座標を-194、速度を10に設定
    for(int i = 0; i < 5; i++)
    {
       yB += 194;//iの数だけブロックのy座標を194可算し並べていく
       if(i5Block[i])//iBlock[i]がtrueならばブロックを表示する
       {
         image(img14, xB - count + 90 * 4, yB);//ブロックを左に移動させる
       }
      if((xx > ((xB - count + 90 * 4) - 30) && xx < ((xB - count + 90 * 4) + 92)) && (yy >yB && yy < (yB + 194)) && i5Block[i]) //スターがブロック内に入り、trueのとき
      {
        dx = -dx;//スター1を反射
        i5Block[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
      if((xx2 > ((xB - count + 90 * 4) - 30) && xx2 < ((xB - count + 90 * 4) + 92)) && (yy2 >yB && yy2 < (yB + 194)) && i5Block[i]) //スター2がブロック内に入り、trueのとき
      {
        dx2 = -dx2;//スター2を反射
        i5Block[i] = false;//iBlock[i]をfalseにしてブロックの表示させなくする
      }
    }
  }
}
