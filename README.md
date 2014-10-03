# FreeSurfer data
You can extract out data from FreeSurfer preprocessing (see Wiki)
If FreeSurferHome isn't the default one (_/usr/local/freesurfer/_), change on each file.


### To create the annotation of lobes 
This script creates cortical parcelattion. See [here](https://surfer.nmr.mgh.harvard.edu/fswiki/CorticalParcellation).
```bash
createLobesAnnotation.sh <subject1> <subject2> <subject3> ...
```

### To extract numeric data like volumes, greyVolumes, thickness, meanCurv and areas
It is necessary execute _createLobesAnnotation_ before.
If you don't want every steps executed, go to the file and put them in comment. (See Wiki)
```bash
extractDataFreeSurfer.sh <fileSubjects>
```

### To move the file from each subject
If the file you want to move isn't _orig.mgz_, change on the file.
```bash
moveSomeFileFromlistSubjects.sh <estudoOutDir>
```

