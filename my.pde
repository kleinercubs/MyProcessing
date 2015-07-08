int x=0,y=0,a=0,b=0,d=1,da=1,db=1;

void setup()
{
  size(200,200);
}

void draw()
{
  background (155);

  ellipse (100,60,75,40);  //head

  ellipse (90,52,18,18);
  ellipse (110,52,18,18);  //eyes

  triangle (100,80,112,65,87,65);  //mouth

  rect (75,75,50,75);  //body
  
  triangle (75,150,100,150,87+x,175);
  triangle (125,150,100,150,112+y,175); 

  if (87+x>125) d=-d;
  if (87+x<75) d=-d;
    x=x+d; y=y-d;  //feet

  line (75,90,50,100+b);
  line (125,90,150,100);

  if (100+b>120) db=-db;
  if (100+b<75) db=-db;  
  b=b+db; //hand
  
  ellipse (50,125+a,25,25);
  if (a<b+db) da=-da;
  if (100+a>145) da=-da;
  a=a+da;
 
  
  line (90,40,75,30);
  line (110,40,125,30);  //ear
}