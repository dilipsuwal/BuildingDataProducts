Fuel Consumption Based Prediction Application
========================================================
author: Dilip Suwal 
date: 29-Oct-2017
autosize: true
width: 1800
height: 1400

Introduction
========================================================

<small>Fuel consumption based prediction application has been developed using Shiny which is a web application development framework for R by RStudio. The dataset used for this application is mtcars (Motor Trend Car Road Tests) extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models). This application predicts following automobile features based on the Miles/gallone consumptions.</small>

- Horsepower
- Displacement (cu.in.)
- Weight (1000 lbs)

mtcars
========================================================

<small>Following is the summary of Miles per gallone along with Horse Power, Displacement, and Weight automobile fetaures from the mtcars dataset</small> 


```r
summary(mtcars$mpg)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  10.40   15.43   19.20   20.09   22.80   33.90 
```

```r
summary(mtcars$hp)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   52.0    96.5   123.0   146.7   180.0   335.0 
```

```r
summary(mtcars$disp)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   71.1   120.8   196.3   230.7   326.0   472.0 
```

```r
summary(mtcars$wt)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.513   2.581   3.325   3.217   3.610   5.424 
```

Relationship of the three features with MPG
========================================================


```r
par(mfrow = c(3,1)) 
with (mtcars, {
  plot(mpg, hp, main = 'Between mpg and HP', xlim = c(10, 35), ylim = c(50, 500))
  plot(mpg, disp, main = 'Between mpg and Disp', xlim = c(10, 35), ylim = c(50, 500))
  plot(mpg, wt, main = 'Between mpg and wt', xlim = c(10, 35), ylim = c(1, 10))
})
```

![plot of chunk unnamed-chunk-2](BuildingDataProducts_Assignment4-figure/unnamed-chunk-2-1.png)


Steps to Prediction
========================================================

<small> This application has used one slider for setting MPG, three radio buttions to select one of the given automobile features and one check box to enable and disable regression line on the plot. The right side shows the plot and just below is the predicted value. When application starts, MPG is set to 20 Milles/gallone, Horse Power is selected by default and corresponding plot shows up on the right side. In order to predict other than default ones, following steps needs to follow.

- Set desired MPG from the slider 
- Select one of the desired features of automobiles to predict. 
- The graph shows up once a particular fetaure is selected. Just below, predicted value for the selected featue is        displayed based on the mpg selection.
- The regression line can be switced on or off by clicking Show regression line check box </small>


Here are the links to application, presentation and codes.

- Fuel Consumption Based Prediction Shine Application can be located at [<b>Here</b>](https://dsuwal.shinyapps.io/building_data_products_week_4_assignment/)
- All codes can be located at [<b>Here</b>] (https://github.com/dilipsuwal/BuildingDataProducts). Please open it in new window.




