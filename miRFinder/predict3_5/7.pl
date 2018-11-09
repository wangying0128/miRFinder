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

my @str2=<IN_2>;
my $num0=@str2;
my$num=0;
    
     for(my$i=0;$i<$num0;$i++){
         my$num1=0;
         my@symble1=split(/\s+/,$str2[$i]);
          
        my $num1=0;
        my $num2=0;
        my $num3=0;
        my $num4=0;
        my $num5=0;
        printf OUT_1 "$symble1[0]   ";
        open(IN_1,"$input_file_1"); 
        while(defined($perIns = <IN_1>)) { 
         if($perIns =~ /$symble1[12]/) {
         $num1++;
        }
        if($perIns =~ /$symble1[13]/) {
         $num2++;
        }
        if($perIns =~ /$symble1[14]/) {
         $num3++;
        }
        if($perIns =~ /$symble1[15]/) {
         $num4++;
        }
        if($perIns =~ /$symble1[16]/) {
         $num5++;
        }
      }
close(IN_1);
    print OUT_1 "$symble1[12] $num1  $symble1[13] $num2  $symble1[14] $num3  $symble1[15] $num4   $symble1[16] $num5\n"; 
          
        
        
      }

   

