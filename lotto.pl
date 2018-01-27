#!perl

use strict;

#-------------------------------------------------------
#
# Datrys Data Systems Ltd
#
# Copyright 2017
#
# mike.kelly@datrysystems.com
#
# generates n number of random euro millions lotto lines
# where <n> passed in on cli
#
#--------------------------------------------------------

my $c=@ARGV[0];

print "**** Euro Millions Generator ****\n";
for(my $l=1;$l<=$c;$l++){
        my (@arr1, @arr2)=undef;
        for(my $ar1=1;$ar1<=5;$ar1++){
                my ($rnd1);
                do {
                        $rnd1=int(rand(50))+1;
                        $rnd1='0'.$rnd1 if($rnd1<10);
                } until (!(grep(/^$rnd1$/,@arr1)));
                $arr1[$ar1]=$rnd1;
        }
        for(my $ar2=1;$ar2<=2;$ar2++){
                my ($rnd2);
                do {
                        $rnd2=int(rand(11))+1;
                        $rnd2='0'.$rnd2 if($rnd2<10);
                } until (!(grep(/^$rnd2$/,@arr2)));
                $arr2[$ar2]=$rnd2;
        }
        @arr1=sort{$a<=>$b}@arr1;
        @arr2=sort{$a<=>$b}@arr2;
        print "Line $l => @arr1  @arr2\n";
}
print "*********************************\n";
