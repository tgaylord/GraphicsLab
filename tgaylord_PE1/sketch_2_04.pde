int x = 0;
int y = 55;

void setup(){
  size(100, 100);
}

void draw(){
  background(204);
  line(x, y, x+20, y-40); //Left Line
  line(x+10, y, x+30, y-40); //Middle Line
  line(x+20, y, x+40, y-40); //Right Line
  x = x+1;
  if (x>100){
   x = -40; 
  }
}
