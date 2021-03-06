\name{fitMeasures}
\alias{fitMeasures}
\alias{fitmeasures}
\alias{fitMeasures,lavaan-method}
\alias{fitmeasures,lavaan-method}
\alias{fitindices}
\title{Fit Measures for a Latent Variable Model}
\description{
This function computes a variety of fit measures to assess the global
fit of a latent variable model.}
\usage{
fitMeasures(object, fit.measures = "all", baseline.model = NULL, 
            output = "vector", ...)
fitmeasures(object, fit.measures = "all", baseline.model = NULL, 
            output = "vector", ...)
}
\arguments{
\item{object}{An object of class \code{\linkS4class{lavaan}}.}
\item{fit.measures}{If \code{"all"}, all fit measures available will be
returned. If only a single or a few fit measures are specified by name,
only those are computed and returned.}
\item{baseline.model}{If not NULL, an object of class
\code{\linkS4class{lavaan}}, representing a user-specified baseline model.
If a baseline model is provided, all fit indices relying on a
baseline model (eg. CFI or TLI) will use the test statistics from
this user-specified baseline model, instead of the default baseline model.}
\item{output}{Character. If \code{"vector"} (the default), display the
output as a named (lavaan-formatted) vector. If \code{"matrix"}, display
the output as a 1-column matrix. If \code{"text"}, display the
output using subsections and verbose descriptions. The latter is used
in the summary output, and does not print the chi-square test by default.
See the examples how to add the chi-square test in the output.}
\item{...}{Further arguments passed to or from other methods. Not currently
used for \code{lavaan} objects.}
}
\value{
A named numeric vector of fit measures.
}
%\details{
%The following fit measures are available:
%
%}
\examples{
HS.model <- ' visual  =~ x1 + x2 + x3
              textual =~ x4 + x5 + x6
              speed   =~ x7 + x8 + x9 '

fit <- cfa(HS.model, data=HolzingerSwineford1939)
fitMeasures(fit)
fitMeasures(fit, "cfi")
fitMeasures(fit, c("chisq", "df", "pvalue", "cfi", "rmsea"))
fitMeasures(fit, c("chisq", "df", "pvalue", "cfi", "rmsea"), 
            output = "matrix")
print(fitMeasures(fit, c("chisq", "df", "pvalue", "cfi", "rmsea"),
                  output = "text"), add.h0 = TRUE)
}
