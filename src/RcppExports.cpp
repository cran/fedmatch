// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// wgt_jaccard
Rcpp::List wgt_jaccard(Rcpp::StringVector corpus, Rcpp::NumericVector wgts, Rcpp::StringVector x, Rcpp::StringVector y, int nthreads);
RcppExport SEXP _fedmatch_wgt_jaccard(SEXP corpusSEXP, SEXP wgtsSEXP, SEXP xSEXP, SEXP ySEXP, SEXP nthreadsSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::StringVector >::type corpus(corpusSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type wgts(wgtsSEXP);
    Rcpp::traits::input_parameter< Rcpp::StringVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< Rcpp::StringVector >::type y(ySEXP);
    Rcpp::traits::input_parameter< int >::type nthreads(nthreadsSEXP);
    rcpp_result_gen = Rcpp::wrap(wgt_jaccard(corpus, wgts, x, y, nthreads));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_fedmatch_wgt_jaccard", (DL_FUNC) &_fedmatch_wgt_jaccard, 5},
    {NULL, NULL, 0}
};

RcppExport void R_init_fedmatch(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}