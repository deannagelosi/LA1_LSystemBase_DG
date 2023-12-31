// ExampleLSystem - contains initialization functions
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 30;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// This function returns an initialized LSystem for a "Branching L-System"
LSystem initBranching() {
  // initialize turtle variables
  float moveDist = 60;
  float rotateAngle = 45;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F[-F][+F]");

  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initNatural() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 22.5;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "X";
  
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F-[[X]+X]+F[+FX]-X");
  rules.put('X', "FF");

  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initKoch() {
  // initialize turtle variables
  float moveDist = 5;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F-F-F-F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF-F-F-F-F-F+F");

  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initFass() {
  // initialize turtle variables
  float moveDist = 20;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+XF+F+XF");
  rules.put('X', "X+YF+");
  rules.put('Y', "-FX-Y");

  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// This function returns an initialized LSystem for a "Branching L-System"
LSystem initProbBranching() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 45;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();

  // initialize first "F" rule
  rules.put('D', "F[+F]F[-F]F");
  rules.put('G', "F[+F]F");
  rules.put('H', "F[-F]F");

  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// examples created by @mriveralee

LSystem initSierpinskiTriangle() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 120;
  float scaleFactor = 1;
 // The intial axiom / input string
  String axiom = "F-F-F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F-G+F+G-F");
  rules.put('G', "GG");
  
  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initSierpinskiArrowhead() {
  // initialize turtle variables
  float moveDist = 20;
  float rotateAngle = 60;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "A";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('A', "B-A-B");
  rules.put('B', "A+B+A");
  
  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initKochSnowflake() {
  float moveDist = 10;
  float rotateAngle = 60;
  float scaleFactor = 4;
  
 // The intial axiom / input string
  String axiom = "F";

  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F-F++F-F");
  
  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initFractalTree() {
  float moveDist = 30;
  float rotateAngle = 45;
  float scaleFactor = 10;
  // The intial axiom / input string
  String axiom = "0";

  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('0', "1{0}0");
  rules.put('1', "11");
  
  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initFractalPlant() {
  // initialize turtle variables
  float moveDist = 30;
  float rotateAngle = 25;
  float scaleFactor = 3;
  
 // The intial axiom / input string
  String axiom = "X";

  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('X', "F+[[X]-X]-F[-FX]+X");
  rules.put('F', "FF");
  
  // Create the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}