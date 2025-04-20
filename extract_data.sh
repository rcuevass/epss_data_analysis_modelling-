# curl https://epss.empiricalsecurity.com/epss_scores-2023-03-02.csv.gz --output sample_file.csv.gz
curl https://epss.empiricalsecurity.com/epss_scores-2025-04-19.csv.gz --output sample_file.csv.gz
cp sample_file.csv.gz epss_scores_test.csv.gz
gunzip epss_scores_test.csv.gz
# remove first line of file
sed -i 1d epss_scores_test.csv
## add column with date
sed 's/\s*$/ 2023_04_01/' epss_scores_test.csv >> epss_scores_test_date.csv
# Rename columns date name ....
sed -i '1s/2023_04_01/date' epss_scores_test_date.csv
