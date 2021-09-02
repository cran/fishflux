## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width=8, fig.height=6
)

## ---- message=TRUE, echo=TRUE-------------------------------------------------
# example
fishflux::name_errors("Zebrazoma scopas")

## ----message=TRUE,echo=TRUE---------------------------------------------------
# example
fishflux::find_lw("Zebrasoma scopas", mirror = "se")

## ----message=FALSE,echo=TRUE--------------------------------------------------
# example
# The option otolith=TRUE filters out sources that used otoliths for the estimation of growth parameters
fishflux::growth_params("Sargocentron microstoma", otolith = FALSE)

## ----cache=TRUE,results='hide',message=FALSE----------------------------------
# example
zebsco <- fishflux::model_parameters("Zebrasoma scopas", family = "Acanthuridae", temp = 27, mirror = "se")
## Here we set the temperature at 27 degrees as an example, this the average sea temperature in Moorea, French Polynesia

## -----------------------------------------------------------------------------
print(zebsco)

## ---- message=FALSE-----------------------------------------------------------
## load the example parameters for Zebrasoma scopas, a list
param_zebsco <- fishflux::param_zebsco
## Run the model, specifying the target length(s) and the parameter list
model <- fishflux::cnp_model_mcmc(TL = 5:20, param = param_zebsco)

## -----------------------------------------------------------------------------
fishflux::extract(model, c("Fn","Fp"))

## ---- message=FALSE, warning=FALSE--------------------------------------------
## limitation
fishflux::limitation(model)
## Plot one variable:
fishflux::plot_cnp(model,  y = "Fp", x = "tl", probs = c(0.5, 0.8, 0.95))
## Plot multiple variables:
fishflux::plot_cnp(model,  y = c("Fp", "Gp", "Ip", "Wp"), x = "tl", probs = 0.5)

## ---- message=FALSE-----------------------------------------------------------
fishflux::sensitivity(TL = 10, param = list(k_sd = 0.2, Dn_sd = 0.2, Dc_sd = 0.1),
            par = c("k_sd","Dn_sd","Dc_sd"), 
            out = c("Ic", "In", "Ip", "Gc"))

