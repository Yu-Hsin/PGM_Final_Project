make clean
make

rm -f model
rm -f model.output.txt

#rnn model is trained here
#time ./rnnlm -train train -valid valid -rnnlm model -hidden 15 -rand-seed 1 -debug 2 -class 100 -bptt 0 -bptt-block 10 -factor 300 -domain 1 -binary 

time ./rnnlm -train train -valid valid -rnnlm model -hidden 15 -rand-seed 1 -debug 2 -class 100 -bptt 0 -bptt-block 10 -direct-order 0 -factor 3735 -domain 1 -direct 0 -binary 

time ./rnnlm -rnnlm model -test test 
# -independent 1

