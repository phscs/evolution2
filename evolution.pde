ArrayList<Goodie> allGoodies = new ArrayList<Goodie>();
ArrayList<Baddie> allBaddies = new ArrayList<Baddie>();

void setup(){
	size(600, 600);
	
	for (int i=0; i<10; i++){
		Goodie g = new Goodie();
		allGoodies.add(g);
		
		Baddie b = new Baddie();
		allBaddies.add(b);
	};
};

void draw(){
	background(255);
	
	for (int i=0; i<allGoodies.size(); i++){
		allGoodies.get(i).update();
		allGoodies.get(i).display();
	};
	
	for (int i=0; i<allBaddies.size(); i++){
		allBaddies.get(i).update();
		allBaddies.get(i).display();
	};
};

class Goodie{
	float x;
	float y;
	float speed;
	float strength;
	float health;
	
	Goodie(){
		x = random(width);
		y = random(height);
		speed = random(0, 100);
		strength = random(0, 100);
		health = random(0, 100);
	};
	
	void update(){};
	
	void display(){
		fill(0, 255, 0);
		noStroke();
		ellipse(this.x, this.y, width/40, width/40);
	};
	
	void attack(){};
};

class Baddie{
	float x;
	float y;
	float speed;
	float strength;
	float health;
	
	Baddie(){
		x = random(width);
		y = random(height);
		speed = random(0, 100);
		strength = random(0, 100);
		health = random(0, 100);
	};
	
	void update(){};
	
	void display(){
		fill(255, 0, 0);
		noStroke();
		rect(this.x, this.y, width/40, width/40);
	};
	
	void attack(){};
};
