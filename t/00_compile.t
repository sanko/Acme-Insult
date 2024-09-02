use Test2::V0;
use open qw[:std :encoding(UTF-8)];
#
use lib '../lib', 'lib';
use Acme::Insult qw[:all];
#
imported_ok qw[insult flavors];
#
ok insult(),                'insult()';
ok my @flavors = flavors(), 'flavors() returns a list';
subtest 'flavors' => sub {
    ok insult($_), 'insult(' . $_ . ')' for sort @flavors;
};
#
done_testing;
