int blockSize = 100;


void setup() {
  size(500, 500);
}

void draw(){
  
  for(int i = 0; i < width; i += 100) {
    
    horizontal(i, 0);
    horizontal(i, 100);
    horizontal(i, 200);
    horizontal(i, 300);
    horizontal(i, 400);
  
  }
  
  
  vertical(200, 200);
 
  
  //diagonalLToR(400);
  //diagonalRToL(100, 0);
}




// code for drawing blocks

void horizontal(int x, int y){
  int offSet;
  offSet = y;
  for (int i = offSet; i < blockSize+offSet; i += 5) {
      line(0+x, i, blockSize+x, i);
  }
}

void vertical(int x, int y) {
  int offSet;
  offSet = x;
  for (int i = offSet; i < blockSize+offSet; i+= 5) {
    line(i, 0+y, i, blockSize+y);
  }
}



void diagonalRToL(int x, int y){
  int offSet;
  offSet = x + y;
  for (int i = offSet; i < blockSize+offSet; i += 5) {
        line(offSet,i,i,blockSize); // upper
        //line(i, offSet+blockSize,  offSet+blockSize, i); // lower
    }
}

void diagonalLToR(int num){
   int offSet;
  offSet = num;
  for (int i = offSet; i < blockSize+offSet; i += 5) {
      line(i, 0, blockSize, blockSize - i); // upper
      line(0, i, blockSize - i, blockSize); // lower
  }
}

