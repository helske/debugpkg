library(debugpkg)
set.seed(123)
X <- crossprod(matrix(rnorm(25),5,5))

# this works fine
armainv(X)

# this works seeminly fine but valgrind gives an error
armainv_pd(X)

# R -d "valgrind --tool=memcheck --leak-check=full --track-origins=yes" --vanilla < valg.R
