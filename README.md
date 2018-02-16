# GSAFisherComb

Package to perform a GSAfisher test for a gene-set analysis


# Install package
This package could be downloaded and istalled:
```{r,message=FALSE}
install.packages("GSAFisherComb_1.0.tar.gz")
library(GSAFisherComb)
```

Or, as it is in Git Hub:
```{r,eval=FALSE}
library(devtools)
install_git("https://github.com/Merguerrero/GSAFisherComb")
```

# Load GSA data

To perform the test an object of class `GSAfisher` or `GSAfisher.mult`. In this package there is test data that you can load and try this functions. As we are working with pvalues, this functions accept as input a vector, a list of vectors or a matrix.  

```{r}
data("pvales.totest")
pvales.totest[1:20]
GSA_vector<-loadGSAfisher(pvales.totest)
GSA_vector
```

Load list of vectors:

```{r}
data("pvales.mult")
GSA_list<-loadGSAfisher(pvales.mult)
```

Load matrix:

```{r}
data("pvales.matrix")
GSA_matrix<-loadGSAfisher(pvales.matrix)
```

# GSAfisher test

Once the data is loaded, with the function `GSAfisher` the test is done. The output of the test differ with the class of the data.

```{r}
res.Gsa<-GSAfisher(GSA_vector)
res.Gsa
```

For lists:
```{r}
res.Gsa.list<-GSAfisher(GSA_list)
res.Gsa.list
```

For matrix:
```{r}
res.Gsa.matrix<-GSAfisher(GSA_matrix)
res.Gsa.matrix
```

# Summary of the test

To see the result of the test in a ordered way the function summary prints some information:

```{r}
summary(res.Gsa)
```

# Plot of the result 

To see if the result of the `GSAfisher` of the class GSAfisher.mult follows a chisquare distribution.

```{r}
plot(res.Gsa.list)
```

# Hist of the result

If we are interested in the distribution of the result, an histogram with the density can also be plotted.

```{r}
hist(res.Gsa.matrix)
```




## Author

* **Mercedes Guerrero** - *Initial work* - [Merguerrero](https://github.com/Merguerrero)

## License

This project is licensed under the GPL 3.0 License - see the [LICENSE.md](LICENSE.md) file for details

