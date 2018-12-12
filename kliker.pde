// Global variables
float radius = 50.0;
int delay = 16;
int Licznik = 0;
int randoma, randomb;
int zycia = 3;
int x, y;
float time = 0;

// Setup the Processing Canvas
void setup(){
  size( 400, 400 );
  strokeWeight( 10 );
  frameRate( 15 );
  PFont fontA = loadFont("courier");
  textFont(fontA, 20); 
  frameRate(10);
}

// Main draw loop
void draw(){
  
  radius = radius + sin( frameCount / 4 );
       background(59, 0, 8);
	fill(255,10,10);
	rect(150+randoma, 150+randomb, 100, 100);
	fill(10, 255, 10);
	text('E14', 190+randoma, 200+randomb);
	text(Licznik, 20, 20);
	text(zycia, 360,20);
	
	if(Licznik >=40){
	//textFont(fontA, 40);
   background(59, 0, 8);	
	fill(10,250,250);
	text('ZDALES E.14 !!!!!', 100,200);
	}
	
	if(zycia <= 0){
	//textFont(fontA, 40);
   background(59, 0, 8);	
	fill(10,250,250);
	text('NIE ZDALES :P', 100,200);
	

	}
		
		time += 0.1;

		if (time >= 0.6){
		   randoma = random(250) - 125;
		   randomb = random(250) - 125;
		   time = 0;
		}
		
}


// Set circle's next destination
void mousePressed(){
x=mouseX;
y=mouseY;
 if((x >= 140+randoma) && (x <= 260+randoma) && (y >= 140+randomb) && (y <= 260+randomb)){
	    // background(59, 0, 8);
	//fill(255,10,10);
	//fill(10,10,255);
	//rect(160, 160, 80, 80);
	//fill(10, 255, 10);
	//text('E14', 190, 200);
	Licznik++;
	if (Licznik == 10) println('Tylko tyle?   ');
		if (Licznik == 20) println('Dawaj jeszcze troche... ');
			if (Licznik == 30) println('O taak jeszcze troche a zdasz...  ');
					if (Licznik == 40) println('Bingo!!!!   ');
   //println(Licznik+'  '+mouseX+'  '+mouseY);
 
 //  randoma = random(200) - 100;
 //  randomb = random(200) - 100;
 //  time = 0;

}else zycia -= 1;

}

var Stop = function(){
	//fill(255,10,10);
	fill(10,10,255);
	rect(150, 150, 100, 100);
	fill(10, 255, 10);
	text('E14', 190, 200);
	
}

var Akcja = function(){
	fill(10,10,255);
	rect(160, 160, 80, 80);
	fill(10, 255, 10);
	text('E14', 190, 200);
	
}

//Autor Kamixowy
//Licence Beerware