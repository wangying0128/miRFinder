#perl 2_chara.pl 5_train.txt chara.txt
#!/usr/bin/perl -wl
$input_file_1=$ARGV[0];
if( system ("perl 44_subseq.pl $input_file_1 test1_1.txt test1_1.txt.3.txt test1_1.txt.5.txt test1_1.txt.9.txt test1_1.txt.r3.txt  test1_1.txt.134.txt test1_2.txt") ){
	print "Fatal Error : 1_subseq.pl\n";
	exit(1);
}
use Cwd;
my$test_dir=getcwd;

`../../ViennaRNA-1.8.5/Progs/RNAfold -noPS <$test_dir/test1_1.txt >$test_dir/test1_1.txt.str`;
`../../ViennaRNA-1.8.5/Progs/RNAfold -noPS <$test_dir/test1_1.txt.3.txt >$test_dir/test1_1.txt.3.txt.str`;
`../../ViennaRNA-1.8.5/Progs/RNAfold -noPS <$test_dir/test1_1.txt.5.txt >$test_dir/test1_1.txt.5.txt.str`;
`../../ViennaRNA-1.8.5/Progs/RNAfold -noPS <$test_dir/test1_1.txt.9.txt >$test_dir/test1_1.txt.9.txt.str`;
`../../ViennaRNA-1.8.5/Progs/RNAfold -noPS <$test_dir/test1_1.txt.r3.txt >$test_dir/test1_1.txt.r3.txt.str`;
`../../ViennaRNA-1.8.5/Progs/RNAfold -noPS <$test_dir/test1_1.txt.134.txt >$test_dir/test1_1.txt.134.txt.str`;

open(IN_1,"test1_1.txt.str")
     or die "can't open the input file:$!";
open(IN_2,"test1_1.txt.3.txt.str")
     or die "can't open the input file:$!";
open(IN_3,"test1_1.txt.5.txt.str")
     or die "can't open the input file:$!";
open(IN_4,"test1_1.txt.9.txt.str")
     or die "can't open the input file:$!";
open(IN_5,"test1_1.txt.r3.txt.str")
     or die "can't open the input file:$!";
open(IN_6,"test1_1.txt.134.txt.str")
     or die "can't open the input file:$!";
open(IN_7,"test1_2.txt")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file1 : $!";

my @posi_data=<IN_7>;
my @pre_title=get_pre_title(\@posi_data);
my @pre_left=get_pre_seq(\@posi_data);
#my @pre_right=get_pre_str(\@posi_data);
my $pre_num=@pre_title;

my @str_posi_dup=<IN_1>;
my @str_title_dup=get_str_title(\@str_posi_dup);
my @str_left_dup=get_str_left(\@str_posi_dup);
my @str_right_dup=get_str_right(\@str_posi_dup);

my @str_posi_left3=<IN_2>;
my @str_title_left3=get_str_title(\@str_posi_left3);
my @str_left_left3=get_str_left(\@str_posi_left3);
my @str_right_left3=get_str_right(\@str_posi_left3);

my @str_posi_left5=<IN_3>;
my @str_title_left5=get_str_title(\@str_posi_left5);
my @str_left_left5=get_str_left(\@str_posi_left5);
my @str_right_left5=get_str_right(\@str_posi_left5);

my @str_posi_left9=<IN_4>;
my @str_title_left9=get_str_title(\@str_posi_left9);
my @str_left_left9=get_str_left(\@str_posi_left9);
my @str_right_left9=get_str_right(\@str_posi_left9);

my @str_posi_right3=<IN_5>;
my @str_title_right3=get_str_title(\@str_posi_right3);
my @str_left_right3=get_str_left(\@str_posi_right3);
my @str_right_right3=get_str_right(\@str_posi_right3);

my @str_posi_a=<IN_6>;
my @str_title_a=get_str_title(\@str_posi_a);
my @str_left_a=get_str_left(\@str_posi_a);
my @str_right_a=get_str_right(\@str_posi_a);

my @all_mfe=dup_mfe(\@str_posi_a);
my @dup_mfe=dup_mfe(\@str_posi_dup);
my @left3_mfe=dup_mfe(\@str_posi_left3);
my @left5_mfe=dup_mfe(\@str_posi_left5);
my @left9_mfe=dup_mfe(\@str_posi_left9);
my @right3_mfe=dup_mfe(\@str_posi_right3);

