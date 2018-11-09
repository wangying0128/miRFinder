#perl 3_get_result.pl miRNA1_rev_0.txt miRNA1_rev_1.txt miRNA1_rev_2.txt miRNA1_rev_3.txt miRNA1_rev_4.txt miRNA1_rev_5.txt result_rev.txt

$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$input_file_2=$ARGV[1];
open(IN_2,"$input_file_2")
     or die "can't open the input file:$!";
$input_file_3=$ARGV[2];
open(IN_3,"$input_file_3")
     or die "can't open the input file:$!";
$input_file_4=$ARGV[3];
open(IN_4,"$input_file_4")
     or die "can't open the input file:$!";
$input_file_5=$ARGV[4];
open(IN_5,"$input_file_5")
     or die "can't open the input file:$!";
$input_file_6=$ARGV[5];
open(IN_6,"$input_file_6")
     or die "can't open the input file:$!";

$output_file1=$ARGV[6];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";


my @result0=<IN_1>;
my @result1=<IN_2>;
my @result2=<IN_3>;
my @result3=<IN_4>;
my @result4=<IN_5>;
my @result5=<IN_6>;
my$num=@result0;
print OUT_1 "\n";
for(my$i=1;$i<$num;$i++){
     my$sum=0;
    my@symble0=split(/\s+/,$result0[$i]);
    my@symble1=split(/\s+/,$result1[$i]);
    my@symble2=split(/\s+/,$result2[$i]);
    my@symble3=split(/\s+/,$result3[$i]);
    my@symble4=split(/\s+/,$result4[$i]);
    my@symble5=split(/\s+/,$result5[$i]); 
    print OUT_1 "$symble0[0] ";
    $sum=($symble0[1]*1.26933717888257)+($symble1[1]*1.99930660475427)+($symble2[1]*2.23271414549271)+($symble3[1]*0.119841319411888);
#-($symble4[1]*0.00221096074977422)+($symble5[1]*2.56942001260753)
#$sum=$symble0[1]+$symble1[1]+$symble2[1]+$symble3[1]+$symble4[1]+$symble5[1];
    print OUT_1 "$sum   $symble0[2]\n";
 }
