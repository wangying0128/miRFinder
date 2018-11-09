#perl 1.pl snp-position.txt nor-pre-miRNA.txt nor-pre-miRNA-position.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";


$output_file1=$ARGV[1];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @str1=<IN_1>;
my $num1=@str1;

  for(my$i=0;$i<$num1;$i++){
        my@symble1=split(/\s+/,$str1[$i]);
        chomp($str1[$i]);
         my$chara1=substr($symble1[1],0,1);
         my$chara2=substr($symble1[2],0,1);
         my$chara3=substr($symble1[3],0,1);
         my$chara4=substr($symble1[4],0,1);
         my$chara5=substr($symble1[5],0,1);
         my$chara6=substr($symble1[6],0,1);
         my$chara7=substr($symble1[7],0,1);
         my$chara8=substr($symble1[8],0,1);
         my$chara9=substr($symble1[9],0,1);
         my$chara10=substr($symble1[10],0,1);
         my$chara11=substr($symble1[11],0,1);
         my$chara12=substr($symble1[12],0,1);
         my$chara13=substr($symble1[13],0,1);
         my$chara14=substr($symble1[14],0,1);
         my$chara15=substr($symble1[15],0,1);
         my$chara16=substr($symble1[16],0,1);
         my$chara17=substr($symble1[17],0,1);
         my$chara18=substr($symble1[18],0,1);
         my$chara19=substr($symble1[19],0,1);
         my$chara20=substr($symble1[20],0,1);
         my$chara21=substr($symble1[21],0,1);
         my$chara22=substr($symble1[22],0,1);
         my$chara23=substr($symble1[23],0,1);
         my$chara24=substr($symble1[24],0,1);
         my$chara25=substr($symble1[25],0,1);
         my$chara26=substr($symble1[26],0,1);
         my$chara27=substr($symble1[27],0,1);
         my$chara28=substr($symble1[28],0,1);
         my$chara29=substr($symble1[29],0,1);

my$chara30=substr($symble1[30],0,1);
         my$chara31=substr($symble1[31],0,1);
         my$chara32=substr($symble1[32],0,1);
         my$chara33=substr($symble1[33],0,1);
         my$chara34=substr($symble1[34],0,1);
         my$chara35=substr($symble1[35],0,1);
         my$chara36=substr($symble1[36],0,1);
         my$chara37=substr($symble1[37],0,1);
         my$chara38=substr($symble1[38],0,1);
         my$chara39=substr($symble1[39],0,1);

my$chara40=substr($symble1[40],0,1);
         my$chara41=substr($symble1[41],0,1);
         my$chara42=substr($symble1[42],0,1);
         my$chara44=substr($symble1[44],0,1);
         my$chara44=substr($symble1[44],0,1);
         my$chara45=substr($symble1[45],0,1);
         my$chara46=substr($symble1[46],0,1);
         my$chara47=substr($symble1[47],0,1);
         my$chara48=substr($symble1[48],0,1);
         my$chara49=substr($symble1[49],0,1);

my$chara50=substr($symble1[50],0,1);
         my$chara51=substr($symble1[51],0,1);
         my$chara52=substr($symble1[52],0,1);
         my$chara55=substr($symble1[55],0,1);
         my$chara55=substr($symble1[55],0,1);
         my$chara55=substr($symble1[55],0,1);
         my$chara56=substr($symble1[56],0,1);
         my$chara57=substr($symble1[57],0,1);
         my$chara58=substr($symble1[58],0,1);
         my$chara59=substr($symble1[59],0,1);
my$chara60=substr($symble1[60],0,1);
         my$chara61=substr($symble1[61],0,1);
         my$chara62=substr($symble1[62],0,1);
         my$chara66=substr($symble1[66],0,1);
         my$chara66=substr($symble1[66],0,1);
         my$chara66=substr($symble1[66],0,1);
         my$chara66=substr($symble1[66],0,1);
         my$chara67=substr($symble1[67],0,1);
         my$chara68=substr($symble1[68],0,1);
         my$chara69=substr($symble1[69],0,1);

       if($chara1 eq "A" || $chara1 eq "C"  || $chara1 eq "G" || $chara1 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[1]\n";
       }
         
       elsif($chara2 eq "A" || $chara2 eq "C"  || $chara2 eq "G" || $chara2 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[2]\n";
       }
       elsif($chara3 eq "A" || $chara3 eq "C"  || $chara3 eq "G" || $chara3 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[3]";
       }
elsif($chara4 eq "A" || $chara4 eq "C"  || $chara4 eq "G" || $chara4 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[4]";
       }
elsif($chara5 eq "A" || $chara5 eq "C"  || $chara5 eq "G" || $chara5 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[5]";
       }
elsif($chara6 eq "A" || $chara6 eq "C"  || $chara6 eq "G" || $chara6 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[6]";
       }
elsif($chara7 eq "A" || $chara7 eq "C"  || $chara7 eq "G" || $chara7 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[7]\n";
       }
elsif($chara8 eq "A" || $chara8 eq "C"  || $chara8 eq "G" || $chara8 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[8]\n";
       }
elsif($chara9 eq "A" || $chara9 eq "C"  || $chara9 eq "G" || $chara9 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[9]\n";
       }
elsif($chara10 eq "A" || $chara10 eq "C"  || $chara10 eq "G" || $chara10 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[10]\n";
       }
elsif($chara11 eq "A" || $chara11 eq "C"  || $chara11 eq "G" || $chara11 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[11]\n";
       }
elsif($chara12 eq "A" || $chara12 eq "C"  || $chara12 eq "G" || $chara12 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[12]\n";
       }
elsif($chara13 eq "A" || $chara13 eq "C"  || $chara13 eq "G" || $chara13 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[13]\n";
       }
elsif($chara14 eq "A" || $chara14 eq "C"  || $chara14 eq "G" || $chara14 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[14]\n";
       }
elsif($chara15 eq "A" || $chara15 eq "C"  || $chara15 eq "G" || $chara15 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[15]\n";
       }
elsif($chara16 eq "A" || $chara16 eq "C"  || $chara16 eq "G" || $chara16 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[16]\n";
       }
elsif($chara17 eq "A" || $chara17 eq "C"  || $chara17 eq "G" || $chara17 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[17]\n";
       }
elsif($chara18 eq "A" || $chara18 eq "C"  || $chara18 eq "G" || $chara18 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[18]\n";
       }
elsif($chara19 eq "A" || $chara19 eq "C"  || $chara19 eq "G" || $chara19 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[19]\n";
       }

elsif($chara20 eq "A" || $chara20 eq "C"  || $chara20 eq "G" || $chara20 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[20]\n";
       }
elsif($chara21 eq "A" || $chara21 eq "C"  || $chara21 eq "G" || $chara21 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[21]\n";
       }
elsif($chara22 eq "A" || $chara22 eq "C"  || $chara22 eq "G" || $chara22 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[22]\n";
       }
elsif($chara23 eq "A" || $chara23 eq "C"  || $chara23 eq "G" || $chara23 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[23]\n";
       }
elsif($chara24 eq "A" || $chara24 eq "C"  || $chara24 eq "G" || $chara24 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[24]\n";
       }
elsif($chara25 eq "A" || $chara25 eq "C"  || $chara25 eq "G" || $chara25 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[25]\n";
       }
elsif($chara26 eq "A" || $chara26 eq "C"  || $chara26 eq "G" || $chara26 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[26]\n";
       }
elsif($chara27 eq "A" || $chara27 eq "C"  || $chara27 eq "G" || $chara27 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[27]\n";
       }
elsif($chara28 eq "A" || $chara28 eq "C"  || $chara28 eq "G" || $chara28 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[28]\n";
       }
elsif($chara29 eq "A" || $chara29 eq "C"  || $chara29 eq "G" || $chara29 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[29]\n";
       }

elsif($chara30 eq "A" || $chara30 eq "C"  || $chara30 eq "G" || $chara30 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[30]\n";
       }
elsif($chara31 eq "A" || $chara31 eq "C"  || $chara31 eq "G" || $chara31 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[31]\n";
       }
elsif($chara32 eq "A" || $chara32 eq "C"  || $chara32 eq "G" || $chara32 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[32]\n";
       }
elsif($chara33 eq "A" || $chara33 eq "C"  || $chara33 eq "G" || $chara33 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[33]\n";
       }
elsif($chara34 eq "A" || $chara34 eq "C"  || $chara34 eq "G" || $chara34 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[34]\n";
       }
elsif($chara35 eq "A" || $chara35 eq "C"  || $chara35 eq "G" || $chara35 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[35]\n";
       }
elsif($chara36 eq "A" || $chara36 eq "C"  || $chara36 eq "G" || $chara36 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[36]\n";
       }
elsif($chara37 eq "A" || $chara37 eq "C"  || $chara37 eq "G" || $chara37 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[37]\n";
       }
elsif($chara38 eq "A" || $chara38 eq "C"  || $chara38 eq "G" || $chara38 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[38]\n";
       }
elsif($chara39 eq "A" || $chara39 eq "C"  || $chara39 eq "G" || $chara39 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[39]\n";
       }
      elsif($chara40 eq "A" || $chara40 eq "C"  || $chara40 eq "G" || $chara40 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[40]\n";
       }
elsif($chara41 eq "A" || $chara41 eq "C"  || $chara41 eq "G" || $chara41 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[41]\n";
       }
elsif($chara42 eq "A" || $chara42 eq "C"  || $chara42 eq "G" || $chara42 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[42]\n";
       }
elsif($chara44 eq "A" || $chara44 eq "C"  || $chara44 eq "G" || $chara44 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[44]\n";
       }
elsif($chara44 eq "A" || $chara44 eq "C"  || $chara44 eq "G" || $chara44 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[44]\n";
       }
elsif($chara45 eq "A" || $chara45 eq "C"  || $chara45 eq "G" || $chara45 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[45]\n";
       }
elsif($chara46 eq "A" || $chara46 eq "C"  || $chara46 eq "G" || $chara46 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[46]\n";
       }
elsif($chara47 eq "A" || $chara47 eq "C"  || $chara47 eq "G" || $chara47 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[47]\n";
       }
elsif($chara48 eq "A" || $chara48 eq "C"  || $chara48 eq "G" || $chara48 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[48]\n";
       }
elsif($chara49 eq "A" || $chara49 eq "C"  || $chara49 eq "G" || $chara49 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[49]\n";}
elsif($chara50 eq "A" || $chara50 eq "C"  || $chara50 eq "G" || $chara50 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[50]\n";
       }
elsif($chara51 eq "A" || $chara51 eq "C"  || $chara51 eq "G" || $chara51 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[51]\n";
       }
elsif($chara52 eq "A" || $chara52 eq "C"  || $chara52 eq "G" || $chara52 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[52]\n";
       }
elsif($chara55 eq "A" || $chara55 eq "C"  || $chara55 eq "G" || $chara55 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[55]\n";
       }
elsif($chara55 eq "A" || $chara55 eq "C"  || $chara55 eq "G" || $chara55 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[55]\n";
       }
elsif($chara55 eq "A" || $chara55 eq "C"  || $chara55 eq "G" || $chara55 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[55]\n";
       }
elsif($chara56 eq "A" || $chara56 eq "C"  || $chara56 eq "G" || $chara56 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[56]\n";
       }
elsif($chara57 eq "A" || $chara57 eq "C"  || $chara57 eq "G" || $chara57 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[57]\n";
       }
elsif($chara58 eq "A" || $chara58 eq "C"  || $chara58 eq "G" || $chara58 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[58]\n";
       }
elsif($chara59 eq "A" || $chara59 eq "C"  || $chara59 eq "G" || $chara59 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[59]\n";
}
elsif($chara60 eq "A" || $chara60 eq "C"  || $chara60 eq "G" || $chara60 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[60]\n";
       }
elsif($chara61 eq "A" || $chara61 eq "C"  || $chara61 eq "G" || $chara61 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[61]\n";
       }
elsif($chara62 eq "A" || $chara62 eq "C"  || $chara62 eq "G" || $chara62 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[62]\n";
       }
elsif($chara66 eq "A" || $chara66 eq "C"  || $chara66 eq "G" || $chara66 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[66]\n";
       }
elsif($chara66 eq "A" || $chara66 eq "C"  || $chara66 eq "G" || $chara66 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[66]\n";
       }
elsif($chara66 eq "A" || $chara66 eq "C"  || $chara66 eq "G" || $chara66 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[66]\n";
       }
elsif($chara66 eq "A" || $chara66 eq "C"  || $chara66 eq "G" || $chara66 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[66]\n";
       }
elsif($chara67 eq "A" || $chara67 eq "C"  || $chara67 eq "G" || $chara67 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[67]\n";
       }
elsif($chara68 eq "A" || $chara68 eq "C"  || $chara68 eq "G" || $chara68 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[68]\n";
       }
elsif($chara69 eq "A" || $chara69 eq "C"  || $chara69 eq "G" || $chara69 eq "U"){
           print OUT_1 "$symble1[0]\n$symble1[69]\n";
}
  }#for
