#!/usr/bin/perl

#-------------------------------------------------------
#
# Datrys Data Systems Ltd
#
# Copyright 2017
#
# generates n number of random euro millions lotto lines
#
#--------------------------------------------------------

$c=@ARGV[0];
($val,$rnd)=0;
(@arr1,@arr2)=undef;
for($l=1;$l<=$c;$l++){
        for($ar1=1;$ar1<=5;$ar1++){
                do {
                        $rnd1=int(rand(50))+1;
                        $rnd1='0'.$rnd1 if($rnd1<10);
                } until (!(grep(/^$rnd1$/,@arr1)));
                $arr1[$ar1]=$rnd1;
        }
        for($ar2=1;$ar2<=2;$ar2++){
                do {
                        $rnd2=int(rand(11))+1;
                        $rnd2='0'.$rnd2 if($rnd2<10);
                } until (!(grep(/^$rnd2$/,@arr2)));
                $arr2[$ar2]=$rnd2;
        }
        @arr1=sort{$a<=>$b}@arr1;
        @arr2=sort{$a<=>$b}@arr2;
        print "@arr1  @arr2\n";
}
