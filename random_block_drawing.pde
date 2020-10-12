int board[][];

int offSet;
int blockWidth = 100;
int blockHeight = 100;

void setup() {
  size(500, 500);
}

void draw(){
  vertical(100);
  horizontal();
}

void vertical(int num) {
  offSet = offSet + num;
  for (int i = 0; i < blockWidth; i+= 5) {
    line(i+offSet, 0+offSet, i+offSet, blockHeight+offSet);
  }
}

void diagonalRightToLeft(){
  for (int i = 0; i < blockWidth; i += 5) {
        line(blockWidth - i, 0, 0, blockHeight - i); // upper
        line(blockWidth, i,  i, blockHeight); // lower
    }
}

void diagonalLeftToRight(){
  for (int i = 0; i < blockWidth; i += 5) {
      line(i, 0, blockWidth, blockHeight - i); // upper
      line(0, i, blockWidth - i, blockHeight); // lower
  }
}

void horizontal(){
  for (int i = 0; i < blockWidth; i += 5) {
      line(0, i, blockWidth, i);
  }
}
