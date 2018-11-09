#perl main.pl test_1.txt result1.txt result2.txt
#model name chara_svm.txt.scale.model
#!/usr/bin/perl -wl
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$out_file_1=$ARGV[1];
open OUT_1, ">$out_file_1"
          or die "Can not open $output_file : $!";
$out_file_2=$ARGV[2];
open OUT_2, ">$out_file_2"
          or die "Can not open $output_file : $!";

if(system("perl 1_negative.pl $input_file_1 test1_negative.txt test_1.txt.str negative_num.txt")){
	print "Fatal Error : in 1_negative.pl\n";
	exit(1);
}

if(system("perl 3_get_posi.pl test1_negative.txt test1_negative1.txt")){
	print "Fatal Error : in 3_get_posi.pl\n";
	exit(1);

}
if(system("perl 5_chara.pl test1_negative1.txt test1_chara.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 6_libsvm_format.pl test1_chara.txt test1_chara_svm.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
}

if(system("perl 7_predict.pl test1_chara_svm.txt test1_miRNA1.txt")){
       print "Fatal Error : 7_predict.pl\n";
       exit(1);
}
if(system("perl 8_reverse.pl test1_miRNA1.txt  miRNA1_rev.txt")){
       print "Fatal Error : in 8_reverse.pl\n";
       exit(1);
}
if(system("perl 9_result.pl miRNA1_rev.txt $input_file_1 test_1.txt.str test1_negative1.txt negative_num.txt $out_file_1  $out_file_2")){
       print "Fatal Error : 9_result.pl\n";
       exit(1);
}


system("rm -f str.txt");
system("rm -f test1_chara_svm.txt.scale");


system("rm -f result2.txt");
system("rm -f plot1.txt");
system("rm -f test1_1.txt.str");
system("rm -f test1_2.txt");
system("rm -f test1_1.txt");
system("rm -f test1_1.txt.3.txt");
system("rm -f test1_1.txt.3.txt.str");
system("rm -f test1_1.txt.5.txt");

system("rm -f test1_1.txt.5.txt.str");
system("rm -f test1_1.txt.9.txt");
system("rm -f test1_1.txt.9.txt.str");
system("rm -f test1_1.txt.134.txt");
system("rm -f test1_1.txt.134.txt.str");

system("rm -f test1_1.txt.r3.txt");
system("rm -f test1_1.txt.r3.txt.str");
system("rm -f test1_negative.txt");
system("rm -f test_1.txt.str");
system("rm -f negative_num.txt");
system("rm -f test1_negative1.txt");
system("rm -f test1_chara.txt");
system("rm -f test1_chara_svm.txt");
system("rm -f test1_miRNA1.txt");
system("rm -f miRNA1_rev.txt");
