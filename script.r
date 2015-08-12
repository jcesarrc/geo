input <- readLines('geocol2004.txt', n=1);
data <- read.table("geocol2004.txt", skip=1);

DIMX = dim(data)[1];
DIMY = dim(data)[2];

param <- unlist(strsplit(input," "));
x0 = as.numeric(param[1]);
x1 = as.numeric(param[2]);
y0 = as.numeric(param[3]);
y1 = as.numeric(param[4]);

x = seq(x0,x1,length.out=DIMX);
y = seq(y0,y1,length.out=DIMY);

m2D = merge(x,y);

z = data.frame(matrix(data, nrow=DIMX*DIMY, byrow=T));

resultado = cbind(m2D,z);

write.csv(resultado);
