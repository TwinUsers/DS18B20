#!/usr/bin/perl
use strict;

my @slaves = split(/\n/,`cat /sys/bus/w1/devices/w1_bus_master1/w1_master_slaves`);
foreach my $s (@slaves) {
    next if $s =~/^\s*$/;
    print "[$s] ";
    my @res = split(/\n/,`cat /sys/bus/w1/devices/$s/w1_slave`); 
    if ($res[0]=~/YES$/) {
	if ($res[1]=~/=(\d+)$/) {
	    my $td = $1;
	    $td /= 1000.0;
	    printf("%3.1f\n",$td);
	} else {
	    print "NA\n";
	}
    } else {
	print "NA\n";
    }
}  
