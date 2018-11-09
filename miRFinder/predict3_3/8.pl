$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1]; 
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";


my @posi_data=<IN_1>;
my $pre_num=@posi_data;

for(my$i=0;$i<$pre_num;$i++){
 my@symble1=split(/\s+/,$posi_data[$i]);
  
 if(($symble1[2]gt 0)|| ($symble1[4]gt 0)|| ($symble1[6]gt 0)|| ($symble1[8]gt 0) ||($symble1[10]gt 0)){
   print OUT_1 "$posi_data[$i]";
  }
  
}
