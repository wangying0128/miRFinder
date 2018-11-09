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
$input_file_7=$ARGV[6];
open(IN_7,"$input_file_7")
     or die "can't open the input file:$!";


$output_file1=$ARGV[7]; 
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";


my @data1=<IN_1>;
my $num1=@data1;
my @data2=<IN_2>;
my $num2=@data2;
my @data3=<IN_3>;
my $num3=@data3;
my @data4=<IN_4>;
my $num4=@data4;
my @data5=<IN_5>;
my $num5=@data5;
my @data6=<IN_6>;
my $num6=@data6;
my @data7=<IN_7>;
my $num7=@data7;

for(my$i1=0;$i1<$num1;$i1++){
   print OUT_1 "$data1[$i1]";
  }
 for(my$i2=0;$i2<$num2;$i2++){
   print OUT_1 "$data2[$i2]";
  }

for(my$i3=0;$i3<$num3;$i3++){
   print OUT_1 "$data3[$i3]";
  }

for(my$i4=0;$i4<$num4;$i4++){
   print OUT_1 "$data4[$i4]";
  }

for(my$i5=0;$i5<$num5;$i5++){
   print OUT_1 "$data5[$i5]";
  }

for(my$i6=0;$i6<$num6;$i6++){
   print OUT_1 "$data6[$i6]";
  }

for(my$i7=0;$i7<$num7;$i7++){
   print OUT_1 "$data7[$i7]";
  }

