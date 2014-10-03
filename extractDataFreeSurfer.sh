
##Para cada sujeito
freeSurferHome="/usr/local/freesurfer"

export FREESURFER_HOME=$freeSurferHome
source $FREESURFER_HOME/SetUpFreeSurfer.sh

fileSujeitos=$1

###to get aseg, wmparc (volume)
asegstats2table --subjectsfile $fileSujeitos --tablefile ./asegVolume.txt --all-segs
asegstats2table --subjectsfile $fileSujeitos --tablefile ./wmparcVolume.txt --stats wmparc.stats --all-segs

###to get aseg, wmparc (meanCurv)
asegstats2table --subjectsfile $fileSujeitos --tablefile ./asegmeanCurv.txt -m mean --all-segs
asegstats2table --subjectsfile $fileSujeitos --tablefile ./wmparcmeanCurv.txt --stats wmparc.stats -m mean --all-segs

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./aparcAreaLH.txt --hemi lh

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./aparcAreaRH.txt --hemi rh

###to get apparc (greyVol)

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./aparcVolumeLH.txt --hemi lh -m volume

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./aparcVolumeRH.txt --hemi rh -m volume

###to get apparc (thickness)

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./aparcThicknessLH.txt --hemi lh -m thickness

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./aparcThicknessRH.txt --hemi rh -m thickness

###to get apparc  (meanCurv)

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./aparcMeanCurvRH$.txt --hemi rh -m meancurv

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./aparcMeanCurvLH.txt --hemi lh -m meancurv

##a partir daqui não esquecer de fazer os lobes:createLobesAnnotation

###to get lobes table (area)

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./lobesAreaRH.txt -p lobes --hemi rh

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./lobesAreaLH.txt -p lobes --hemi lh

###to get lobes table (volume)

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./lobesVolumeRH.txt -p lobes --hemi rh -m volume

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./lobesVolumeLH.txt -p lobes --hemi lh -m volume

###to get lobes table (thickness)

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./lobesThicknessRH.txt -p lobes --hemi rh -m thickness

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./lobesThicknessLH.txt -p lobes --hemi lh -m thickness

###to get lobes table (meanCurv)

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./lobesmeanCurvRH.txt -p lobes --hemi rh -m meancurv

aparcstats2table --subjectsfile $fileSujeitos --tablefile ./lobesmeanCurvLH.txt -p lobes --hemi lh -m meancurv
