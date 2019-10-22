color c= color(255);

int RectRx=200, RectRy = 50, RectB = 80;

boolean PrimerMenu = true; 
boolean SegundoMenu = false;

float X, Y;

void setup(){

  size(1280,720);
  background (255);
  rectMode(CENTER);
  fill(200, 100,20);
  rect(width-135,height-90, RectRx-20, RectRy, RectB);
  
  loadPixels();
  
  MenuPrincipal();
  
  

}

void draw(){
  
  //BOTON DE VOLVER AL MENU PRINCIPAL
  if (mouseButton == LEFT && mouseX<=width-135+RectRx-20 && mouseX>=width-135-RectRx-20 && mouseY<=height-90+RectRy && mouseY>=height-90-RectRy){
    cln();
    MenuPrincipal();
    PrimerMenu=true;
    SegundoMenu=false;
  }
  
  
/*  int x1=(width/4)+(RectRx/2);
  int x2 = (width/4)-(RectRx/2)
  println(x1+"  "+mouseX+"  "+x2);
  
  int y1=(height/2 - 270)+(RectRy/2);
  int y2=(height/2 + 270)-(RectRy/2);
  println(y1+"  "+mouseY+"  "+y2); */


//PRIMER MENU
  //PRIMER BOTON
  if(PrimerMenu && mouseX<=(width/2)+(RectRx/2) && mouseX>=(width/2)-(RectRx/2) && mouseY<=(height/2 - 270)+(RectRy/2) && mouseY>=(height/2 - 270)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    PrimerMenu = false;
    SegundoMenu = true;
    cln();
    menuRSF();
  }
  
  
//SEGUNDO MENU
  //PRIMER BOTON DEL SEGUNDO MENU
  if(SegundoMenu && mouseX<=(width/4)+(RectRx/2) && mouseX>=(width/4)-(RectRx/2) && mouseY<=(height/2 - 180)+(RectRy/2) && mouseY>=(height/2 - 180)-(RectRy/2) && mouseButton==RIGHT ){
    println("hola");
    PrimerMenu = false;
    SegundoMenu = false;
    
    RunningStitch();
    cln();
  }
  
}




//Limpiar pantalla
void cln(){
  float size = width*height;
  
  for(int i=0;i<size;i++){
  
    pixels[i]=c;
  }
  
  updatePixels();
  
  fill(200, 100,20);
  
  rect(width-135,height-90, RectRx-20, RectRy, RectB);
}


//MENU PRINCIPAL
void MenuPrincipal(){
 
  fill(2,100,200);
  
  rect(width/2, height/2 + 270, RectRx, RectRy, RectB); //Running Stitch Family
  
  rect(width/2, height/2 + 180, RectRx, RectRy, RectB);
  
  rect(width/2, height/2 + 90, RectRx, RectRy, RectB);
  
  rect(width/2, height/2 - 270, RectRx, RectRy, RectB);
  
  rect(width/2, height/2 - 180, RectRx, RectRy, RectB);
  
  rect(width/2, height/2 - 90, RectRx, RectRy, RectB);
  
  rect(width/2, height/2, RectRx, RectRy, RectB);
  
  textSize(18);
  fill(255);
  text("Running Stitch Family", width/2 - 90, height/2 - 270 + 10);
}


//Menu de Running Stitch Family
void menuRSF(){
  

  fill(20,200,100);
  
  rect(width/4, height/2 + 180, RectRx, RectRy, RectB);
  
  rect(width/4, height/2 + 90, RectRx, RectRy, RectB);
  
  rect(width/4, height/2 - 180, RectRx, RectRy, RectB);
  
  rect(width/4, height/2 - 90, RectRx, RectRy, RectB);
  
  rect(width/4, height/2, RectRx, RectRy, RectB);
  
  rect(3*width/4, height/2 + 90, RectRx, RectRy, RectB);
  
  rect(3*width/4, height/2 - 180, RectRx, RectRy, RectB);
  
  rect(3*width/4, height/2 - 90, RectRx, RectRy, RectB);
  
  rect(3*width/4, height/2, RectRx, RectRy, RectB);
  
  
  textSize(18);
  fill(255);
  text("Running Stitch", width/4 - 70, height/2 - 180 + 10);
}

//Pantalla de Running Stitch
void RunningStitch(){
  for(int i =0; i<width*height;i++){
    pixels[i]=c;
  }
  updatePixels();
}
