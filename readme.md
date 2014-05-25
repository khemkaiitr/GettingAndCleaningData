### This file contains the description of the steps taken during the analysis of UCI HAR Dataset. In the following lines, we will go through the steps of the run_analysis.R script
============================================================================================================================

* Step1: Download the data zip file from the server and set the working directory to the desktop. On the desktop, it extracts the file and folders from the zip dataset. As this process is time consuming, the code will also check if the file has been already downloaded. If the file has been downloaded this part is skipped.
* Step2: Load all the relevant datafiles using read.table command. In detail, all the training and test data set is loaded in the workspace (I am not including Interior signal subfolders as it is not needed for this analysis). Moreover, we also load the features file, subject files to use it in further analysis.
* Step3: After the data is loaded, all the data is combined in one dataset. First all the training data are fused in columuns and the test data are fused below the training data in rows. The last columns contains the corresponding activity labels and subject numbers.
* Step4: Activity measures containing mean and std deviation of the datasets is taken out. I am not including mean frequency meausres as I am more interested in mean and std deviation of activity measures by acclearometer or gyrometer during jerk or normal motion. In total we end up with 68 columns where 2 columns in the end corresponds to the activity labels and subject numebrs.
* Step5: As the activity labels were given in numbers, we change it to the corresponding descriptive activity labels.
* Step6: Different measures of activity are reformatted and the headers are changed in this step. The new format contains segment(1).segment(2).segment(3) etc. where segment(1) is time or freq measuremnts, segment(2) is body or gravity measures, segment(3) is acc or gyro mesures, segment(4) is norm (normal) or Jerk motion, segment(5) is mean or std deviation of the measurement and the last optional is x,y,x direction of the measurement.

#### The style guide that I used for the variable naming convention is http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml. The sole difference I found is that use of periods in names is allowed, versus course guidelines.

* Step7: Save the tidy dataset.
* Step8: Rearrange the obtained tidy dataset to get the activity measures of each subject for each of the activity labels. Once done, get the mean of the activity type for each subject. The dataset is also saved in separate file.

### -------- (c) Saurabh Khemka
