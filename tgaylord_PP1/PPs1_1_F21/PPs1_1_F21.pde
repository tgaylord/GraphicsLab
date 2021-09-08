//State window size
size(100,100);

background(255);

//Draw vertical lines that are evenly spaced, starting at (0, 0)
//Draw horizontal lines that are evenly spaced, starting at (0, 0)


for(int i = 0; i<12; i = i+1){
  line(i*width/11,0,i*width/11, 100);
  line(0, i*height/11, 100, i*height/11);
}


//Draw points. Make the points visible by increasing the weight
strokeWeight(8);
point(40,50);
point(40,70);
point(60,70);
point(60,50);
point(50,40);
point(70,40);
point(70,60);

//Draw lines connecting the points to create the image of a cube
strokeWeight(4);
line(40,50,40,70);
line(40,70,60,70);
line(60,70,60,50);
line(60,50,40,50);
line(40,50,50,40);
line(50,40,70,40);
line(70,40,60,50);
line(70,40,70,60);
line(70,60,60,70);
