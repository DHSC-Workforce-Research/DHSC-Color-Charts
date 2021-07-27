Set DHSC colours and plot data
```{r}
# Set DHSC colours
dhsc_primary_0 <- "#00ad93"
dhsc_primary_5 <- "#99ded4"
# Plot data
ggplot2::ggplot(data = NULL) + 
  geom_col(data = total_both_doses_tbl, aes(age, total_millions, fill = dose), position = "dodge2") +
  scale_fill_manual(name = "", labels = c("1st dose", "2nd dose"),
  values = c(dhsc_primary_5, dhsc_primary_0)) +
  xlab("") +
  ylab("millions") +
  theme_minimal() +
  theme(legend.position = "top", legend.text = element_text(size = 8), legend.key.size = unit(0.4, 'cm')) +
  geom_point(data = percent_dose_both, aes(age, percent_dose_measure, shape = dose), fill = "blue") +
  scale_shape_manual(name = "", labels = c("% vaccinated dose 1", "% vaccinated dose 2"), values = c(5, 23)) +
  scale_y_continuous(limits = c(0, 10), breaks = c(0:10), minor_breaks = NULL, sec.axis = sec_axis(trans = ~ . * 0.1, breaks = seq(0, 1, 0.1), labels = scales::percent_format(1)))
```
