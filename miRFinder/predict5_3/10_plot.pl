#perl 8_plot.pl result2.txt plot.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1]; 
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";
$output_file2=$ARGV[2]; 
open OUT_2, ">$output_file2"
          or die "Can not open $output_file : $!";

my @posi_data=<IN_1>;
my $pre_num=@posi_data;
my$num0=0;
my$num1=0;
my$num2=0;
my$num3=0;
my$num4=0;
my$num5=0;
my$num6=0;
my$num7=0;
my$num8=0;
my$num00=0;
my$num11=0;
my$num22=0;
my$num33=0;
my$num44=0;
my$num55=0;
my$num66=0;
my$num77=0;
my$num88=0;
print OUT_1 "0   1  2  3  4  5  6  7  8\n";
print OUT_2 "0   1  2  3  4  5  6  7  8\n";
for(my$i=0;$i<$pre_num;$i++){
    my@symble1=split(/\s+/,$posi_data[$i]);
    if($symble1[3] eq "0"){
       $num0++;
     }
    elsif($symble1[3] eq "1" || $symble1[3] eq "-1"){
        $num1++;
     }
    elsif($symble1[3] eq "2" || $symble1[3] eq "-2"){
        $num2++;
     }
   elsif($symble1[3] eq "3" || $symble1[3] eq "-3"){
        $num3++;
     }
   elsif($symble1[3] eq "4" || $symble1[3] eq "-4"){
        $num4++;
     }
   elsif($symble1[3] eq "5" || $symble1[3] eq "-5"){
        $num5++;
     }
   elsif($symble1[3] eq "6" || $symble1[3] eq "-6"){
        $num6++;
     }
   elsif($symble1[3] eq "7" || $symble1[3] eq "-7"){
        $num7++;
     }
   elsif($symble1[3] eq "8" || $symble1[3] eq "-8"){
        $num8++;
     }

   if($symble1[3] eq "0" || $symble1[5] eq "0" || $symble1[9] eq "0" || $symble1[11] eq "0" || $symble1[7] eq "0"){
       $num00++;
     }
    elsif($symble1[3] eq "1" || $symble1[3] eq "-1" || $symble1[5] eq "1" || $symble1[5] eq "-1"  || $symble1[9] eq "1" || $symble1[9] eq "-1"|| $symble1[11] eq "1" || $symble1[11] eq "-1"|| $symble1[7] eq "1" || $symble1[7] eq "-1"){
        $num11++;
     }
    elsif($symble1[3] eq "2" || $symble1[3] eq "-2" || $symble1[5] eq "2" || $symble1[5] eq "-2" || $symble1[9] eq "2" || $symble1[9] eq "-2"|| $symble1[11] eq "2" || $symble1[11] eq "-2"|| $symble1[7] eq "2" || $symble1[7] eq "-2"){
        $num22++;
     }
   elsif($symble1[3] eq "3" || $symble1[3] eq "-3" || $symble1[5] eq "3" || $symble1[5] eq "-3" || $symble1[9] eq "3" || $symble1[9] eq "-3"|| $symble1[11] eq "3" || $symble1[11] eq "-3"|| $symble1[7] eq "3" || $symble1[7] eq "-3"){
        $num33++;
     }
   elsif($symble1[3] eq "4" || $symble1[3] eq "-4" || $symble1[5] eq "4" || $symble1[5] eq "-4" || $symble1[9] eq "4" || $symble1[9] eq "-4"|| $symble1[11] eq "4" || $symble1[11] eq "-4"|| $symble1[7] eq "4" || $symble1[7] eq "-4"){
        $num44++;
     }
   elsif($symble1[3] eq "5" || $symble1[3] eq "-5" || $symble1[5] eq "5" || $symble1[5] eq "-5" || $symble1[9] eq "5" || $symble1[9] eq "-5"|| $symble1[11] eq "5" || $symble1[11] eq "-5"|| $symble1[7] eq "5" || $symble1[7] eq "-5"){
        $num55++;
     }
   elsif($symble1[3] eq "6" || $symble1[3] eq "-6" || $symble1[5] eq "6" || $symble1[5] eq "-6" || $symble1[9] eq "6" || $symble1[9] eq "-6"|| $symble1[11] eq "6" || $symble1[11] eq "-6"|| $symble1[7] eq "6" || $symble1[7] eq "-6"){
        $num66++;
     }
   elsif($symble1[3] eq "7" || $symble1[3] eq "-7" || $symble1[5] eq "7" || $symble1[5] eq "-7" ||$symble1[9] eq "7" || $symble1[9] eq "-7"|| $symble1[11] eq "7" || $symble1[11] eq "-7"|| $symble1[7] eq "7" || $symble1[7] eq "-7"){
        $num77++;
     }
   elsif($symble1[3] eq "8" || $symble1[3] eq "-8" || $symble1[5] eq "8" || $symble1[5] eq "-8" ||$symble1[9] eq "8" || $symble1[9] eq "-8"|| $symble1[11] eq "8" || $symble1[11] eq "-8"|| $symble1[7] eq "8" || $symble1[7] eq "-8"){
        $num88++;
     }
 }
   my$p0=$num0/$pre_num;
   my$p1=$num1/$pre_num+$p0; 
   my$p2=$num2/$pre_num+$p1;
   my$p3=$num3/$pre_num+$p2;
   my$p4=$num4/$pre_num+$p3;
   my$p5=$num5/$pre_num+$p4;
   my$p6=$num6/$pre_num+$p5;
   my$p7=$num7/$pre_num+$p6;
   my$p8=$num8/$pre_num+$p7;

   my$p00=$num00/$pre_num;
   my$p11=$num11/$pre_num+$p00; 
   my$p22=$num22/$pre_num+$p11;
   my$p33=$num33/$pre_num+$p22;
   my$p44=$num44/$pre_num+$p33;
   my$p55=$num55/$pre_num+$p44;
   my$p66=$num66/$pre_num+$p55;
   my$p77=$num77/$pre_num+$p66;
   my$p88=$num88/$pre_num+$p77;
printf OUT_1 "%6.4f  %6.4f%  6.4f%  6.4f%  6.4f%  6.4f%  6.4f%  6.4f",$p0,$p1,$p2,$p3,$p4,$p5,$p6,$p7,$p8;
printf OUT_2 "%6.4f  %6.4f%  6.4f%  6.4f%  6.4f%  6.4f%  6.4f%  6.4f",$p00,$p11,$p22,$p33,$p44,$p55,$p66,$p77,$p88;
      

