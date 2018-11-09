#perl 8_result.pl miRNA1.txt test_new.txt  pre_str.txt result.txt result2.txt
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
$input_file_4=$ARGV[3];
open(IN_4,"$input_file_4")
     or die "can't open the input file:$!";
$input_file_5=$ARGV[4];
open(IN_5,"$input_file_5")
     or die "can't open the input file:$!";


$output_file1=$ARGV[5];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";
$output_file2=$ARGV[6]; 
open OUT_2, ">$output_file2"
          or die "Can not open $output_file : $!";

my @posi_data=<IN_1>;#miRNA_rev.txt
my @str_posi=<IN_2>;#test_1.txt
my @str_length=<IN_3>;#test_1.txt.str
my @negative=<IN_4>;
my @title=get_title(\@negative);
my @ne_num=<IN_5>;


my $pre_num=@posi_data;
my @str_title=get_str_title(\@str_posi);#test_1.txt
my @str_left=get_str_left(\@str_posi);
my @length_title=get_length_title(\@str_length);#str.txt
my @length_left=get_length_left(\@str_length);
my @length_right=get_length_right(\@str_length);
my $str_num=@str_title;
my$star=0;

for(my$i=0;$i<$str_num;$i++){
    my@symble1=split(/\s+/,$length_title[$i]); #symble0---str
    my@symble0=split(/\s+/,$str_title[$i]); #symble1---test_1.txt
    print OUT_1  $symble0[0]; 
    if($symble0[6] eq ""){
       print OUT_2  "$symble0[0]  $symble0[1]  "; 
      }
    elsif($symble0[6] ne ""){
      print OUT_2  "$symble0[0]  $symble0[1]  "; 
      }    
    
    chomp($str_left[$i]); 
    #negative numbers
     my$num=$ne_num[$i];
  # print OUT_1 "   num:$num\n";
     @a=();
     @b=();
     @sort1=();
    for(my$j=1+$star;($j<$star+1+$num) && ($j<$pre_num);$j++){
       my@symble2=split(/\s+/,$posi_data[$j]);
       push(@a,$symble2[1]);
      }
     
     @b=@a;
     @sort1=sort @a;
     my$num0=@sort1;
    #print OUT_1 "@b     star:$star";
       
##########control the output num#############
      my$sign=0;
      my$pos0=0;
      my$pos1=0;
      my$pos2=0;
      for(my$j1=$num0-1;$j1>=0;$j1--){
         for($j2=0;$j2<$num0;$j2++){
            if($sort1[$j1] eq $b[$j2]) {
              # if($pos1 ne $pos2){
                 $sign++;
                 #   }
               my$star1=$j2+$star;
               my@symble3=split(/\s+/,$title[$star1]);
               
               my $pos=$symble3[1]-3;
               if($pos>0 ){
                 $pos=$symble3[1]-3;
                   }
               elsif($pos<=0 ){
                  $pos=1;
                    }
               my$string=substr($length_right[$i],$pos,10);
               $string=~s/-//g;  
               $string2=reverse($str_left[$i]);
               $string2=~s/\n//;     
               $pos0=index($string2,$string);
               my$len_pre=length($string2);
               $pos1=$len_pre-$pos0;
               

               my$string1=substr($string2,$pos0,22);
               $string1=reverse($string1);
               
               if($sign<6 && ($pos1 ne $pos2)){
                  print OUT_1 "\nthe 3'end position of 3'arm mature miRNA  is  $pos1 : $string1";
                       }
               if($sign<6 && ($pos1 ne $pos2)){
                 if($sign<6 && ($symble0[6] eq "")){
                    my$devi1=$pos1-$symble0[2];
                  print OUT_2  " $pos1   $string1 ";
                       }
                 elsif($sign<6 &&($symble0[6] ne "")){
                    my$devi2=$pos1-$symble0[4];
                    print OUT_2  " $pos1  $string1  ";
                       }
                  
               }#if 
           
           }#if
             $pos2=$pos1;
         }#for
     
      }#for
      print OUT_1 "\n";
 #print OUT_2 "\n";
    print OUT_2 " $symble0[1]  $symble0[2] $symble0[3] $symble0[4] $symble0[5] $symble0[6] $symble0[7] $symble0[8]   $symble0[9] $symble0[10] $symble0[11]  $symble0[12] $symble0[13]  $symble0[14] $symble0[15]  $symble0[16] $symble0[17]  $symble0[18] $symble0[19]  $symble0[20] $symble0[21]  $symble0[22]\n";
     $star=$num+$star;
}    
 
 sub get_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       push(@ret9,@$data[$i]);
   }
  return(@ret9);
}                       
sub get_length_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       push(@ret0,@$data[$i]);
   }
  return(@ret0);
}
sub get_length_right{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+2;
            push(@ret1,@$data[$j])
  }
 return(@ret1);
}
sub get_length_left{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+1;
            push(@ret2,@$data[$j])
  }
 return(@ret2);
}
sub get_str_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+2){
       push(@ret3,@$data[$i]);
   }
  return(@ret3);
}
sub get_str_left{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+2){
       my $j=$i+1;
            push(@ret4,@$data[$j])
  }
 return(@ret4);
}
