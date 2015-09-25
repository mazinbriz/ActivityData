# ActivityData
Human Activity Recognition Using Smartphones - Tidy data set


The files and logical groupings of the information are:
  Labels.data  activity_labels       subject                 features          test.data
  y_group.txt  activity_labels.txt   subject_group.txt       features.txt      x_group.txt
  
  activity_id  activity_id           (linked by row number)  feature id        columnn for each feature
               activity_name         subject_id              feature name      

  1 var        2 var                 1 var                   2 vars              561 vars
               6 obs                                         561 obs
  2947 obs (test)                     2947 obs (test)                            2947 obs (test)
  7352 obs (train)                    7352 obs (train)                           7352 obs (train)

## Instructions to read the tidy data file
### upload your data set as a txt file created with write.table() using row.name=FALSE