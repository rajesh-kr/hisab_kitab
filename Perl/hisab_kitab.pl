#!/usr/bin/perl

use strict;
use warnings;

my $individuals;
my $toPay;
my $total;

while(<>) {
	chomp;
	next unless validateInput($_);
	my @spl = split (' - ');
	$individuals->{$spl[0]} += $spl[1]; 
}

printDash();
print "Individual Kharcha :\n";
printDash();

for my $k (keys %$individuals) {
	print "$k : Rs. $individuals->{$k}\n";
	$total += $individuals->{$k};
}

printDash();
print "Total Kharcha : Rs. $total\n";
printDash();
print "Each one to pay : \n";
printDash();

$total /= 3;
for my $k (keys %$individuals) {
	$toPay->{$k} = $total - $individuals->{$k};
	print "$k : Rs. ", sprintf("%.0f", $toPay->{$k}), "\n";
}
printDash();

sub printDash {
	print "-------------------------\n";
}

sub validateInput {
	my $input = shift;

	return 1 if $input =~ m/^\w+? - \d+?(?: - .*)?$/;

	warn("Validation not passed : $input. Ignoring.");
	return 0;
}
