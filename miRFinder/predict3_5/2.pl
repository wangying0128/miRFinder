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
$output_file3=$ARGV[3]; 
open OUT_3, ">$output_file3"
          or die "Can not open $output_file : $!";
$output_file4=$ARGV[4]; 
open OUT_4, ">$output_file4"
          or die "Can not open $output_file : $!";
$output_file5=$ARGV[5]; 
open OUT_5, ">$output_file5"
          or die "Can not open $output_file : $!";
$output_file6=$ARGV[6]; 
open OUT_6, ">$output_file6"
          or die "Can not open $output_file : $!";
$output_file7=$ARGV[7]; 
open OUT_7, ">$output_file7"
          or die "Can not open $output_file : $!";


my$i=0;
while(defined($perIns = <IN_1>))
{ 
   
   if($i<5000000) {
 
   print OUT_1 "$perIns"; 
   }
if((5000000<=$i)&& ($i<10000000)) {
 
   print OUT_2 "$perIns"; 
   }
elsif((10000000<=$i)&& ($i<15000000)) {
 
   print OUT_3 "$perIns"; 
   }
elsif((15000000<=$i) && ($i<20000000)) {
 
   print OUT_4 "$perIns"; 
   }
elsif((20000000<=$i) && ($i<25000000)) {
 
   print OUT_5 "$perIns"; 
   }
elsif((30000000<=$i)&& ($i<35000000)) {
 
   print OUT_6 "$perIns"; 
   }
elsif(35000000<=$i) {
 
   print OUT_7 "$perIns"; 
   }

   $i++;     
} 

