make clean
make

rm -f model
rm -f model.output.txt

#rnn model is trained here
time ./rnnlm -train train -valid valid -rnnlm model -hidden 15 -rand-seed 1 -debug 2 -class 100 -bptt 1 -bptt-block 10 -direct-order 3 -direct 2 -binary
time ./rnnlm -rnnlm model -test test 
# -independent 1

