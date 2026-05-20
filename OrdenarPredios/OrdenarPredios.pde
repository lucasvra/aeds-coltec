Predio[] predios = new Predio[8];

void setup(){
  size(800, 600);
  int l = width/predios.length;
  for(int i = 0; i < predios.length; i++) 
    predios[i] = new Predio(i*l, l);
}

void draw(){
  desenhaFundo();
  
  for(int i = 0; i < predios.length; i++)
    predios[i].desenha();
  
  
  if(keyPressed && key == 'o'){
    shellSort(); 
  }
  if(keyPressed && key == 'r'){
    int l = width/predios.length;
    for(int i = 0; i < predios.length; i++) 
      predios[i] = new Predio(i*l, l);
  }
}

void desenhaFundo(){
   background(50);
   fill(#E8EACE);
   circle(700, 100, 60);
}

void shellSort(){
  
}
