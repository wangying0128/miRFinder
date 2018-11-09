# miRFinder
Mature miRNA identification
miRFinder operating requirement:

1.The tools folder of software package includes:
ViennaRNA-1.8.5,libsvm-3.20

2.data
test_1.txt is the test file. It includes 100 pre-miRNAs.

3.usage of miRFinder 
step 1: Please provide the pre-miRNA for mature miRNA predicting.The data format is shown as follow:
>hsa-mir-601 16 37
UGCAUGAGUUCGUCUUGGUCUAGGAUUGUUGGAGGAGUCAGAAAAACUACCCCAGGGAUCCUGAAGUCCUUUGGGUGGA
>hsa-mir-3129 9 30 47 68
GUACUUGGGCAGUAGUGUAGAGAUUGGUUUGCCUGUUAAUGAAUUCAAACUAAUCUCUACACUGCUGCCCAAGAGC
step 2:
#cd ../miRFinder/miRFinder/predict5_5/
perl main.pl test_1.txt result1.txt result2.txt(taken test_1.txt as example)
#cd ../miRFinder/miRFinder/predict5_3/
perl main.pl test_1.txt result1.txt result2.txt(taken test_1.txt as example)
#cd ../miRFinder/miRFinder/predict3_5/
perl main.pl test_1.txt result1.txt result2.txt(taken test_1.txt as example)
#cd ../miRFinder/miRFinder/predict3_3/
perl main.pl test_1.txt result1.txt result2.txt(taken test_1.txt as example)


Results:
result.txt in predict5_5,predict5_3,predict3_5 and predict3_3 is the identification results.
