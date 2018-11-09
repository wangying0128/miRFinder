#perl 5_train.txt train.txt 
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$output_file=$ARGV[1];   # output file
open OUT_1, ">$output_file"
          or die "Can not open $output_file : $!";


my @str=<IN_1>;
my @str_title=get_str_title(\@str);
my @str_left=get_str_left(\@str);
my @str_right=get_str_right(\@str);
my $strnum=@str_title;
   for(my $i=0;$i<$strnum;$i++){
      my$n=0;
      my$n1=0;
      my$pos2=0;
      my@sym=split(/\s+/,$str_title[$i]);
      my$len=length($str_left[$i]);
#####################only one miRNA	###############  
      if($sym[6] eq ""){ 
         my$pos1=$sym[3];   
         my$m=$pos1-1;
         for($m;$m<$len;$m++){
            $char=substr($str_left[$i],$m,1);
           if($char eq 'A'|| $char eq 'C'|| $char eq 'G'|| $char eq 'U'|| $char eq 'a'|| $char eq 'c'|| $char eq 'g'|| $char eq 'u' and $n<22){
               $n++; 
               $n1++;
            }
           elsif($char eq '-'and $n<22){
              $n1++;
    #          print OUT_1 "$char  n=$n  n1=$n1  ";
           }
         
         $pos2=$pos1+$n1-1;
        }
       
        # print OUT_1 "$sym[0] $sym[1] $sym[2] $sym[3] $sym[4] $sym[3] $pos2 $sym[5]\n$str_left[$i]$str_right[$i]";
     print OUT_1 "$str_title[$i]$str_left[$i]$str_right[$i]";
      }
      
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

