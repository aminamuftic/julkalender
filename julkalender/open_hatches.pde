

boolean isClickOnBox1 = false;

boolean openedByTimer = false;
int currentOpenHatch = 0;

int MINUTE = 1000 * 60; 

int boxSize = 100;

int boxClicked() {
  int returnValue = 0;
  for(int i = 0; i < myBoxes.length; i++) {
    if (mouseX > myBoxes[i][0] && mouseX < myBoxes[i][0] + boxSize && mouseY > myBoxes[i][1] && mouseY < myBoxes[i][1] + boxSize) {
      returnValue = i + 1;
      openedByTimer = false;
      break;
    }
  }
  
  return returnValue;
}

void mouseClicked () {
  currentOpenHatch = boxClicked();
}

void displayOpenHatch() {
  //checks which hatch is open and displays something from that
  /** Below is equivalent to the switch/case block
    if (currentOpenHatch == 0) {
    } else if (currentOpenHatch == 1) {
      image(tryffel,125,10,550,500);
    } else if (currentOpenHatch == 2) {
      image(tryffel,125,10,550,500);
    }
  **/
  switch (currentOpenHatch) {
    case 0:
    break;
    case 1:
      image(tryffel,125,10,550,500);
      break;
    case 2:
      image(ischoklad,125,10,550,500);
      break;
    case 3:
      image(kottbullar,125,10,550,500);
      break;
    case 4:
      image(revbenspjall,125,10,550,500);
      break;
    case 5:
      image(knack,125,10,550,500);
      break;
  }
}

void openHatchesTimer() {
  int millisSinceAppStart = millis();
  int minutesSinceAppStart = millisSinceAppStart / 1000;
  //int minutesSinceAppStart = millisSinceAppStart / MINUTE;
  
  boolean hasTenMinutesPassed = tenMinutesPassed(minutesSinceAppStart);

  if (minutesSinceAppStart > 0 && hasTenMinutesPassed && currentOpenHatch == 0) {
    currentOpenHatch = day(); //open today's hatch
    openedByTimer = true;
  } else if (minutesSinceAppStart > 0 && currentOpenHatch != 0 && openedByTimer && minutesSinceAppStart % 10 >= 3) {
    currentOpenHatch = 0;
  }
}

boolean tenMinutesPassed(int passedTime) {
  if (passedTime % 10 == 0) {
    return true;
  } else {
    return false;
  }
}