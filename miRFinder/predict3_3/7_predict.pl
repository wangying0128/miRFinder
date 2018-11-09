#perl predict.pl test.txt  model miRNA1.txt
#!/usr/bin/perl -wl
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";


$output_file1=$ARGV[1];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

use Cwd;
my$test_dir=getcwd;
`../../libsvm-3.20/svm-scale -l 0 -u 1 $test_dir/$input_file_1 >$test_dir/$input_file_1."scale" `;

`../../libsvm-3.20/svm-predict -q -b 1 $test_dir/$input_file_1."scale" chara_svm.txt.scale.model $output_file1`;
