color c= color(255);

int RectRx=200, RectRy = 50, RectB = 80;

boolean PrimerMenu = true; 
boolean SegundoMenu = false;

boolean running=false, chain = false, Ff=false, Hgb = false, knot=false, bh=false, spot=false;

float X, Y;

void setup(){

  size(1280,720);
  background (255);
  rectMode(CENTER);
  fill(200, 100,20);
  rect(width-135,height-90, RectRx-20, RectRy, RectB);
  
  textSize(18);
  fill(0);
  text("Volver", width - 160, height - 80);
  
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
    
    running=false;
    chain = false; 
    Ff=false;
    Hgb = false;
    knot=false;
    bh=false;
    spot=false;
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
    running = true;
    
    cln();
    menuRSF();
  }
  
  //SEGUNDO BOTON
  if(PrimerMenu && mouseX<=(width/2)+(RectRx/2) && mouseX>=(width/2)-(RectRx/2) && mouseY<=(height/2 - 180)+(RectRy/2) && mouseY>=(height/2 - 180)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    
    PrimerMenu = false;
    SegundoMenu = true;
    chain=true;
    
    cln();
    menuChainStitch();
  }
  
  //TERCER BOTON
  if(PrimerMenu && mouseX<=(width/2)+(RectRx/2) && mouseX>=(width/2)-(RectRx/2) && mouseY<=(height/2 - 90)+(RectRy/2) && mouseY>=(height/2 - 90)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    
    PrimerMenu = false;
    SegundoMenu = true;
    Ff=true;
    
    cln();
    menuRSF();
  }
  
  //CUARTO BOTON
  if(PrimerMenu && mouseX<=(width/2)+(RectRx/2) && mouseX>=(width/2)-(RectRx/2) && mouseY<=(height/2)+(RectRy/2) && mouseY>=(height/2)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    
    PrimerMenu = false;
    SegundoMenu = true;
    Hgb=true;
    
    cln();
    menuRSF();
  }
  
  //QUIENTO BOTON
  if(PrimerMenu && mouseX<=(width/2)+(RectRx/2) && mouseX>=(width/2)-(RectRx/2) && mouseY<=(height/2 + 90)+(RectRy/2) && mouseY>=(height/2 + 90)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    
    PrimerMenu = false;
    SegundoMenu = true;
    knot=true;
    
    cln();
    menuRSF();
  }
  
  //SEXTO BOTON
  if(PrimerMenu && mouseX<=(width/2)+(RectRx/2) && mouseX>=(width/2)-(RectRx/2) && mouseY<=(height/2 + 180)+(RectRy/2) && mouseY>=(height/2 + 180)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    
    PrimerMenu = false;
    SegundoMenu = true;
    bh=true;
    
    cln();
    menuRSF();
  }
  
  //SEPTIMO BOTON
  if(PrimerMenu && mouseX<=(width/2)+(RectRx/2) && mouseX>=(width/2)-(RectRx/2) && mouseY<=(height/2 + 270)+(RectRy/2) && mouseY>=(height/2 + 270)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    
    PrimerMenu = false;
    SegundoMenu = true;
    spot=true;
    
    cln();
    menuRSF();
  }
  
  
  
