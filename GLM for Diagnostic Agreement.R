
library(lme4)
library(haven)

#Load Data (replace "diagnostic_agreement_data.dta" with your file path)
# expected format: STATA file in long form, with columns for participantid, method, time, rater, tooth number (FDI), tooth surface, ICDAS value, and disease thresholds.
#disease thresholds: initial caries- ICDAS dichtomised >=01, moderate caries- ICDAS dichtomised >=03, extensive caries- ICDAS dichtomised >=05, 

data <- read_dta("diagnostic_agreement_data.dta") # 

View(data)

control = glmerControl(optimizer = "bobyqa")



################## Initial Disease Threshold

#General Linear mixed model with binomial distribution for comparison between methods (VE, OSA without FL and OSA with FL)

fit <- glmer(init_caries ~ as.factor(method) + (1|participantid) + (1|tooth), data = data, family = binomial(), control = control)
summary(fit)

# Including presence of enamel defects as a co variate 

fit <- glmer(init_caries ~ as.factor(method) + (1|participantid) + (1|tooth) + (mih_value), data = data, family = binomial(), control = control)
summary(fit)

################## Moderate Disease Threshold

#General Linear mixed model with binomial distribution for comparison between methods (VE, OSA without FL and OSA with FL)

fit <- glmer(mod_caries ~ as.factor(method) + (1|participantid) + (1|tooth), data = data, family = binomial(), control = control)
summary(fit)

# Including presence of enamel defects as a co variate

fit <- glmer(mod_caries ~ as.factor(method) + (1|participantid) + (1|tooth) + (mih_value), data = data, family = binomial(), control = control)
summary(fit)

################## extensive Disease Threshold

#General Linear mixed model with binomial distribution for comparison between methods (VE, OSA without FL and OSA with FL)

fit <- glmer(ext_caries ~ as.factor(method) + (1|participantid) + (1|tooth), data = data, family = binomial(), control = control)
summary(fit)

# Including presence of enamel defects as a co variate

fit <- glmer(ext_caries ~ as.factor(method) + (1|participantid) + (1|tooth) + (mih_value), data = data, family = binomial(), control = control)
summary(fit)

############## All thresholds, comparing on-screen assessment methods to each other 

#General Linear mixed model with binomial distribution for comparison between methods (OSA without FL and OSA with FL), investigates the impact of rater, timing of examination and enamel defects. 

fit <- glmer(init_caries ~ as.factor(method) + (rater) + (time) + (1|participantid) + (1|tooth) + (mih_value), data = data, family = binomial(), control = control)
summary(fit)

fit <- glmer(mod_caries ~ as.factor(method) + (rater) + (time) + (1|participantid) + (1|tooth) + (mih_value), data = data, family = binomial(), control = control)
summary(fit)

fit <- glmer(ext_caries ~ as.factor(method) + (rater) + (time) + (1|participantid) + (1|tooth) + (mih_value), data = data, family = binomial(), control = control)
summary(fit)



