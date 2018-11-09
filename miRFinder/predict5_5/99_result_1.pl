#perl 99_result_1.pl result.txt test1_1.txt.str test_1.txt result_finish.txt
#use strict;
#use warnings;
#use Data::Dumper;
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$input_file_2=$ARGV[1];
open(IN_2,"$input_file_2")
     or die "can't open the input file:$!";
$input_file_3=$ARGV[2];
open(IN_3,"$input_file_3")
     or die "can't open the input file:$!";

$output_file1=$ARGV[3];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @posi_data=<IN_1>;
my @str=<IN_2>;
my @str_posi=<IN_3>;

my @title=get_title(\@str);
my @left=get_left(\@str);

my @str_title=get_str_title(\@str_posi);
my @str_left=get_str_left(\@str_posi);

my $num1=@posi_data;
my $num2=@str_title;
 
for(my$i=0;$i<$num1;$i++){

   my@symble0=split(/\s+/,$posi_data[$i]);   #negative.txt
   for(my $j=0;$j<$num2;$j++){  

      my@symble1=split(/\s+/,$title[$j]);#result.txt                   
      if($symble0[0] eq $symble1[0]) {
          print OUT_1 "$symble0[0] $symble0[2]  ";
               
            $pos=$symble0[2]-1; 
            my$string1=substr($str_left[$i],$pos,22); 

            $pos2=$symble0[4]-1; 
            my$string2=substr($str_left[$i],$pos2,22); 
               
            $pos3=$symble0[6]-1; 
            my$string3=substr($str_left[$i],$pos3,22); 
            
            $pos4=$symble0[8]-1; 
            my$string4=substr($str_left[$i],$pos4,22); 
        
            $pos5=$symble0[10]-1; 
            my$string5=substr($str_left[$i],$pos5,22); 
           # if($sign<6){  
              print OUT_1 "\nthe 5'arm mature miRNA position is  $symble0[2] : $string1\nthe 5'arm mature miRNA position is  $symble0[4] : $string2\nthe 5'arm mature miRNA position is  $symble0[6] : $string3\nthe 5'arm mature miRNA position is  $symble0[8] : $string4\nthe 5'arm mature miRNA position is  $symble0[10] : $string5";        
            #}            
       }#if   
   }#for 
    print OUT_1 "\n";
}    
sub get_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+3){
       push(@ret3,@$data[$i]);
   }
  return(@ret3);
}
sub get_left{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+3){
       my $j=$i+1;
            push(@ret4,@$data[$j])
  }
 return(@ret4);
}
sub get_str_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+2){
       push(@ret1,@$data[$i]);
   }
  return(@ret1);
}
sub get_str_left{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+2){
       my $j=$i+1;
            push(@ret2,@$data[$j])
  }
 return(@ret2);
}
