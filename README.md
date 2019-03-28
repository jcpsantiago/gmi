[![Travis](https://img.shields.io/travis/jcpsantiago/gmi.svg)](https://travis-ci.org/jcpsantiago/gmi)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/jcpsantiago/gmi?branch=master&svg=true)](https://ci.appveyor.com/project/jcpsantiago/gmi)
[![Coverage status](https://codecov.io/gh/jcpsantiago/gmi/branch/master/graph/badge.svg)](https://codecov.io/github/jcpsantiago/gmi?branch=master)
![License](https://img.shields.io/badge/license-MIT-blue.svg?longCache=true)

# gmi

`gmi` (**g**lucose **m**etabolism **i**ndices) is an R package that bundles popular insulin sensitivity indexes, so you don't need an extra excel
sheet or to copy-paste a function.

You can install it with
``` r
# install.packages("devtools")
devtools::install_github("jcpsantiago/gmi")
```
## Indexes

Comparisons between each index and the hyperinsulinaemic-euglycaemic clamp are discussed in [Otten et al., 2014](https://www.ncbi.nlm.nih.gov/pubmed/24891021)

The following indices are currently implemented:

Fasting indices:
* [FIRI](http://www.thelancet.com/journals/lancet/article/PIIS0140-6736(96)90126-9/fulltext)
* [HOMA-IR](http://link.springer.com/article/10.1007%2FBF00280883)
* [QUICKI](https://academic.oup.com/jcem/article-abstract/85/7/2402/2851441/Quantitative-Insulin-Sensitivity-Check-Index-A?redirectedFrom=fulltext) (both original and revised)

OGTT indices:
* [Cederholm](http://www.sciencedirect.com/science/article/pii/016882279090040Z)
* [Gutt (ISI<sub>0,120</sub>)](http://www.sciencedirect.com/science/article/pii/S0168822799001163)
* [Matsuda (Composite Index)](http://mmatsuda.diabetes-smc.jp/english.html)
* [NEFA-ISI](http://link.springer.com/article/10.1007%2Fs00592-016-0930-5)
* [Stumvoll-ISI](http://care.diabetesjournals.org/content/23/3/295)
* [Stumvoll-MCR](http://care.diabetesjournals.org/content/23/3/295)


## TODO

* Implement [OGIS](http://webmet.pd.cnr.it/ogis/index.php).
