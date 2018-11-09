#perl negative.pl  positive.txt negative.txt  pre_str.txt
$input_file_1=$ARGV[0];
if(system("perl 0_getstr.pl $input_file_1 str.txt")){
	print "Fatal Error : in 1_check_query_content.pl\n";
	exit(1);
}

open(IN_1,"str.txt")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file1 : $!";
$output_file2=$ARGV[2]; 
open OUT_2, ">$output_file2"
          or die "Can not open $output_file1 : $!";
$output_file3=$ARGV[3]; 
open OUT_3, ">$output_file3"
          or die "Can not open $output_file1 : $!";
my @posi_data0=<IN_1>;
my @posi_data=del_null(\@posi_data0);
my @pre_title=get_pre_title(\@posi_data);
my @pre_left=get_pre_seq(\@posi_data);
my @pre_right=get_pre_str(\@posi_data);
my $pre_num=@pre_title;
print OUT_2 @posi_data;
  for(my$i=0;$i<$pre_num;$i++){
     my@symble1=split(/\s+/,$pre_title[$i]);
       if($symble1[6] eq ""){
       $len=$symble1[1]+1;
     }
     else{
       $len=$symble1[1]+1;
     }
     my$miRNA1=1;
    # my$len=length($pre_left[$i]);
     $miRNA2=$miRNA1+21;
       my$sign=0;
     while($miRNA2<$len){
        
           chomp($pre_title[$i]);
           my$chara=substr($pre_left[$i],$miRNA1-1,1);
           if($chara ne "-"){
             $sign++;
             print OUT_1 "$symble1[0]  $miRNA1 $miRNA2  $miRNA1 $miRNA2  $symble1[1]\n$pre_left[$i]$pre_right[$i]";
               }
         
        $miRNA1++;
        $miRNA2=$miRNA1+21;
     }#while
 print OUT_3 "$sign\n";
  }#for
sub del_null{
  my($data)=@_;
  $datanum=@$data;
  for(my $i=0;$i<$datanum-2;$i=$i+3){
      my $j1=$i+1;
      my $j2=$i+2;
     
      @$data[$j1]=~s/\s//g;
      my $str1="@$data[$j1]\n";
      @$data[$j2]=~s/\s//g;
      my $str2="@$data[$j2]\n";
      push(@ret6,@$data[$i]);
      push(@ret6,$str1);
      push(@ret6,$str2);
   }
 # print OUT_1 @ret1;
   return(@ret6);
 }
sub get_pre_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       push(@ret0,@$data[$i]);
   }
  return(@ret0);
}

sub get_pre_str{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+2;
            push(@ret1,@$data[$j])
  }
 return(@ret1);
}
sub get_pre_seq{
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
for(my $i=0;$i<$datanum-2;$i=$i+3){
       push(@ret3,@$data[$i]);
   }
  return(@ret3);
}

sub get_str_left{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+1;
            push(@ret4,@$data[$j])
  }
 return(@ret4);
}
sub get_str_right{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+2;
            push(@ret5,@$data[$j])
  }
 return(@ret5);
}

