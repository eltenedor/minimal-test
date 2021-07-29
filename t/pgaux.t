use warnings;
use strict;
package main;

use Data::Dump qw/dd/;
use Test::More;


## the following needs to include at the top of any testing  down to TOP_MATERIAL

BEGIN {
	die "PG_ROOT not found in environment.\n" unless $ENV{PG_ROOT};
	die "WEBWORK_ROOT not found in environment.\n" unless $ENV{WEBWORK_ROOT};

        $main::pg_dir = $ENV{PG_ROOT};
        $main::webwork_dir = $ENV{PG_ROOT};

}


use lib "$main::webwork_dir/lib";
use lib "$main::pg_dir/lib";

require("build_PG_envir.pl");

## END OF TOP_MATERIAL


loadMacros("PGauxiliaryFunctions.pl");

# test step functions

is(step(8),1,"step: positive number");

done_testing;