for(my$i=0;$i<$pre_num;$i++){
    my@sym=split(/D/,$str_left_a[$i]);
    my@symble1=split(//,$str_left_a[$i]);
    my@symble2=split(//,$str_right_a[$i]);
    my@symble3=split(/\s+/,$str_title_a[$i]);
    my@symble=map{$symble1[$_].$symble2[$_]} 0..$#symble1;
    my@symble0=(); 
    my@array=split(/\s+/,$str_right_a[$i]);

      chomp($str_left_a[$i]);
    my$str_left=reverse $str_left_a[$i];
    my$str_right=reverse $array[0];
    my@symble11=split(//,$str_left);
    my@symble22=split(//,$str_right);
    my@symblee=map{$symble11[$_].$symble22[$_]} 0..$#symble11;
    my@symble00=(); 

    my@symble4=split(/-/,$str_right_a[$i]);
    my$string38=substr($symble4[0],15,6);
    my$count1=0;
    my$count1+=($string38=~s/\./\./g);
    
    my$string912=substr($symble4[0],21,4);
    my$count2=0;
    my$count2+=($string912=~s/\./\./g);

    my$string22=substr($symble4[0],11,4);
    my$count3=0;
    my$count3+=($string22=~s/\./\./g);
   
    my$chara1=substr($symble4[0],13,1);
    
    if($chara1 eq "(" || $chara1 eq ")" ){
       $chara_pair=1;
    }
    else{
       $chara_pair=2;
     }

    my$len1=length($sym[0]);
    my$len=$len1-3;
    #print OUT_1 " $symble3[0]\n";
    for($j=4;$j<13;$j++){
       chomp($symble[$j]);
       push(@symble0,$symble[$j]);
       chomp($symblee[$j]);
       push(@symble00,$symblee[$j]);
     #  print OUT_1 "$symble[$j] ";
       
     }
     my $c=$len1-17;
     $ll=24-$c;
     if($c<25){
        for($t=13;$t<$len;$t++){
          chomp($symble[$t]);
          push(@symble0,$symble[$t]);
          chomp($symblee[$t]);
          push(@symble00,$symblee[$t]);
          }
       for($ll;$ll>0;$ll--){
          push(@symble0,0);
          push(@symble00,0);
          }
     }#if
      else{
        for($tt=13;$tt<38;$tt++){
          chomp($symble[$tt]);
          push(@symble0,$symble[$tt]);
          chomp($symblee[$tt]);
          push(@symble00,$symblee[$tt]);
          }
        }
     for($s=$len-1;$s<$len1-1;$s++){
       chomp($symble[$s]);
       push(@symble0,$symble[$s]);
       chomp($symblee[$s]);
       push(@symble00,$symblee[$s]);
      # print OUT_1 "$symble[$s]\n";
      }
  ####################turn to number####################
   my$lens=@symble0;
   my$chara;
   my$lenss=@symble00;
   my$charaa;
   for($j2=0;$j2<$lens;$j2++){
      my$da=$symble0[$j2];
       if($da eq 'A('||$da eq 'A)' ){
         $chara =1;
       }
     elsif($da eq 'C('||$da eq 'C)' ){
         $chara =2;
       }
     elsif($da eq 'G('||$da eq 'G)' ){
         $chara =3;
       }
     elsif($da eq 'U('||$da eq 'U)' ){
         $chara =4;
       }
     elsif($da eq 'A.'){
         $chara =5;
       }
     elsif($da eq 'C.'){
         $chara =6;
       }
     elsif($da eq 'G.'){
         $chara =7;
       }
     elsif($da eq 'U.'){
         $chara =8;
       }
     elsif($da eq '-.'){
         $chara =9;
      }
     elsif($da eq 'N.'){
         $chara =0;
       }
      elsif($da eq '0'){
         $chara =0;
       }
     
    print OUT_1 "$chara  ";
    }#for
   for($j22=0;$j22<$lenss;$j22++){
     my$da1=$symble00[$j22];
       if($da1 eq 'A('||$da1 eq 'A)' ){
         $charaa =1;
       }
     elsif($da1 eq 'C('||$da1 eq 'C)' ){
         $charaa =2;
       }
     elsif($da1 eq 'G('||$da1 eq 'G)' ){
         $charaa =3;
       }
     elsif($da1 eq 'U('||$da1 eq 'U)' ){
         $charaa =4;
       }
     elsif($da1 eq 'A.'){
         $charaa =5;
       }
     elsif($da1 eq 'C.'){
         $charaa =6;
       }
     elsif($da1 eq 'G.'){
         $charaa =7;
       }
     elsif($da1 eq 'U.'){
         $charaa =8;
       }
     elsif($da1 eq '-.'){
         $charaa =9;
      }
     elsif($da1 eq 'N.'){
         $charaa =0;
       }
     elsif($da1 eq '0'){
      $charaa =0;
       }
    print OUT_1 "$charaa ";
}

   chomp($pre_left[$i]);
   #print OUT_1 "\n";
   print OUT_1  "  $pre_left[$i] $dup_mfe[$i] $left3_mfe[$i] $left5_mfe[$i] $left9_mfe[$i] $right3_mfe[$i] $count1  $count2  $count3  $chara_pair\n";
 }

sub dup_mfe{
  @ret11=();
  my($data)=@_;
  my$datanum=@$data;
  for(my $i=0;$i<$datanum-2;$i=$i+3){
      my$j=$i+1;
      my$k=$i+2;
      my@symble_1=split(/-/,@$data[$k]);
      my@text=$symble_1[1]=~/[0-9]*.[0-9]*/g;
      my $strh="-";
      my $str="$strh$text[0]";
      if($str eq "-"){
        push(@ret11,0);
      }
      else{      
        push(@ret11,$str);
      }
  }
return(@ret11);
}
sub get_pre_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+2){
       push(@ret0,@$data[$i]);
   }
  return(@ret0);
}


sub get_pre_seq{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-1;$i=$i+2){
       my $j=$i+1;
            push(@ret2,@$data[$j]);
  }
 return(@ret2);
}
sub get_str_title{
my @ret3=();
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       push(@ret3,@$data[$i]);
   }
  return(@ret3);
}

sub get_str_left{
my@ret4=();
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+1;
            push(@ret4,@$data[$j])
  }
 return(@ret4);
}
sub get_str_right{
my@ret5=();
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+2;
            push(@ret5,@$data[$j])
  }
 return(@ret5);
}



