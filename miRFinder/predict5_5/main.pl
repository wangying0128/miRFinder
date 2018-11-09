#perl main.pl test_1.txt result1.txt result2.txt
#model name chara_svm.txt.scale.model
#!/usr/bin/perl -wl
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
#$out_file_1=$ARGV[1];
#open OUT_1, ">$out_file_1"
#         or die "Can not open $output_file : $!";

if(system("perl main1.pl $input_file_1 chara_svm_0.txt.scale.model  result0.txt result00.txt result000.txt miRNA1_rev_0.txt")){
	print "Fatal Error : in 1_get_test.pl\n";
	exit(1);
}
if(system("perl main1.pl $input_file_1 chara_svm_1.txt.scale.model  result1.txt result11.txt result111.txt miRNA1_rev_1.txt")){
	print "Fatal Error : in 2_get_train.pl\n";
	exit(1);
}
if(system("perl main1.pl $input_file_1 chara_svm_2.txt.scale.model  result1.txt result22.txt result222.txt miRNA1_rev_2.txt")){
	print "Fatal Error : 3_negative.pl\n";
	exit(1);
}
if(system("perl main1.pl $input_file_1 chara_svm_3.txt.scale.model  result3.txt result33.txt result333.txt miRNA1_rev_3.txt")){
	print "Fatal Error : in 4444_get_posi.pl\n";
	exit(1);

}
if(system("perl main1.pl $input_file_1 chara_svm_4.txt.scale.model  result4.txt result44.txt result444.txt miRNA1_rev_4.txt")){
	print "Fatal Error : in 5_chara.pl\n";
	exit(1);

}
if(system("perl main1.pl $input_file_1 chara_svm_5.txt.scale.model  result5.txt result55.txt result555.txt miRNA1_rev_5.txt")){
	print "Fatal Error : in 5_chara.pl\n";
	exit(1);

}

system("perl 2_get_result.pl result00.txt result11.txt result22.txt result33.txt result44.txt  result55.txt result66.txt");
system("perl 99_result_1.pl result66.txt test_1.txt.str test_1.txt result.txt");
system("rm -f str.txt");
system("rm -f test1_chara_svm.txt.scale");

system("rm -f result0.txt");
system("rm -f result00.txt");
system("rm -f result000.txt");
system("rm -f result1.txt");
system("rm -f result11.txt");
system("rm -f result111.txt");
system("rm -f result2.txt");
system("rm -f result22.txt");
system("rm -f result222.txt");
system("rm -f result3.txt");
system("rm -f result33.txt");
system("rm -f result333.txt");
system("rm -f result4.txt");
system("rm -f result44.txt");
system("rm -f result444.txt");
system("rm -f result5.txt");
system("rm -f result55.txt");
system("rm -f result555.txt");

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

system("rm -f miRNA1_rev_0.txt");
 system("rm -f miRNA1_rev_1.txt");
system("rm -f miRNA1_rev_2.txt");
system("rm -f miRNA1_rev_3.txt");
system("rm -f miRNA1_rev_4.txt");
system("rm -f miRNA1_rev_5.txt");
