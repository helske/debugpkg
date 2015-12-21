#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;

// [[Rcpp::export]]
NumericMatrix inv(const arma::mat& X) {
  // this works fine
  arma::mat res = arma::inv(X);
  return wrap(res);
}


// [[Rcpp::export]]
NumericMatrix inv_sympd(const arma::mat& X) {
  // this gives errors in valgrind
  arma::mat res = arma::inv_sympd(X);
  return wrap(res);
}