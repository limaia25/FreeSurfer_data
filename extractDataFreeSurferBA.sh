
##Para cada sujeito
freeSurferHome="/usr/local/freesurfer"

export FREESURFER_HOME=$freeSurferHome
source $FREESURFER_HOME/SetUpFreeSurfer.sh

fileSujeitos=$1


###to get BAthreshold (meanCurv)

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./BAThresholdRHMeanCurv.txt -p BA.thresh --hemi rh -m meancurv

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./BAThresholdLHMeancurv.txt -p BA.thresh --hemi lh -m meancurv

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./BAThresholdRHVolume.txt -p BA.thresh --hemi rh -m volume

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./BAThresholdLHVolume.txt -p BA.thresh --hemi lh -m volume

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./BAThresholdRHthickness.txt -p BA.thresh --hemi rh -m thickness

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./BAThresholdLHthickness.txt -p BA.thresh --hemi lh -m thickness

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./BAThresholdRHarea.txt -p BA.thresh --hemi rh

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./BAThresholdLHarea.txt -p BA.thresh --hemi lh
