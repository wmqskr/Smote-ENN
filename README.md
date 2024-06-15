<h3 align="center">
<p> Predictor of sumoylation sites</p> </h3>

The repository contains scripts for saving built and trained ISUMsite1 models as well as predictor scripts. And a predictor script built using the model.

### Dependency

```
python                  2.7.15
codecs              
csv             
pickle            
Tkinter      
tkFileDialog           
tkMessageBox        
os         
pandas                  0.24.2
scipy                   1.2.3
numpy                   1.16.6
sklearn-learn           1.3.2        
```

Pse-in-One-2.0           http://bliulab.net/Pse-in-One2.0/download/

### Dataset

DR_smote_ENN.csv		Data set 1 file after distance-based residue feature extraction                    and Smote-ENN resampling technique

100seq.txt   Predictor test data, 100 protein sequences are positive samples

775seq.txt   Predictor test data, 775 protein sequences were positive samples

17807seq.txt   Predictor test data, 17,807 protein sequences were negative samples

### Train and Test

#### Train

Save the model ISUMsite1 built on dataset 1

```python
python Train_Model.py
```

#### Test

run predictor of sumoylation sites

```shell
python Visualization_Predictor.py
```
