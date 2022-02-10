float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l3 = 0;
float dif = 1.0;


void setup(){
  size(1000, 1000, P3D);

  
  camera(200, 200, 200, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'A'){
      angle0 = angle0 - dif;
    }
    if(key == 'B'){
      angle1 = angle1 + dif;
    }
    if(key == 'b'){
      angle1 = angle1 - dif;
    }
   
    if(key == 'c'){
      l3 = l3 + dif;
    }
    if(key == 'C'){
      l3 = l3 - dif;
    }
    if(key == 'D'){
      angle2 = angle2 + dif;
    }
    if(key == 'd'){
      angle2 = angle2 - dif;
    }
  }
  

  rotateZ(radians(angle0));
  translate(0,0,40);
  fill(200);
  box(10,10,80);
  
  translate(0,0,45);
  rotateX(radians(angle1));
  translate(0,35,0);
  fill(150);
  box(10,80,10);
  
  translate(0,42.5,0);
  rotateZ(radians(angle2));
  translate(0,0, -10+l3);
  fill(100);
  box(5,5,60);

}
