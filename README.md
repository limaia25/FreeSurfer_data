# FreeSurfer data
You can extract out data from FreeSurfer preprocessing (see Wiki)

### To create the annotation of lobes 
This script creates cortical parcelattion. See [[here|https://surfer.nmr.mgh.harvard.edu/fswiki/CorticalParcellation]] _createLobesAnnotation_ before.
```bash
extractDataFreeSurfer.sh <fileSubjects>


### To extract numeric data like volumes, greyVolumes, thickness and meanCurv
It is necessary execute _createLobesAnnotation_ before.
```bash
extractDataFreeSurfer.sh <fileSubjects>
```

### To move the file from each subject
If necessary, change the file inside: by default is _orig.mgz_
```bash
moveSomeFileFromlistSubjects.sh <estudoOutDir>
```

