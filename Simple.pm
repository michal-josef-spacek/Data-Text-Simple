package Data::Text::Simple;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils::Language qw(check_language);

our $VERSION = 0.01;

has lang => (
	is => 'ro',
);

has text => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check lang.
	check_language($self, 'lang');

	return;
}

1;

__END__
