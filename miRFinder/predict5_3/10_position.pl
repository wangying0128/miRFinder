#perl 10_position.pl 5_pre-miRNA-snp.txt 8.txt 6_pre-miRNA-snp.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";

$input_file_2=$ARGV[1];
open(IN_2,"$input_file_2")
     or die "can't open the input file:$!";
$output_file1=$ARGV[2];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @str=<IN_1>;
my @str1=<IN_2>;

my $num1=@str;
my $num2=@str1;

for(my$i=0;$i<$num1;$i++){
    my@symble1=split(/\s+/,$str[$i]);
 
    for(my$j=0;$j<$num2;$j++){
      my@symble2=split(/\s+/,$str1[$j]);
      if($symble1[0] eq $symble2[0]){
        my$s1=$symble1[2]-$symble2[2];
        my$s2=$symble1[4]-$symble2[2];
        my$s3=$symble1[6]-$symble2[2];
        my$s4=$symble1[8]-$symble2[2];
        my$s5=$symble1[10]-$symble2[2];
        my$s6=$symble1[12]-$symble2[2];
        my$s7=$symble1[14]-$symble2[2];
        print OUT_1 "$symble1[0]  $symble2[2]  $symble1[2]  $s1 $symble1[4] $s2  $symble1[6]  $s3  $symble1[8]  $s4  $symble1[10]   $s5   $symble1[3]  $symble1[5]  $symble1[7]  $symble1[9]  $symble1[11]   $symble1[12] $symble1[13] $symble1[14] $symble1[15] $symble1[16] $symble1[17] $symble1[18] $symble1[19] $symble1[20] $symble1[21] $symble1[22]  $symble1[23] $symble1[24] $symble1[25] $symble1[26]  $symble1[27]\n$seq0[$i]";
      }#if
    }#for
 }#for


sub get_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+2){
       push(@ret0,@$data[$i]);
   }
  return(@ret0);
}

sub get_left{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+2){
       my $j=$i+1;
            push(@ret1,@$data[$j])
  }
 return(@ret1);
}
sub get_str_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+3){
       push(@ret3,@$data[$i]);
   }
  return(@ret3);
}

sub get_str_left{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+3){
       my $j=$i+1;
            push(@ret4,@$data[$j])
  }
 return(@ret4);
}
sub get_str_right{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+3){
       my $j=$i+2;
            push(@ret5,@$data[$j])
  }
 return(@ret5);
}




