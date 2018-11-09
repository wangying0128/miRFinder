#perl 8_plot.pl result2.txt plot.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1]; 
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";
$output_file2=$ARGV[2]; 
open OUT_2, ">$output_file2"
          or die "Can not open $output_file : $!";

my @posi_data=<IN_1>;
my $pre_num=@posi_data;

for(my$i=0;$i<$pre_num;$i++){
 my@symble1=split(/\s+/,$posi_data[$i]);
  chomp($posi_data[$i]);
  $posi_data[$i]=~s/U/T/g;
 if(($symble1[3]eq 0)|| ($symble1[5]eq 0)|| ($symble1[7]eq 0)|| ($symble1[9]eq 0) ||($symble1[11]eq 0) ){
   if($symble1[12]=~/[ATGU]/){
   print OUT_1 "$posi_data[$i]\n";
    }
  }
  elsif(($symble1[3] ne 0)|| ($symble1[5]ne 0)|| ($symble1[7]ne 0)|| ($symble1[9]ne 0) ||($symble1[11]ne 0)){
   if($symble1[12]=~/[ATGU]/){
   print OUT_2 "$posi_data[$i]\n";
   }
  }
}
