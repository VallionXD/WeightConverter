#!/usr/bin/perl

use strict;
use warnings;

# Weight multipliers
my $kgBase = 0.453592;
my $lbsBase = 2.20462;

# User input for conversion type
print "What type of conversion do you need?\n";
print "1. KG to LBS\n";
print "2. LBS to KG\n";
print "Select an option using numbers (1 or 2): ";
my $conversion = <STDIN>;
chomp($conversion);

print "\n";

# Check conversion type
if ($conversion == 1) {
    # Get weight in KG
    print "Enter the amount of KG to convert: ";
    my $weight = <STDIN>;
    chomp($weight);

    # Convert weight to LBS
    my $convertedWeight = int($weight * $lbsBase * 10) / 10;

    # Print converted weight
    print "\n$weight KG = $convertedWeight LBS\n";
} elsif ($conversion == 2) {
    # Get weight in LBS
    print "Enter the amount of LBS to convert: ";
    my $weight = <STDIN>;
    chomp($weight);

    # Convert weight to KG
    my $convertedWeight = int($weight * $kgBase * 10) / 10;

    # Print converted weight
    print "\n$weight LBS = $convertedWeight KG\n";
}
