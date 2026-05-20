class Predio {
  float x, largura, altura, prob;
  int ultimaMud = 0, semente = 0;
  color cor;
  
  public Predio(float x, float largura) {
    this.x = x;
    this.largura = largura;
    this.altura = random(height/2)+height/3;
    this.prob = 0.3;
    this.cor = color((int)random(256), (int)random(256), (int)random(256));
  }
  
  public void desenha(){
    int tempoAtual = millis();
    if(tempoAtual - ultimaMud >= 2000) {
      semente = int(random(10000)); 
      ultimaMud = tempoAtual;
    }
    randomSeed(semente);
    stroke(1);
    fill(cor);
    float y = height - altura;
    rect(x, y, largura, altura);
    float lj = 5, hj = 10;
    int l = (int)(altura/hj);
    int c = (int)(largura/lj);
    
    for(int i = 1; i < l-1; i++){
      if(i%2 == 0) continue;
      for(int j = 1; j < c-1; j++){
         if(j%2 == 0) continue;
         noStroke();
         if(random(1) < prob) fill(230);
         else fill(100);
         rect(x + j*lj, y + i*hj, lj, hj);
      }
    }
  }
  
  public float getX(){
    return x; 
  }
  
  public void setX(float x){
    this.x = x; 
  }
}
