use strict;
use warnings;

use Data::Text::Simple;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::Text::Simple->new;
isa_ok($obj, 'Data::Text::Simple');

# Test.
$obj = Data::Text::Simple->new(
	'lang' => 'en',
	'text' => 'This is text.',
);
isa_ok($obj, 'Data::Text::Simple');

# Test.
eval {
	Data::Text::Simple->new(
		'lang' => 'xx',
	);
};
is($EVAL_ERROR, "Language code 'xx' isn't ISO 639-1 code.\n",
	"Language code 'xx' isn't ISO 639-1 code.");
clean();
