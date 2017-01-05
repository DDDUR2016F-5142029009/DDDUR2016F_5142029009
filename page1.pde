void drawPage1(){
  background(#D7FFD3);
textFont(font1);
textSize(90);
textAlign(RIGHT);
fill(#045000);
text("About Users---The People",1340,180);
 //getPieChartData1();
 //pieChartMode();
 textFont(font1);
textSize(50);
textAlign(CENTER);
fill(#045000);
text("Male",230,600);
text("Bachelor",820,700);
 
 textFont(font1);
textSize(50);
textAlign(CENTER);
fill(#09D100);
text("Female",610,430);
text("Master",850,400);

 textFont(font1);
textSize(50);
textAlign(CENTER);
fill(#3FFF36);
text("Phd",1150,480);

 textFont(font1);
textSize(75);
textAlign(CENTER);
fill(#045000);
text("GENDER",432,800);
text("DEGREE",975,800);
 
 
  
  pieChart(300, angles);
  peopleChart(300,angless);
 
  
}
void pieChart(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    noStroke();
    fill(pieColor[i]);
    arc(432, 541, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
  }
}

void peopleChart(float diameter1, int[] data1) {
  float lastAngle1 = 0;
  for (int i = 0; i < data1.length; i++) {
    noStroke();
    fill(peopleColor[i]);
    arc(975, 541, diameter1, diameter1, lastAngle1, lastAngle1+radians(angless[i]));
    lastAngle1 += radians(angless[i]);
  }
}

void judgePage1(){
  textFont(font1);
textSize(40);
textAlign(LEFT);
fill(#045000);
text("Press this to look back the Main Stats",40,140);

if(mouseX>=30 && mouseX<=430 &&mouseY>=110 &&mouseY<= 170){
noFill();
  stroke(#045000);
rect(30,102,400,54,5);

if (mousePressed){
b = 0;
}
}
}