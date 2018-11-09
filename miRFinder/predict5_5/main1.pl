#perl main.pl test_1.txt chara_svm_0.txt.scale.model result1.txt result2.txt result3.txt
#model name chara_svm.txt.scale.model
#1046
#!/usr/bin/perl -wl
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$input_file_2=$ARGV[1];
open(IN_2,"$input_file_2")
     or die "can't open the input file:$!";

$out_file_1=$ARGV[2];
open OUT_1, ">$out_file_1"
          or die "Can not open $output_file : $!";
$out_file_2=$ARGV[3];
open OUT_2, ">$out_file_2"
          or die "Can not open $output_file : $!";
$out_file_3=$ARGV[4];
open OUT_3, ">$out_file_3"
          or die "Can not open $output_file : $!";
$out_file_4=$ARGV[5];
open OUT_4, ">$out_file_4"
          or die "Can not open $output_file : $!";

if(system("perl 11_negative.pl $input_file_1 test1_negative.txt test_1.txt.str negative_num.txt")){
	print "Fatal Error : in 1_negative.pl\n";
	exit(1);
}

if(system("perl 33_get_posi.pl test1_negative.txt test1_negative1.txt")){
	print "Fatal Error : in 3_get_posi.pl\n";
	exit(1);

}

if(system("perl 55_chara.pl test1_negative1.txt test1_chara.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 66_libsvm_format.pl test1_chara.txt test1_chara_svm.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
}

if(system("perl 77_predict.pl test1_chara_svm.txt $input_file_2 test1_miRNA1.txt")){
       print "Fatal Error : 7_predict.pl\n";
       exit(1);
}
if(system("perl 88_reverse.pl test1_miRNA1.txt  $out_file_4")){
       print "Fatal Error : in 8_reverse.pl\n";
       exit(1);
}
if(system("perl 99_result.pl $out_file_4 $input_file_1 test_1.txt.str test1_negative1.txt negative_num.txt $out_file_1  $out_file_2 $out_file_3")){
       print "Fatal Error : 9_result.pl\n";
       exit(1);
}





