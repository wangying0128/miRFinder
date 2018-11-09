#perl 2_get_result.pl result00.txt result11.txt result22.txt result33.txt result44.txt result55.txt result.txt

$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$input_file_2=$ARGV[1];
open(IN_2,"$input_file_2")
     or die "can't open the input file:$!";
$input_file_3=$ARGV[2];
open(IN_3,"$input_file_3")
     or die "can't open the input file:$!";
$input_file_4=$ARGV[3];
open(IN_4,"$input_file_4")
     or die "can't open the input file:$!";
$input_file_5=$ARGV[4];
open(IN_5,"$input_file_5")
     or die "can't open the input file:$!";
$input_file_6=$ARGV[5];
open(IN_6,"$input_file_6")
     or die "can't open the input file:$!";

$output_file1=$ARGV[6];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";


my @result0=<IN_1>;
my @result1=<IN_2>;
my @result2=<IN_3>;
my @result3=<IN_4>;
my @result4=<IN_5>;
my @result5=<IN_6>;
my$num=@result0;

for(my$i=0;$i<$num;$i++){
    my@symble0=split(/\s+/,$result0[$i]);
    my@symble1=split(/\s+/,$result1[$i]);
    my@symble2=split(/\s+/,$result2[$i]);
    my@symble3=split(/\s+/,$result3[$i]);
    my@symble4=split(/\s+/,$result4[$i]);
    my@symble5=split(/\s+/,$result5[$i]); 
    print OUT_1 "$symble0[0] $symble0[1]  ";
    my$num1=@symble0;    
    for(my$j=2;$j<$num1;$j=$j+2){
       my@a=();
       my@b=();
       push(@b,$symble0[$j]);
       push(@b,$symble1[$j]);
       push(@b,$symble2[$j]);
       push(@b,$symble3[$j]);
       push(@b,$symble4[$j]);
       push(@b,$symble5[$j]);

       push(@a,$symble0[$j]);    
       if($symble1[$j] ne $symble0[$j]){
        push(@a,$symble1[$j]);  
         } 
       if(($symble2[$j] ne $symble0[$j]) && ($symble2[$j] ne $symble1[$j])){
        push(@a,$symble2[$j]);  
         } 
       if(($symble3[$j] ne $symble0[$j]) && ($symble3[$j] ne $symble1[$j]) && ($symble3[$j] ne $symble2[$j])){
        push(@a,$symble3[$j]);  
         }
        if(($symble4[$j] ne $symble0[$j]) && ($symble4[$j] ne $symble1[$j]) && ($symble4[$j] ne $symble2[$j]) && ($symble4[$j] ne $symble3[$j])){
        push(@a,$symble4[$j]);  
         }
        if(($symble5[$j] ne $symble0[$j]) && ($symble5[$j] ne $symble1[$j]) && ($symble5[$j] ne $symble2[$j]) && ($symble5[$j] ne $symble3[$j]) && ($symble5[$j] ne $symble4[$j])){
        push(@a,$symble5[$j]);  
       }
       
      my$num_a=@a;
      my$num_b=@b;
      my@d=();
      #  print OUT_1 "@a\n";
#1.26933717888257,1.99930660475427,2.23271414549271,0.119841319411888,-0.00221096074977422,2.56942001260753
      my@c=(3.03059599860542,1.86647702653426,1.05138293177861,0.477506335996396,0,0);
      for(my$m=0;$m<$num_a;$m++){     
        my$sum=0;
        for(my$n=0;$n<$num_b;$n++){
          if($a[$m] eq $b[$n]){
             $sum=$c[$n]+$sum;
             }
          }
       push(@d,$sum);
        }  
     #    print OUT_1 "@d\n";     
       my@sort1=@d;
       my$n=@sort1;
       for(my$j1=0;$j1<$n;$j1++){ 
         for(my$i1=0;$i1<$n-$j1-1;$i1++){
                my$i2=$i1+1;
            if($sort1[$i1]>$sort1[$i2]){
                my$k1=$sort1[$i1];
                $sort1[$i1]=$sort1[$i2]; 
                $sort1[$i2]=$k1;
                 }
              }
           }  
    # print OUT_1 "@sort1\n"; 
     for(my$ii=$n-1;$ii>=0;$ii--){
        for(my$jj=0;$jj<$n;$jj++){
            if($sort1[$ii] eq $d[$jj]){
                my$cha=$a[$jj]-$symble0[1];
                      my$cha1=abs($cha);
                print OUT_1 "$a[$jj] $cha1 ";
                }
              }
        }           
  print OUT_1 "   ";
         
    }    
      print OUT_1 "\n";
 }
    
