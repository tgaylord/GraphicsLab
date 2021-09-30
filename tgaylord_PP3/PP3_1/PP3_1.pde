//An example of this movement would be throwing a rock directly in the air, which forms a parabola

Rocket rocket;
void setup(){
  size(640,360);
  rocket = new Rocket();
  rocket.velocity.set(0,random(-1,-3));
}
class Rocket{
  PVector toppoint;
  PVector velocity;
  PVector acceleration;
  
  Rocket(){
   toppoint = new PVector(320,340);
   velocity = new PVector(0,0);
   acceleration = new PVector(0,-0.01);
  }
  void preupdate(){
    velocity.add(acceleration);
    toppoint.add(velocity);
  }
  void postupdate(){
    //acceleration.y+=-.05;
    velocity.sub(acceleration);
    toppoint.add(velocity);
  }
  void display(){
  stroke(0);
  fill(175);
  triangle(toppoint.x, toppoint.y, toppoint.x-10, toppoint.y+20, toppoint.x+10, toppoint.y+20);
  }
  
}


void draw(){
 background(255);
 boolean initialburn = true;
 if(rocket.toppoint.y<240){
   initialburn = false;
   }
  if(initialburn){
    rocket.preupdate();
  }
  else{
    rocket.postupdate();
  }
  
 rocket.display();
 println(rocket.velocity);
 println(rocket.acceleration);
}
