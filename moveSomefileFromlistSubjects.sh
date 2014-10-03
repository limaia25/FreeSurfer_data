freeSurferHome="/usr/local/freesurfer"

export FREESURFER_HOME=$freeSurferHome
source $FREESURFER_HOME/SetUpFreeSurfer.sh

estudoOutDir=$1
echo "Directoria of output" $estudoOutDir

file="orig.mgz"
echo "ficheiro a copiar" $file

i=1
for p in $*; do
if [ $i -gt 1 ]; then
sujeito=$p

mkdir $estudoOutDir/$sujeito
cp $SUBJECTS_DIR/$sujeito/mri/$file $estudoOutDir/$sujeito/

fi
let i=$i+1
done
