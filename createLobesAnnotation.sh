##Para cada sujeito
freeSurferHome="/usr/local/freesurfer"

export FREESURFER_HOME=$freeSurferHome
source $FREESURFER_HOME/SetUpFreeSurfer.sh


for i in $*; do
subject=$i

mri_annotation2label --outdir $SUBJECTS_DIR/$subject/label --hemi rh --subject $subject

mris_anatomical_stats -a $SUBJECTS_DIR/$subject/label/rh.lobes.annot -f $SUBJECTS_DIR//$subject/stats/rh.lobes.stats $subject rh

mri_annotation2label --outdir $SUBJECTS_DIR/$subject/label --hemi lh --subject $subject

mris_anatomical_stats -a $SUBJECTS_DIR/$subject/label/lh.lobes.annot -f $SUBJECTS_DIR//$subject/stats/lh.lobes.stats $subject lh
done

########################mri_annotation2label --subject $subject --outdir /media/lapsi/lapsi/FreeSurferAntigos/freeSurferWS/$subject/label --hemi rh --lobeStrict lobes
