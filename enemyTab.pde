float enemHP = 0; 

void enemyHP()
{
  float  progress = map(enemHP, 0, 360, 1843, 1290);
  noStroke();
  fill(0);
  quad(1290, 15, progress, 15, progress, 60, 1290, 60);
  if(colflag == 1)
  {
    enemHP = 100;
  }
}

void enemyParam()
{
  image(img9, 1600, 202);
}
