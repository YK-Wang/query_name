#!usr/bin/perl -w
use strict;

my $file_blast = "file_location\\blast.output_file.txt";
open (FIN,$file_blast)||die"Where's the blast file ?";
open (FOUT,">>file_location\\blast.output_file.txt.accnos");

while (<FIN>){
	next if $_ =~ /^#/;
	next if $_ =~ /^\s+/;
	my ($q_id,$s_id,undef,undef,undef,undef,undef,undef,undef,undef,undef,undef) = split/\t/,$_;
	if ($s_id =~ /^genus\S+/) {
		print "$q_id\n";
		print FOUT ("$q_id\n");
	}
}

close FIN;
close FOUT;

print "\a\a\aFinish!\a\n       \\   |   /\n         ____ \n  ---   /     \\   ---\n       | ~   ~ |\n  ---   \\__O__/   --- \n        /     \\   \n";
