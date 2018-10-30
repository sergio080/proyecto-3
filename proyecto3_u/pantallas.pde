class Pantalla {
  
  int x, y, w, h, s;
  PImage inicio,historia,seleccion,pelea,ganador1,ganador2;
  
Pantalla (int x_, int y_, int w_, int h_, int s_){
x = x_;
y = y_;
w = w_;
h = h_;
s = s_;

}

   void Draw(){
   
   switch (s){
   
   case 0:
   
   inicio = loadImage ("inicio.gif");
   image (inicio,x,y,w,h);
   break;
   
   case 1:
   
   historia = loadImage ("historia.gif");
   image (historia,x,y,w,h);
   break;
   
   case 2:
   
   seleccion = loadImage ("seleccion.gif");
   image (seleccion,x,y,w,h);
   break;
   
   case 3:
   
   pelea = loadImage ("pelea.gif");
   image (pelea,x,y,w,h);
   break;
   
   case 4:
   
   ganador1 = loadImage ("ganador1.gif");
   image (ganador1,x,y,w,h);
   break;
   
    case 5:
   
   ganador2 = loadImage ("ganador2.gif");
   image (ganador2,x,y,w,h);
   break;
   
   
   }
   }
}

void SS (){
  
  pushMatrix();
  scale(.2,.2);
  translate(-10,650);
  champie.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.3,0.3);
  translate(180,230);
  juanillo.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.2,0.2);
  translate(1200,700);
  killi.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.2,0.2);
  translate(1800,700);
  matrex.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.2,0.2);
  translate(2500,700);
  sainz.Draw();
  popMatrix();
  

  
  
  pushMatrix();
  scale(0.2,0.2);
  translate(-20,2000);
  champie.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.3,0.3);
  translate(120,1090);
  juanillo.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.2,0.2);
  translate(1100,2000);
  killi.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.2,0.2);
  translate(1850,2000);
  matrex.Draw();
  popMatrix();
  
  pushMatrix();
  scale(0.2,0.2);
  translate(2500,2000);
  sainz.Draw();
  popMatrix();
  

}

void Lucha(){
  switch (l1)
  {
  
  case 1:
   pushMatrix();
   scale(0.4,0.4);
   translate(-70,500);
   champie.Draw();
   popMatrix();
     break;
    
  case 2:
   pushMatrix();
   scale(0.4,0.4);
   translate(-220,500);
   juanillo.Draw();
   popMatrix();
     break;
    
  case 3:
   pushMatrix();
   scale(0.4,0.4);
   translate(-100,500);
   killi.Draw();
   popMatrix();
     break;
    
  case 4:
   pushMatrix();
   scale(0.4,0.4);
   translate(-70,500);
   matrex.Draw();
   popMatrix();
     break;
    
  case 5:
   pushMatrix();
   scale(0.3,0.3);
   translate(-100,500);
   sainz.Draw();
   popMatrix();
     break; 
  }
  
  
  switch (l2)
  {
  case 1:
   pushMatrix();
   scale(0.4,0.4);
   translate(1000,500);
   champie.Draw();
   popMatrix();
     break;
    
  case 2:
   pushMatrix();
   scale(0.4,0.4);
   translate(800,500);
   juanillo.Draw();
   popMatrix();
     break;
    
  case 3:
   pushMatrix();
   scale(0.4,0.4);
   translate(1100,500);
   killi.Draw();
   popMatrix();
     break;
    
  case 4:
   pushMatrix();
   scale(0.4,0.4);
   translate(1200,500);
   matrex.Draw();
   popMatrix();
     break;
    
  case 5:
   pushMatrix();
   scale(0.3,0.3);
   translate(1400,500);
   sainz.Draw();
   popMatrix();
     break; 
  }
}
