// This is an implementation of an L-System
// Assumes all input vocabulary not given a rule are constants. 
// Though you could give an explicit rule for a constant using "F" --> "F"
// It uses StringBuffer to handle replacing characters in production rules
// in order to avoid wasteful creation of strings and memory problems
// @author: @mriveralee
import java.util.HashMap;

public class LSystem {
  
  // Member Variables for an Instance of this object 
  private String axiom;
  private HashMap<Character, String> rules;
  
  private int iterationNum = 0;
  
  // A temporary buffer for creating a new string
  private StringBuffer currentIterationBuffer = new StringBuffer();

  // The general distance to move
  private float moveDistance = 10;
  
  // The general angle to rotate
  private float rotateAngle = 90;
  
  // How much to scale the drawing of the l-system on each iteration
  private float scaleFactor = 1.0;

  // Constructor for making an Lsystem object with input parameters 
  public LSystem(String axiom, 
                 HashMap<Character, String> rules, 
                 float moveDistance,
                 float rotateAngle,
                 float scaleFactor){
    // Initialize variables for Lsystem
    this.axiom = axiom;
    this.rules = rules;
    this.moveDistance = moveDistance;
    this.rotateAngle = rotateAngle;
    this.scaleFactor = scaleFactor;
    
    // Initialize current iteration (n = 0) to be the axiom
    reset();
  }
  
  // clears the current iteration string
  // to be used only within this class
  private void clearCurrentStringBuffer() {
    // Erases the string buffer holding the current iteration
    if (currentIterationBuffer.length() > 0) {
      currentIterationBuffer.delete(0, currentIterationBuffer.length());
    }
  };
     
  public void reset() {
   iterationNum = 0;
   this.clearCurrentStringBuffer();
   currentIterationBuffer.append(axiom); 
  }
  
  // Returns the current iteration string
  public String getIterationString() {
    return currentIterationBuffer.toString();
  }
  
  public int getIterationNum() {
     return iterationNum; 
  }
  
  public void printState() {
    println("n = ", iterationNum, " : ", currentIterationBuffer);
  }
  
  public void printIterationNumber() {
    println("n = ", iterationNum);
  }
  
  
  // runs 1 iteration, performing the rules for each character
  // on the current string. The result of the replacement is added to the 
  public void iterate() {
    // get a copy of the current iteration string
    String current = this.getIterationString();
    
    // Now clear the current iteration string: currentIterationBuffer
    this.clearCurrentStringBuffer();
    
    // for each character in the current string 
    // do a replace following the rules, or ignore if it is constant
    for (int i = 0; i < current.length(); i++) {
      // Get current character
      Character c = current.charAt(i);

      // If we have a rule for the character,
      // apply it by appending to the iteration string
      if (rules.containsKey(c)) {
        currentIterationBuffer.append(rules.get(c));
      } else {
        // if we don't have a rule, the rule is to use the same character
        currentIterationBuffer.append(c);
      }
    }
     // Increment our iteration after we are done
     iterationNum += 1;
  }
  
  // This function uses the turtle to draw based on each character in the LSystem's 
  // iteration string. It also handles scaling the moveDistance (to keep the image in frame), if desired
  public void drawLSystem(Turtle t) {
    // Get the current iteration numbers
    int iterationNum = this.getIterationNum();

    // Scale the move distance (if needed)
    float dist = this.moveDistance / (scaleFactor * (iterationNum + 1));

    // Get the current iteration string
    String currentIteration = this.getIterationString(); 

    // Loop through each character in the iteration string,
    // and do turtle operations
    for (int i = 0; i < currentIteration.length(); i++) {
      Character c = currentIteration.charAt(i); 
      switch (c) {
        case 'A':
          t.forward(dist);
          break;
        case 'B':
         t.forward(dist);
         break;
        case 'F':
          t.forward(dist); 
          break;
        case 'G':
          t.forward(dist);
          break;
        case 'f':
          t.penUp();
          t.forward(dist);
          t.penDown();
          break; 
        case '+':
          t.right(rotateAngle);
          break;
        case '-':
          t.left(rotateAngle);
          break;
        case '[':
          t.push();
          break;
        case ']':
          t.pop();
          break;
        case '{':
          // for fractal binary tree
          t.push();
          t.left(rotateAngle);
          break;
        case '}':
          // for fractal binary tree
          t.penUp();
          t.pop();
          t.penDown();
          t.right(rotateAngle);
          break;
        case '0':
          // for fractal binary tree, draw leaf at end
          t.forward(dist);
          ellipse(t.getX(), t.getY(), 5, 10);
          break;
        case '1':
          t.forward(dist);
          break;
        case 'X':
          // do nothing
          break;
        default:
          throw new IllegalArgumentException("Missing a drawing operation case for character: " + c.toString());  
       }
    }
  }
}
