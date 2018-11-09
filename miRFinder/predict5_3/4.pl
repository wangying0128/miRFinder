#perl 8_plot.pl result2.txt plot.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1]; 
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my$i=0;
while(defined($perIns = <IN_1>))
{ 
   
   if($i%2==0) {
 
   print OUT_1 "$perIns"; 
   }
$i++;
} 