//SEGUNDO MENU
  //PRIMER BOTON DEL SEGUNDO MENU
  if(SegundoMenu && mouseX<=(width/4)+(RectRx/2) && mouseX>=(width/4)-(RectRx/2) && mouseY<=(height/2 - 180)+(RectRy/2) && mouseY>=(height/2 - 180)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    PrimerMenu = false;
    SegundoMenu = false;
    cln();
    
    if(running){
      RunningStitch();
    }
    
    if(chain){
    
      Chain();
    }
  }
  
  if(SegundoMenu && mouseX<=(width/4)+(RectRx/2) && mouseX>=(width/4)-(RectRx/2) && mouseY<=(height/2 - 90)+(RectRy/2) && mouseY>=(height/2 - 90)-(RectRy/2) && mouseButton==LEFT ){
    println("hola");
    PrimerMenu = false;
    SegundoMenu = false;
    cln();
    
    //Menu de acuerdo al priemr menu
    if(running){
      RunningStitch();
    }
    
    if(chain){
    
      InterlacedChain();
    }
    
    
    
    
    
    
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
  
  textSize(18);
  fill(0);
  text("Volver", width - 160, height - 80);
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
  text("Running stitch", width/2 - 90, height/2 - 270 + 10);
  
  
  text("Chain stitch", width/2 - 90, height/2 - 180 + 10);
  
  
  text("Fly and Feather stitch", width/2 - 90, height/2 - 90 + 10);
  
  
  text("Herringbone stitch", width/2 - 90, height/2 + 10);
  
  
  text("Knot stitch", width/2 - 90, height/2 + 90 + 10);
  
  
  text("Buttonhole stitch", width/2 - 90, height/2 + 180 + 10);
  
  
  text("Spot stitch", width/2 - 90, height/2 + 270 + 10);
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
  text("Running", width/4 - 90, height/2 - 180 + 10);
  
  text("Back ", width/4 - 90, height/2 - 90 + 10);
  
  text("Whipped running ", width/4 - 90, height/2 + 10);
  
  text("Laced running ", width/4 - 90, height/2 + 90 + 10);
  
  text("Double laced running", width/4 - 90, height/2 + 180 + 10);
  
  text("Eskimo laced running", 3*width/4 - 90, height/2 - 180 + 10);
  
  text("Parallel laced running ", 3*width/4 - 90, height/2 - 90 + 10);
  
  text("Stepped running ", 3*width/4 - 90, height/2 + 10);
  
  text("Couching running ", 3*width/4 - 90, height/2 + 90 + 10);
}

//Pantalla de Running Stitch
void RunningStitch(){
 /* for(int i =0; i<width*height;i++){
    pixels[i]=c;
  }
  updatePixels();
  */
  textSize(80);
  fill(0);
  text("Running Stitch", width/2 - width/4, 80);
}





//CHAIN STITCH FAMILY MENU

void menuChainStitch(){

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
  text("Chain", width/4 - 90, height/2 - 180 + 10);
  
  text("Interlaced chain ", width/4 - 90, height/2 - 90 + 10);
  
  text("Back stitch chain", width/4 - 90, height/2 + 10);
  
  text("Zigzag Chain", width/4 - 90, height/2 + 90 + 10);
  
  text("Feathered chain", width/4 - 90, height/2 + 180 + 10);
  
  text("Twisted Chain", 3*width/4 - 90, height/2 - 180 + 10);
  
  text("Heavy Chain", 3*width/4 - 90, height/2 - 90 + 10);
  
  text("Detached chain", 3*width/4 - 90, height/2 + 10);
  
  text("Lazy Daisy", 3*width/4 - 90, height/2 + 90 + 10);
}

void Chain(){
 
  textSize(80);
  fill(0);
  text("Chain", width/2 - width/4, 80);
  
  
  int cont=0;
    
  float RadX=75,RadY=50;
  
  float x, y;
  
  for(float i=0;i<width;){
    i=i+(3*RadX/2);
    
    
    
    int Altura=height/2, Largo=20;
    
    fill(255);
    ellipse(Largo + (cont*(RadX + RadX/2)) , Altura - RadY/2 , 10,10);
    fill(0);
    ellipse(Largo + (cont*(RadX + RadX/2)) , Altura + RadY/2 , 10,10);
    
    println(cont);
    
    for(int j=0;j<360;j++){
  
      x=(Largo + RadX) + (cont*(RadX + RadX/2)) + RadX * cos(j);
      y=Altura+RadY* sin(j);
      
      if(x>Largo + RadX + (cont*(RadX + RadX/2))){
        point(x,y);
      }
      
      
    }
    
    stroke(1);
    line(Largo + (cont*(RadX + RadX/2)) , Altura - RadY/2 , Largo + RadX + (cont*(RadX + RadX/2)), Altura - RadY);
    line(Largo + (cont*(RadX + RadX/2)) , Altura + RadY/2 , Largo + RadX + (cont*(RadX + RadX/2)), Altura + RadY);
    cont++;
    
  }
}

void InterlacedChain(){
 
  textSize(80);
  fill(0);
  text("Interlaced chain", width/2 - width/4, 80);
}
