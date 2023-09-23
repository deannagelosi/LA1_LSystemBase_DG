// ExampleLSystem - contains initialization functions
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// This function returns an initialized LSystem for a "Square based L-System"
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

// DONE: create your own L-System initialization functions
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

LSystem initNew() {
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