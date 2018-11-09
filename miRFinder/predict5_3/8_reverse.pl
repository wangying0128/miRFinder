#perl 8_reverse.pl miRNA1.txt  miRNA1_rev.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1]; 
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";
my @posi_data=<IN_1>;
my $pre_num=@posi_data;
for(my $i=0;$i<$pre_num;$i++){
     my@symble2=split(/\s+/,$posi_data[$i]);
     if($symble2[1]=~/e/){
          printf OUT_1 "$symble2[0] ";
          printf OUT_1  "%10.8f",$symble2[1];
          printf OUT_1  " $symble2[2]\n";
          }    
     else{
          printf OUT_1 $posi_data[$i];
      }
}
