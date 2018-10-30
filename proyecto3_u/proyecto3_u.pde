

int pantalla=0,l1,l2,t=1,opor=0,opor2=0,con=0,con2=0;
float gf,gd,cu,vida1=100,vida2=100;


Pantalla inicio,historia,seleccion,pelea,ganador1,ganador2;
Robots champie,juanillo,killi,matrex,sainz;

void setup(){

fill(255);
size(700,600);



inicio = new Pantalla (0,0,width,height,0);
historia = new Pantalla (0,0,width,height,1);
seleccion = new Pantalla (0,0,width,height,2);
pelea = new Pantalla (0,0,width,height,3);
ganador1 = new Pantalla (0,0,width,height,4);
ganador2 = new Pantalla (0,0,width,height,4);


champie = new Robots (0,0,width,height,0);
juanillo= new Robots (0,0,width,height,1);
killi= new Robots (0,0,width,height,2);
matrex =new Robots (0,0,width,height,3);
sainz =new Robots (0,0,width,height,4);



 

}

void draw()
{
   
  background (255);
  if (pantalla==0)
  {
    println ("inicio");
    inicio.Draw();
    noFill();
    
    if (mousePressed && (mouseX>400) && (mouseX<=400+230) && (mouseY>500) && (mouseY<=500+100))
    {
      pantalla=1;
    }
  }
  
if (pantalla==1)
  {
    println ("historia");
    historia.Draw();
    noFill();
    
    if (mousePressed && (mouseX>50) && (mouseX<=50+230) && (mouseY>260) && (mouseY<=260+230))
    {
      pantalla=2;
    }
  }
  
  
  if (pantalla==2)
  {
    println ("seleccion");
    seleccion.Draw();
    SS();
    
    if (l1==0 && l2==0)
    {
      Selection();
    }
    if (l1!=0 && l2==0)
    {
      keyPressed();
    }
    
    
    if (l1!=0 && l2!=0)
    {
      pantalla=3;
    }
  }
  
  if (pantalla==3)
  {
    pelea.Draw();
    Lucha();
    
    keyPressed();
    
    if (vida1<=0 || vida2<=0)
    {
      pantalla=4;
    }
  }
  
  if (pantalla==4)
  {
   
    if (vida1>vida2)
    {
      ganador1.Draw();
    }
   else if(vida2>vida1){
     ganador2.Draw();
   }
    keyPressed();
   
  }
  
  
}

void keyPressed()
{
  if (pantalla<=3)
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

  
  if (pantalla==4)
  {
    switch(key)
    {
      case '1':
    pantalla=1;
    t=1;
    opor=1;opor2=1;
    con=1;con2=1;
    vida1=100;
    vida2=100;
    break;
    
    case '0':
    exit();
    break;
    }
  }
  
  if (pantalla==3)
 {
  if (t==1 && key=='z'||key=='Z')
 {
   vida2=vida2-7;
   t=2;
   
   println(vida2);
 }
 if (t==1 && con<=3 && key=='a'||key=='A')
 {
   vida2=vida2-5;
   t=2;
  
   println(vida2);
 }

 
 if (t==2 && key=='m'||key=='M')
 {
   vida1=vida1-6;
   t=1;
   println(vida1);
 }
 
 if (t==2 && con2<=3 && key=='k'||key=='K')
 {
   vida1=vida1-7;
   t=1;
   println(vida1);
 }
 

  stroke (0);
  strokeWeight(1);
  fill (random(25),random(10),random(50));
  rect (155,130,40,(vida1)*2);
  rect (380,130,40,(vida2)*2);
  
 }
 


}
