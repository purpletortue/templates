#!/usr/bin/perl
use strict;                           ###
use warnings;                           #
use Socket;                             #
use Pod::Usage;                         # Default Modules
use Getopt::Long;                       #
Getopt::Long::Configure ("bundling");   #
use vars qw{$VERSION};                  #
our $VERSION = '0.1.0';               ###

my $output_location = '-';  #default to STDOUT
GetOptions ( 'out=s'      => \$output_location,
             'usage'      => sub { pod2usage( -verbose => 0, -exitval => 1 ) },
             'help'       => sub { pod2usage( -verbose => 1, -exitval => 1 ) },
             'man'        => sub { pod2usage( -verbose => 2, -exitval => 1 ) },
             'version'    => sub { print "$0  Version: $VERSION\n"; exit 1; }
           ) or pod2usage( -verbose => 0 );

open ( OUTPUT, ">$output_location") || die "Cannot open $output_location for writing";

close OUTPUT;
exit;
__END__

=head1 NAME

template.pl - Short description here.

=head1 SYNOPSIS

template.pl [--out filename] [--usage] [--help] [--man] [--version]

=head1 OPTIONS

=over 8

=item B<--help>

Prints the usage line and the options descriptions and exits.

=item B<--man>

Prints the manual page and exits.

=item B<--out> filename

Output to filename, default is to STDOUT.

=item B<--usage>

Prints a usage line and exits.

=item B<--version>

Prints the version and exits.

=back

=head1 DESCRIPTION

B<template.pl> Long explanation here.

=cut

