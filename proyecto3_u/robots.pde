class  Robots {
PImage champie,juanillo,killi,matrex,sainz;
int x,y,w,h,p;

Robots(int x_, int y_, int w_, int h_,int p_){

x = x_;
y = y_;
w = w_;
h = h_;
p = p_;
}

void Draw (){

switch(p){
 
 case 0:
 champie = loadImage("champie.png"); 
 image (champie, x,y,w,h);
 gf=random(20,40);
 gd=random(10,20);
 cu=15;
 break;
 
 case 1:
 juanillo = loadImage("juanillo.png"); 
 image (juanillo, x,y,w,h);
 gf=random(35,55);
 gd=random(20,35);
 cu=20;
 break;
 
 case 2:
 killi = loadImage("killi.png"); 
 image (killi, x,y,w,h);
 gf=random(40,60);
 gd=random(15,25);
 cu=30;
 break;
 
 case 3:
 matrex = loadImage("matrex.png"); 
 image (matrex, x,y,w,h);
 gf=random(40,55);
 gd=random(20,35);
 cu=10;
 break;
 
 case 4:
 sainz = loadImage("sainz.png"); 
 image (sainz, x,y,w,h);
 gf=random(30,40);
 gd=random(20,30);
 cu=10;
 break;
 }
 }
 
 void Translate(){
 
 for(int i=0;i<=10;i++){
 x=x+80;
 x=x-80;
 }
 }
}

void Selection()
{
  if (pantalla==2)
  {
  switch (key)
  {
    case '1':
    l1=1;
    
    break;
    case '2':
    l1=2;
    
    break;
    case '3':
    l1=3;
    
    break;
    case '4':
    l1=4;
    
    break;
    case '5':
    l1=5;
    
    break;
    case '6':
    l2=1;
    
    break;
    case '7':
    l2=2;
    
    break;
    case '8':
    l2=3;
    
    break;
    case '9':
    l2=4;
    
    break;
    case '0':
    l2=5;
    
    break;
  }
  }
}
