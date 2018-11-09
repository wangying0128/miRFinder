#perl 1_extract.pl    HG00096_snp.txt 2_pre-miRNA-snp.txt  1_HG00096.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";

$output_file1=$ARGV[1];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @str=<IN_1>;

my $num=@str;


 for(my$i=0;$i<$num;$i++){
   my$n=0;
   my@symble1=split(/\s+/,$str[$i]);
   if($symble1[1]=~ /^\d+$/){ 
     }
   else{
     print OUT_1 "$symble1[0]";
          my$n1=$symble1[2];
          my$n2=$symble1[4];
          my$n3=$symble1[6];
          my$n4=$symble1[8];
          my$n5=$symble1[10];
     for(my$j=$i+1;$j<$num;$j++){ 
         my@symble2=split(/\s+/,$str[$j]);
         if(($symble1[0] eq $symble2[0])){
           $n++;
           $n1=$n1+$symble2[2];
           $n2=$n2+$symble2[4];
           $n3=$n3+$symble2[6];
           $n4=$n4+$symble2[8];
           $n5=$n5+$symble2[10];
          
        }#if
        
     }#for
    $i=$i+$n;
      print OUT_1 "  $symble1[1]   $n1    $symble1[3]   $n2   $symble1[5]   $n3   $symble1[7]   $n4  $symble1[9]   $n5\n";
}#else
}#for

 
    



