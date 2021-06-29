# Example Specifying an R environment with a runtime.txt file

RStudio: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/binder-examples/r/master?urlpath=rstudio)

Jupyter+R: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/binder-examples/r/master?filepath=index.ipynb)

This is modified for a demo in the KCNI School from an example template at: https://github.com/binder-examples/r

It is referenced in the KCNI-school-lessons repository

## There are two files in this repo that make this binder compatible

- `runtime.txt`: tells binder what version of R to use ([see more](#specifying-r-version))
- `install.R`: tells binder what R packages to install ([see more](#specifying-packages-with-installr))

### URL addresses for RStudio and Shiny environments

The only other thing your need to do is add a binder URL to your README.md so your people can navigate to your binder instance in their browser.

*The URL you tell participants to navigate too will determine what they see.*

All/most binder instances have both jupyter and rstudio installed in the environment. However, the "default" view when you look at binder is to open jupyter...

```
http://mybinder.org/v2/gh/<github-user>/<github-repo>/<branch>
```
  - For this repo this is: http://mybinder.org/v2/gh/krembilneuroinformatics/example-r-repo/HEAD

BUT we would rather see the rstudio verion.. 

- For the RStudio environment, we must add the following at the end of the URL: `?urlpath=rstudio`

  - Example: http://mybinder.org/v2/gh/krembilneuroinformatics/example-r-repo/HEAD?urlpath=rstudio
  

## specifying R version

Binder supports using R and RStudio, with libraries pinned to a specific 
snapshot on [MRAN](https://mran.microsoft.com/documents/rro/reproducibility).

**Note:** We recommend to follow [r-conda](https://github.com/binder-examples/r-conda) instead. Especially if you want to use a specific version of R or need faster build times.

**Note:** Another alternative is to use the [holepunch package for R](https://karthik.github.io/holepunch/articles/getting_started.html).

### Requirements and suggestions

You need to have a `runtime.txt` file that is formatted like:

```
r-<YYYY>-<MM>-<DD>
```

where YYYY-MM-DD is a snapshot at MRAN that will be used for installing 
libraries. In this line, you can request a [specific 
version of R](https://github.com/jupyter/repo2docker/pull/772#issue-313426641). To do this list the version between the 'r' 
and the year, as in `r-4.0-2021-06-21`. 


## Specifying packages with `install.R`

To install R libraries (or packages) you can add an [`install.R`](install.R) file that specifies one library to install per line.

Both [RStudio](https://www.rstudio.com/) and [IRKernel](https://irkernel.github.io/)
are installed by default, so you can use either the Jupyter notebook interface or
the RStudio interface.

It is also possible to load Shiny apps. An example of a [Shiny app](https://github.com/binder-examples/r/tree/master/bus-dashboard).

## Final note

To clean things up, you can move `install.R` and `runtime.txt` info a hidden directory `.binder` and everything still works the same. :)