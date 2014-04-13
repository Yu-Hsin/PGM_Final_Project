make clean
make

rm -f model
rm -f model.output.txt

#rnn model is trained here
#time ./rnnlm -train train -valid valid -rnnlm model -hidden 15 -rand-seed 1 -debug 2 -class 100 -bptt 0 -bptt-block 10 -factor 300 -domain 1 -binary 

time ./rnnlm -train train -valid valid -rnnlm model -hidden 15 -rand-seed 1 -debug 2 -class 100 -bptt 0 -bptt-block 10 -direct-order 0 -factor 15 -domain 1 -train_domain_file train_domain_file -valid_domain_file valid_domain_file  -direct 0 -binary 

time ./rnnlm -rnnlm model  -test_domain_file test_domain_file -test test 
# -independent 1

