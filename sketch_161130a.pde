//5142029009

PImage img1;
PFont font1;
int a = 0;
int b = 0;

int bachlor = 0;
int master = 0;
int doctor = 0;
String[]name = {"Main Canteen(East)","Main Canteen(West)","Wheaten","Stew","Su's hot","Baiweilin","Gimlid","Teacher's","Kebab","Hot spot","Longzai","Fenmian","Shaola","Desserts","Dim sum","Fry noodle","Potatoes","barbecue","Porridge","F-Baozai","Cards","Fruits","Bakery"};
String[]percentage = {"17.7%","33.7%","21.7%","6.5%","0.6%","0.5%","0.3%","11.5%","2.2%","3.3%","1.1%","1.8%","2.8%","1.0%","5.2%","2.1%","2.5%","4.8%","7.2%","4.0%","0.0%","2.1%","0.1%"};
int[]numbers = {499,33,613,184,15,13,7,324,63,91,32,51,77,27,147,58,70,134,204,110,1,60,2};
color[]pieColor = {#067E00,#09D100};
color[]peopleColor = {#067E00,#09D100,#3FFF36};
int angles[] = {round(0.652*360),round(0.348*360)};
int angless[] = {round(0.498*360),round(0.339*360),round(0.163*360)};

void setup(){
size(1407,1000);

img1 = loadImage("nihenbanga.jpg");

font1 = loadFont("FreestyleScript-Regular-60.vlw");
}

void draw(){
if(a==0){
welcome();
}
else{
initialize();
judge();
}

}

void welcome(){
background(img1);
noFill();

textFont(font1);
textSize(70);
textAlign(CENTER);
fill(#FFFFFF);
text("WELCOME",1000,280);

text("STATs About 4th Student Canteen",860,200);

textFont(font1);
textSize(40);
textAlign(CENTER);
fill(#FFFFFF);
text("Press to continue",1200,350);
text("Powered by 5142029009_YuJiaQi",250,50);

if (mousePressed){
      a = 1;
    }
}

void initialize(){
background(#FFF0D8);

textFont(font1);
textSize(40);
textAlign(LEFT);
fill(#523302);
text("MORE Stats about people(Click this)",40,80);

textFont(font1);
textSize(90);
textAlign(RIGHT);
fill(#523302);
text("Where do people going to?",1340,180);
text("(Percentage)",1340,280);

if(mouseX>=30 && mouseX<=430 &&mouseY>=50 &&mouseY<= 110){
noFill();
  stroke(#523302);
rect(30,42,400,54,5);

if(mousePressed){
b = 1;
}
}
 int n = 1;
for(int i = 0;i<23;i += 1){
if(n == 1){
n +=1;
}
else{
  n -= 1;
}
  noFill();
stroke(#C14D00);
rect(59+56*i,800,56,-numbers[i]);
textFont(font1);
textSize(30);
textAlign(CENTER);
fill(#C14D00);
text(name[i],87+56*i,790+50*n);
text(percentage[i],87+56*i,790-numbers[i]);
}
}

void judge(){
if(b == 1){
page1();
judgePage1();
}
if(b == 0){
initialize();
}
}

void page1(){
drawPage1();
}