#perl subseq.pl  positive.txt subseq.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$output_file1=$ARGV[1];   # output file
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

#$output_file8=$ARGV[8];
#open OUT_8, ">$output_file8"
#          or die "Can not open $output_file : $!";

my @str_posi=<IN_1>;
my @str_title=get_str_title(\@str_posi);
my @str_left=get_str_left(\@str_posi);
my @str_right=get_str_right(\@str_posi);
my $str_num=@str_title;

for(my$i=0;$i<$str_num;$i++){
    my@symble1=split(/\s+/,$str_title[$i]);
    
    my$p="NNNNNNNNN";
    my$loop="DDDDDD";
    chomp($str_left[$i]);
    chomp($str_right[$i]);
    my$left="NNNNNNNNNNNNN$str_left[$i]$p";
    my$right="NNNNNNNNNNNNN$str_right[$i]$p";
#   for the pre-miRNA which have one mature miRNA and two miRNAs,if $symble1[6] eq null,then have one mature miRNA
    if($symble1[8] eq ""){
       my$miR_len=$symble1[6]-$symble1[5]+1;
       my$mir1=substr($left,$symble1[5]+12,$miR_len);
       my$mir2=substr($right,$symble1[5]+12,$miR_len);

       my$left13=substr($left,$symble1[5]-1,13);
       my$right13=substr($right,$symble1[5]-1,13);
       my$left4=substr($left,$symble1[6]+13,4);
       my$right4=substr($right,$symble1[6]+13,4);
        
       $str13_1="$left13$mir1$left4";
       $str13_2="$right13$mir2$right4";
       $str13=reverse$str13_2;
       my$string134="$str13_1$loop$str13";
     #print OUT_6 "$symble1[0] $left4 $right4";
      #############9nt#################
       my$left9=substr($left,$symble1[5]+3,9);
       my$right9=substr($right,$symble1[5]+3,9);
       $str9_1="$left9$mir1";
       $str9_2="$right9$mir2";
       $str9=reverse$str9_2;
       my$string9="$str9_1$loop$str9";
       #################5nt############
       my$left5=substr($left,$symble1[5]+7,5);
       my$right5=substr($right,$symble1[5]+7,5);
       $str5_1="$left5$mir1";
       $str5_2="$right5$mir2";
       $str5=reverse$str5_2;
       my$string5="$str5_1$loop$str5";
      ###################3nt############
       my$left3=substr($left,$symble1[5]+9,3);
       my$right3=substr($right,$symble1[5]+9,3);
       $str3_1="$left3$mir1";
       $str3_2="$right3$mir2";
       $str3=reverse$str3_2;
       my$string3="$str3_1$loop$str3";
       #########duplex#####################
       my$left2=substr($left,$symble1[5]+10,2);
       my$right2=substr($right,$symble1[5]+10,2);
       $str2_1="$left2$mir1";
       $str2_2="$right2$mir2";
       $str2=reverse$str2_2;      
       my$string0="$str2_1$loop$str2";
   ########################right 3nt#############
       my$rleft3=substr($left,$symble1[6]+13,3);
       my$rright3=substr($right,$symble1[6]+13,3);
       $rstr3_1="$mir1$rleft3";
       $rstr3_2="$mir2$rright3";
       $rstr3=reverse$rstr3_2;      
       my$rstring3="$rstr3_1$loop$rstr3";

   
##############################miRNA 38nt###################
       my$str38=substr($left,$symble1[3]+14,6);
       my$strr38=substr($right,$symble1[3]+14,6);
       $strr38=reverse $strr38;
       my$string38="$str38$loop$strr38";
       my$count1=0;
       my$count1+=($string38=~/(-)/g);
     
       my$str912=substr($left,$symble1[3]+21,4);
       my$strr912=substr($right,$symble1[3]+21,4);
       $strr912=reverse $strr912;
       my$string912="$str912$loop$strr912";
       my$count2=0;
       my$count2+=($string912=~s/-/-/g);


       my$str52=substr($left,$symble1[3]+10,4);
       my$strr52=substr($right,$symble1[3]+10,4);
       $strr52=reverse $strr52;
       my$string52="$str52$loop$strr52";

       my$count3=0;
       my$count3+=($string52=~s/-/-/g);
       my$count4=0;
       $count4+=($string0=~s/A/A/gi);         
       my$count5=0;
       $count5+=($string0=~s/C/C/gi);        
       my$count6=0;
       $count6+=($string0=~s/G/G/gi);
       my$count7=0;
       $count7+=($string0=~s/U/U/gi);
  
       print OUT_7 "$str_title[$i]  ";
       #######################the first neclo#################33
       my$chara_star=substr($left,$symble1[3]+12,1);

       #########################GC content#####################3
       $mir_1="$mir1$p";
       $mir_2="$mir2$p";
       for($a=0;$a<25;$a++){
          my$chara1=substr($mir_1,$a,1);
          my$chara2=substr($mir_2,$a,1);
          print OUT_8 "$chara1  $chara2\n";
          if(($chara1 eq "a" & $chara2 eq "a") || ($chara1 eq "a" &  $chara2 eq "A") || ($chara1 eq "A" & $chara2 eq "a") || ($chara1 eq "A" &  $chara2 eq "A")){
           $num=1;
           }
          if(($chara1 eq "a" & $chara2 eq "c") || ($chara1 eq "a" &  $chara2 eq "C") || ($chara1 eq "A" & $chara2 eq "c") || ($chara1 eq "A" &  $chara2 eq "C") ){ 
             $num=2;
           }
          if(($chara1 eq "a" & $chara2 eq "g") || ($chara1 eq "a" &  $chara2 eq "G") || ($chara1 eq "A" & $chara2 eq "g") || ($chara1 eq "A" &  $chara2 eq "G")){
           $num=3;
           }
          if(($chara1 eq "a" & $chara2 eq "u") || ($chara1 eq "a" &  $chara2 eq "U") || ($chara1 eq "A" & $chara2 eq "u") || ($chara1 eq "A" &  $chara2 eq "U") ){
             $num=4;
           }
          if(($chara1 eq "c" & $chara2 eq "a") || ($chara1 eq "c" &  $chara2 eq "A") || ($chara1 eq "C" & $chara2 eq "a") || ($chara1 eq "C" &  $chara2 eq "A")){
           $num=5;
           }
           if(($chara1 eq "c" & $chara2 eq "c") || ($chara1 eq "c" &  $chara2 eq "C") || ($chara1 eq "C" & $chara2 eq "c") || ($chara1 eq "C" &  $chara2 eq "C") ){
             $num=6;
           }
            if(($chara1 eq "c" & $chara2 eq "g") || ($chara1 eq "c" &  $chara2 eq "G") || ($chara1 eq "C" & $chara2 eq "g") || ($chara1 eq "C" &  $chara2 eq "G")){
           $num=7;
           }
           if(($chara1 eq "c" & $chara2 eq "u") || ($chara1 eq "c" &  $chara2 eq "U") || ($chara1 eq "C" & $chara2 eq "u") || ($chara1 eq "C" &  $chara2 eq "U") ){
             $num=8;
           }
           if(($chara1 eq "g" & $chara2 eq "a") || ($chara1 eq "g" &  $chara2 eq "A") || ($chara1 eq "G" & $chara2 eq "a") || ($chara1 eq "G" &  $chara2 eq "A")){
           $num=9;
           }
           if(($chara1 eq "g" & $chara2 eq "c") || ($chara1 eq "g" &  $chara2 eq "C") || ($chara1 eq "G" & $chara2 eq "c") || ($chara1 eq "G" &  $chara2 eq "C") ){
             $num=10;
           }
            if(($chara1 eq "g" & $chara2 eq "g") || ($chara1 eq "g" &  $chara2 eq "G") || ($chara1 eq "G" & $chara2 eq "g") || ($chara1 eq "G" &  $chara2 eq "G")){
           $num=11;
           }
           if(($chara1 eq "g" & $chara2 eq "u") || ($chara1 eq "g" &  $chara2 eq "U") || ($chara1 eq "G" & $chara2 eq "u") || ($chara1 eq "G" &  $chara2 eq "U") ){
             $num=12;
          }
           if(($chara1 eq "u" & $chara2 eq "a") || ($chara1 eq "u" &  $chara2 eq "A") || ($chara1 eq "U" & $chara2 eq "a") || ($chara1 eq "U" &  $chara2 eq "A")){
           $num=13;
           }
           if(($chara1 eq "u" & $chara2 eq "c") || ($chara1 eq "u" &  $chara2 eq "C") || ($chara1 eq "U" & $chara2 eq "c") || ($chara1 eq "U" &  $chara2 eq "C") ){
             $num=14;
           }
            if(($chara1 eq "u" & $chara2 eq "g") || ($chara1 eq "u" &  $chara2 eq "G") || ($chara1 eq "U" & $chara2 eq "g") || ($chara1 eq "U" &  $chara2 eq "G")){
           $num=15;
           }
           if(($chara1 eq "u" & $chara2 eq "u") || ($chara1 eq "u" &  $chara2 eq "U") || ($chara1 eq "U" & $chara2 eq "u") || ($chara1 eq "U" &  $chara2 eq "U") ){
             $num=16;
         }
            if(($chara1 eq "a" & $chara2 eq "-") || ($chara1 eq "A" &  $chara2 eq "-") ){
             $num=17;
         }
             if(($chara1 eq "c" & $chara2 eq "-") || ($chara1 eq "C" &  $chara2 eq "-") ){
             $num=18;
         }
              if(($chara1 eq "g" & $chara2 eq "-") || ($chara1 eq "G" &  $chara2 eq "-") ){
             $num=19;
         }
              if(($chara1 eq "u" & $chara2 eq "-") || ($chara1 eq "U" &  $chara2 eq "-") ){
             $num=20;
         }
            if(($chara1 eq "-" & $chara2 eq "a") || ($chara1 eq "-" &  $chara2 eq "A") ){
             $num=21;
         }
             if(($chara1 eq "-" & $chara2 eq "c") || ($chara1 eq "-" &  $chara2 eq "C") ){
             $num=22;
         }
              if(($chara1 eq "-" & $chara2 eq "g") || ($chara1 eq "-" &  $chara2 eq "G") ){
             $num=23;
         }
              if(($chara1 eq "-" & $chara2 eq "u") || ($chara1 eq "-" &  $chara2 eq "U") ){
             $num=24;
         }
             if(($chara1 eq "-" & $chara2 eq "-") ){
             $num=25;
         }
             if(($chara1 eq "N" & $chara2 eq "N") ){
             $num=0;
         }



        print OUT_7 "$num ";
       }

        my$sa=$chara_star;
        if($sa eq 'A' || $sa eq 'a'){
         $chara_star =10;
       }
        elsif($sa eq 'C' || $sa eq 'c'){
         $chara_star=11;
       }
        elsif($sa eq 'G' ||$sa eq 'g'){
         $chara_star =12;
       }
        elsif($sa eq 'U' || $sa eq 'u'){
         $chara_star=13;
       }
       elsif($sa eq '-'){
         $chara_star=14;
       }

         my$len=$symble1[7]-$symble1[3]+1;
   #      print OUT_7 "$str_title[$i]$count1   $count2   $count3      $count4  $count5  $count6 $count7       $num1  $num2  $num3  $num4  $num5  $num6  $num7  $num8  $num9  $num10  $num11  $num12  $num13  $num14  $num15  $num16      $chara_star     $len\n";
        print OUT_7 "    $chara_star     $len\n";
         print OUT_2 "$str_title[$i]$string3\n";
         print OUT_1 "$str_title[$i]$string0\n";
         print OUT_5 "$str_title[$i]$rstring3\n";
         print OUT_3 "$str_title[$i]$string5\n";
         print OUT_6 "$str_title[$i]$string134\n";
         print OUT_4 "$str_title[$i]$string9\n";
   
    }
    else{
       my$miR_len1=$symble1[10]-$symble1[9]+1;
       my$mir11=substr($left,$symble1[9]+12,$miR_len1);
       my$mir21=substr($right,$symble1[9]+12,$miR_len1);

       my$left131=substr($left,$symble1[9]-1,13);
       my$right131=substr($right,$symble1[9]-1,13);
       my$left41=substr($left,$symble1[10]+13,4);
       my$right41=substr($right,$symble1[10]+13,4);
        
       $str13_11="$left131$mir11$left41";
       $str13_21="$right131$mir21$right41";
       $str131=reverse$str13_21;
       my$string1341="$str13_11$loop$str131";
     #print OUT_6 "$symble1[0] $left4 $right4";
      #############9nt#################
       my$left91=substr($left,$symble1[9]+3,9);
       my$right91=substr($right,$symble1[9]+3,9);
       $str9_11="$left91$mir11";
       $str9_21="$right91$mir21";
       $str91=reverse$str9_21;
       my$string91="$str9_11$loop$str91";
       #################5nt############
       my$left51=substr($left,$symble1[9]+7,5);
       my$right51=substr($right,$symble1[9]+7,5);
       $str5_11="$left51$mir11";
       $str5_21="$right51$mir21";
       $str51=reverse$str5_21;
       my$string51="$str5_11$loop$str51";
      ###################3nt############
       my$left31=substr($left,$symble1[9]+9,3);
       my$right31=substr($right,$symble1[9]+9,3);
       $str3_11="$left31$mir11";
       $str3_21="$right31$mir21";
       $str31=reverse$str3_21;
       my$string31="$str3_11$loop$str31";
       #########duplex#####################
       my$left21=substr($left,$symble1[9]+10,2);
       my$right21=substr($right,$symble1[9]+10,2);
       $str2_11="$left21$mir11";
       $str2_21="$right21$mir21";
       $str21=reverse$str2_21;      
       my$string01="$str2_11$loop$str21";
   ########################right 3nt#############
       my$rleft31=substr($left,$symble1[10]+13,3);
       my$rright31=substr($right,$symble1[10]+13,3);
       $rstr3_11="$mir11$rleft31";
       $rstr3_21="$mir21$rright31";
       $rstr31=reverse$rstr3_21;      
       my$rstring31="$rstr3_11$loop$rstr31";
  
       my$str388=substr($left,$symble1[5]+14,6);
       my$strr388=substr($right,$symble1[5]+14,6);
       $strr388=reverse $strr388;
       my$string388="$str388$loop$strr388";
       my$count11=0;
       my$count11+=($string388=~s/-/-/g);


       my$str9122=substr($left,$symble1[5]+21,4);
       my$strr9122=substr($right,$symble1[5]+21,4);
       $strr9122=reverse $strr9122;
       my$string9122="$str9122$loop$strr9122";
       my$count22=0;
       my$count22+=($string9122=~s/-/-/g);


       my$str522=substr($left,$symble1[5]+10,4);
       my$strr522=substr($right,$symble1[5]+10,4);
       $strr522=reverse $strr522;
       my$string522="$str522$loop$strr522";
       my$count33=0;
       my$count33+=($string522=~s/-/-/g);

       my$count44=0;
       $count44+=($string00=~s/A/A/gi);
     
       my$count55=0;
       $count55+=($string00=~s/C/C/gi);

       my$count66=0;
       $count66+=($string00=~s/G/G/gi);

       my$count77=0;
       $count77+=($string00=~s/U/U/gi);

       my$chara_star0=substr($left,$symble1[5]+12,1);  
       ########################GC content######################
       print OUT_7 "$str_title[$i]  ";
       my$num11=0;
       $mir_11="$mir11$p";
       $mir_21="$mir21$p";
       for($aa=0;$aa<25;$aa++){
          my$chara11=substr($mir_11,$aa,1);
          my$chara22=substr($mir_21,$aa,1);
         
          if(($chara11 eq "a" & $chara22 eq "a") || ($chara11 eq "a" &  $chara22 eq "A") || ($chara11 eq "A" & $chara22 eq "a") || ($chara11 eq "A" &  $chara22 eq "A")){
           $num11=1;
           }
          if(($chara11 eq "a" & $chara22 eq "c") || ($chara11 eq "a" &  $chara22 eq "C") || ($chara11 eq "A" & $chara22 eq "c") || ($chara11 eq "A" &  $chara22 eq "C") ){
             $num11=2;
           }
          if(($chara11 eq "a" & $chara22 eq "g") || ($chara11 eq "a" &  $chara22 eq "G") || ($chara11 eq "A" & $chara22 eq "g") || ($chara11 eq "A" &  $chara22 eq "G")){
           $num11=3;
           }
          if(($chara11 eq "a" & $chara22 eq "u") || ($chara11 eq "a" &  $chara22 eq "U") || ($chara11 eq "A" & $chara22 eq "u") || ($chara11 eq "A" &  $chara22 eq "U") ){
             $num11=4;
           }

           if(($chara11 eq "c" & $chara22 eq "a") || ($chara11 eq "c" &  $chara22 eq "A") || ($chara11 eq "C" & $chara22 eq "a") || ($chara11 eq "C" &  $chara22 eq "A")){
           $num11=5;
           }
           if(($chara11 eq "c" & $chara22 eq "c") || ($chara11 eq "c" &  $chara22 eq "C") || ($chara11 eq "C" & $chara22 eq "c") || ($chara11 eq "C" &  $chara22 eq "C") ){
             $num11=6;
           }
            if(($chara11 eq "c" & $chara22 eq "g") || ($chara11 eq "c" &  $chara22 eq "G") || ($chara11 eq "C" & $chara22 eq "g") || ($chara11 eq "C" &  $chara22 eq "G")){
           $num11=7;
           }
           if(($chara11 eq "c" & $chara22 eq "u") || ($chara11 eq "c" &  $chara22 eq "U") || ($chara11 eq "C" & $chara22 eq "u") || ($chara11 eq "C" &  $chara22 eq "U") ){
             $num11=8;
           }
           if(($chara11 eq "g" & $chara22 eq "a") || ($chara11 eq "g" &  $chara22 eq "A") || ($chara11 eq "G" & $chara22 eq "a") || ($chara11 eq "G" &  $chara22 eq "A")){
           $num11=9;
           }
           if(($chara11 eq "g" & $chara22 eq "c") || ($chara11 eq "g" &  $chara22 eq "C") || ($chara11 eq "G" & $chara22 eq "c") || ($chara11 eq "G" &  $chara22 eq "C") ){
             $num11=10;
           }
            if(($chara11 eq "g" & $chara22 eq "g") || ($chara11 eq "g" &  $chara22 eq "G") || ($chara11 eq "G" & $chara22 eq "g") || ($chara11 eq "G" &  $chara22 eq "G")){
           $num11=11;
           }
           if(($chara11 eq "g" & $chara22 eq "u") || ($chara11 eq "g" &  $chara22 eq "U") || ($chara11 eq "G" & $chara22 eq "u") || ($chara11 eq "G" &  $chara22 eq "U") ){
             $num11=12;
          }
           if(($chara11 eq "u" & $chara22 eq "a") || ($chara11 eq "u" &  $chara22 eq "A") || ($chara11 eq "U" & $chara22 eq "a") || ($chara11 eq "U" &  $chara22 eq "A")){
           $num11=13;
           }
           if(($chara11 eq "u" & $chara22 eq "c") || ($chara11 eq "u" &  $chara22 eq "C") || ($chara11 eq "U" & $chara22 eq "c") || ($chara11 eq "U" &  $chara22 eq "C") ){
             $num11=14;
           }
            if(($chara11 eq "u" & $chara22 eq "g") || ($chara11 eq "u" &  $chara22 eq "G") || ($chara11 eq "U" & $chara22 eq "g") || ($chara11 eq "U" &  $chara22 eq "G")){
           $num11=15;
           }
           if(($chara11 eq "u" & $chara22 eq "u") || ($chara11 eq "u" &  $chara22 eq "U") || ($chara11 eq "U" & $chara22 eq "u") || ($chara11 eq "U" &  $chara22 eq "U") ){
             $num11=16;
         }
            if(($chara11 eq "a" & $chara22 eq "-") || ($chara11 eq "A" &  $chara22 eq "-") ){
             $num11=17;
         }
             if(($chara11 eq "c" & $chara22 eq "-") || ($chara11 eq "C" &  $chara22 eq "-") ){
             $num11=18;
         }
              if(($chara11 eq "g" & $chara22 eq "-") || ($chara11 eq "G" &  $chara22 eq "-") ){
             $num11=19;
         }
              if(($chara11 eq "u" & $chara22 eq "-") || ($chara11 eq "U" &  $chara22 eq "-") ){
             $num11=20;
         }
            if(($chara11 eq "-" & $chara22 eq "a") || ($chara11 eq "-" &  $chara22 eq "A") ){
             $num11=21;
         }
             if(($chara11 eq "-" & $chara22 eq "c") || ($chara11 eq "-" &  $chara22 eq "C") ){
             $num11=22;
         }
              if(($chara11 eq "-" & $chara22 eq "g") || ($chara11 eq "-" &  $chara22 eq "G") ){
             $num11=23;
         }
              if(($chara11 eq "-" & $chara22 eq "u") || ($chara11 eq "-" &  $chara22 eq "U") ){
             $num11=24;
         }
             if(($chara11 eq "-" & $chara22 eq "-") ){
             $num11=25;
         }
             if(($chara11 eq "N" & $chara22 eq "N") ){
             $num11=0;
         }

         print OUT_7 "$num11  ";
    }
        my$saa=$chara_star0;
        if($saa eq 'A' || $saa eq 'a'){
         $chara_star0 =10;
       }
        elsif($saa eq 'C' || $saa eq 'c'){
         $chara_star0=11;
       }
        elsif($saa eq 'G' || $saa eq 'g'){
         $chara_star0 =12;
       }
        elsif($saa eq 'U' || $saa eq 'u'){
         $chara_star0=13;
       }
       elsif($saa eq '-' ){
         $chara_star0=14;
       }

        my$len1=$symble1[11]-$symble1[5]+1;
    
          print OUT_7 "    $chara_star0     $len1\n";
          print OUT_2 "$str_title[$i]$string31\n";
          print OUT_1 "$str_title[$i]$string01\n";
          print OUT_5 "$str_title[$i]$rstring31\n";

          print OUT_3 "$str_title[$i]$string51\n";
          print OUT_6 "$str_title[$i]$string1341\n";
          print OUT_4 "$str_title[$i]$string91\n";
     #  }
    }
    
 }


sub get_pre_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       push(@ret0,@$data[$i]);
   }
  return(@ret0);
}

sub get_pre_str{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+2;
            push(@ret1,@$data[$j])
  }
 return(@ret1);
}
sub get_pre_seq{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+1;
            push(@ret2,@$data[$j])
  }
 return(@ret2);
}
sub get_str_title{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       push(@ret3,@$data[$i]);
   }
  return(@ret3);
}

sub get_str_left{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+1;
            push(@ret4,@$data[$j])
  }
 return(@ret4);
}
sub get_str_right{
my($data)=@_;
my$datanum=@$data;
for(my $i=0;$i<$datanum-2;$i=$i+3){
       my $j=$i+2;
            push(@ret5,@$data[$j])
  }
 return(@ret5);
}

