library(debugpkg)
set.seed(123)
X <- crossprod(matrix(rnorm(25),5,5))
armainv(X)

# R -d "valgrind --tool=memcheck --leak-check=full" --vanilla < valg.R
