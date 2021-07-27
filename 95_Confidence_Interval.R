#Calculate a 95% CI for the expected value of y at 22.4 and 30.4
predict(object = SLR.model, newdata = data.frame(c(22.4, 30.4)), interval =
          "confidence", level = 0.95)
#Calculate a 95% co interval of y at 22.4 and 30.4
predict(object = SLR.model, newdata = data.frame(c(22.4, 30.4)), interval = "prediction",
        level = 0.95)