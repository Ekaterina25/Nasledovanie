class Kvadrat {
  float x, y, s;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }
  
  void right(float _s) {
    this.x+=_s;
  }
}

class K2 extends Kvadrat {
 color kv2;
  K2(float _x, float _y, float _s, color f){
    super(_x,_y,_s);
    this.kv2 = f;
 }
  void draw() {
    rect(this.x,this.y,this.s,this.s);
    fill(this.kv2);
 }
}

 K2[] k_array;

void setup()
{
  size(600,600);
  k_array = new  K2[20];
  for(int i=0; i<20; i++){
    k_array[i] = new  K2(random(width), random(height), 80.0,int(random(#000000,#00FF00)));
  }
}

void draw()
{
  background(0);
  for(int i=0; i<20; i++){
     k_array[i].draw();
     k_array[i].right(random(5));
  }
}