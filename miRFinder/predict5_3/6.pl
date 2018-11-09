#perl 2.pl hg0096.txt change.txt result1.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$input_file_2=$ARGV[1];
open(IN_2,"$input_file_2")
     or die "can't open the input file:$!";
$output_file1=$ARGV[2]; 
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @str1=<IN_1>;
my $num=@str1;
my @str=<IN_2>;
my $num0=@str;

    for(my$i=0;$i<$num0;$i++){
      my@symble1=split(/\s+/,$str[$i]);
      print OUT_1 "$i  $symble1[0]    ";
      my $num1=0;
      my $num2=0;
      my $num3=0;
      my $num4=0;
      my $num5=0;
      for(my$j=0;$j<$num;$j++) {  
       
        if(($str1[$j] =~ /$symble1[12]/) &&  ($symble1[12] ne "")) {
         $num1++;
        
        }
        elsif(($str1[$j] =~ /$symble1[13]/) &&  ($symble1[13] ne "")) {
         $num2++;
        }
        elsif(($str1[$j] =~ /$symble1[14]/) &&  ($symble1[14] ne "")) {
         $num3++;
        }
        elsif(($str1[$j] =~ /$symble1[15]/) &&  ($symble1[15] ne "")){
         $num4++;
        }
        elsif(($str1[$j] =~ /$symble1[16]/) &&  ($symble1[16] ne "")){
         $num5++;
        }
     }#while
    print OUT_1 "$symble1[12] $num1  $symble1[13] $num2  $symble1[14] $num3  $symble1[15] $num4   $symble1[16] $num5\n";
} 

   

