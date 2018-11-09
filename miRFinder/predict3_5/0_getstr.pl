#perl 1_getstr.pl test1_str.txt test1_str.seq.txt
$input_file_1=$ARGV[0];
my$test_str=$input_file_1.".str";
use Cwd;
my$test_dir=getcwd;

`../../ViennaRNA-1.8.5/Progs/RNAfold -noPS <$test_dir/$input_file_1 >$test_dir/$test_str`;

open(IN_1,"$test_str")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @str_posi=<IN_1>;
my @str_title=get_str_title(\@str_posi);
my @str_left=get_str_left(\@str_posi);
my @str_right=get_str_right(\@str_posi);
my $str_num=@str_title;

for(my$i=0;$i<$str_num;$i++){
   my@str;
   my@left;
   my@right;
   chomp($str_title[$i]);
   my@symble0=split(/ /,$str_title[$i]);

   print OUT_1 "$symble0[0]";
   my@symble1=split(/\s+/,$str_right[$i]);
   my$len_str=length($symble1[0]);
   my$xia=0;
   my$shang=0;
  $pos1=index($symble1[0],")");
  $str0=reverse($symble1[0]);
  $pos2=index($str0,"(");
  $str1=substr($symble1[0],0,$pos1);
  $str2=substr($str0,0,$pos2);
  $str1=~s/\.+$//g;
  $str2=~s/\.+$//g;
  $str_left1=reverse($str_left[$i]);
 # print OUT_1 "str1:$str_left[$i]   str2:$str_left1   pos1:$pos1 pos2:$pos2  len:$len\n";

  my$len1=length($str1);
  my$len2=length($str2);
  if($len1>$len2 ||$len1 eq $len2){
    $len=$len1;
  }
  elsif($len2>$len1){
   $len=$len2;
  }

  my$shang=0;
  my$xia=0;
  for(my$j=0;$j+$shang<$len;$j++){
      $str1=~s/\\s//g;
      chomp($str2);
      $str_left1=~s/\\s//g;;
      my $d1=$j+$shang;
      my $d2=$j+$xia;
      $char1=substr($str1,$d1,1);
      $char2=substr($str2,$d2,1);
      $char3=substr($str_left[$i],$d1,1);
      $char4=substr($str_left1,$d2+1,1);
 #     print OUT_1 "$char3:$char4  ";
      if($char1 eq "(" &&  $char2 eq ")"){
         push(@left,$char3);
         push(@right,$char4);
      }
      elsif($char1 eq "." &&  $char2 eq "."){
        my$p1=index($str1,"(",$d1);
        my$k1=$p1-$d1;
        my$p2=index($str2,")",$d2);
        my$k2=$p2-$d2;
       
        if($k1>$k2){
            my$k3=$k1-$k2;
            for(my$ii=0;$ii<$k3;$ii++){
               push(@right,"-");   
           }
            for(my$i1=0;$i1<$k2;$i1++){
              my$chara6=substr($str_left1,$d2+$i1+1,1);    
              push(@right,$chara6);
         #     print OUT_1 "chara:$chara6\n";
            }
           for(my$jj=0;$jj<$k1;$jj++){
              my$chara0=substr($str_left[$i],$d1+$jj,1);
              push(@left,$chara0);
        #      print OUT_1 "chara0:$chara0  ";
            }
             $shang=$shang+$k1-1;
             $xia=$xia+$k2-1;
        #     print OUT_1 " shang:$shang d1:$d1+$k1-1\n";
        }#if
        elsif($k1 eq $k2){
             push(@left,$char3);
             push(@right,$char4);
        }
        elsif($k2>$k1){
             my$k3=$k2-$k1;
             for(my$t=0;$t<$k3;$t++){
               push(@left,"-");
            #   print OUT_1 "k1<k2:k3:$k3\n";
             }
            for(my$i2=0;$i2<$k1;$i2++){
              my$chara7=substr($str_left[$i],$d1+$i2,1);
              push(@left,$chara7);
             }
             for(my$tt=0;$tt<$k2;$tt++){
                my$chara3=substr($str_left1,$d2+$tt+1,1);
                push(@right,$chara3);
       #       print OUT_1 "j:$j chara3:$chara3\n";
             }
              $xia=$xia+$k2-1;
              $shang=$shang+$k1-1;
           }#elsif
           
      #  print OUT_1  "p1:$p1  j:$j  k1:$k1\np2:$p2  j:$j  k2:$k2\n";

       }#elsif  
       elsif($char1 eq "." &&  $char2 eq ")"){
          my$n0=index($str1,"(",$d1);
          my$n1=$n0-$d1;
  #        print OUT_1 "j:$j  ";
          for(my$iii=0;$iii<$n1;$iii++){
              push(@right,"-");
              my$chara1=substr($str_left[$i],$d1+$iii,1);
              push(@left,$chara1);
 #             print OUT_1 " .(  shang chara:$chara1\n";
             }
          $shang=$shang+$n1-1;
          $xia=$xia-1;
        }
       elsif($char1 eq "(" && $char2 eq "."){
           my$m0=index($str2,")",$d2);
           my$m1=$m0-$d2;
           for($mn=0;$mn<$m1;$mn++){
               push(@left,"-");
               my$chara4=substr($str_left1,$d2+$mn+1,1);
               push(@right,$chara4);
           }
            $xia=$xia+$mn-1;
            $shang=$shang-1;
       }
#  print OUT_1 "str1:$str1\nseq1:$str_left1\nstr2:$str2\nseq2:$str_left[$i]\n";
           #print OUT_1 "$d1  ";
  }#for

  ##########loop###################
   chomp($str_left[$i]);
   chomp($str_left1);
   my$num_d=($pos1+$pos2-$len_str)/2;
   my$num=int($num_d);
   my$pos3=$pos2-$num+1;
   my$loop1=substr($str_left1,$pos3,$num);
   my$loop11=reverse($loop1);

   my$pos4=$pos1-$num;
   my$loop2=substr($str_left[$i],$pos4,$num);
   my$loop22=reverse($loop2);

   my$len_str=@left;
   print OUT_1 "  $len_str\n@left$loop11\n@right$loop22\n";

   #print OUT_1 "str1:$str_left[$i]   str2:$str_left1   pos1:$pos1 pos2:$pos2  len:$len_str  $num loop1:$loop11  $loop22\n";

}#for


sub get_str_title{
my($data)=@_;
my @ret3=();
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       push(@ret3,@$data[$i]);
   }
  return(@ret3);
}

sub get_str_left{
my($data)=@_;
my @ret4=();

my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+1;
            push(@ret4,@$data[$j])
  }
 return(@ret4);
}
sub get_str_right{
my($data)=@_;
my @ret5=();

my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+2;
            push(@ret5,@$data[$j])
  }
 return(@ret5);
}
