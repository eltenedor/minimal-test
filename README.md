# Minimal example

Minimal environment for running the tests in `pgaux.t`. 

All needed modules and macros reside in `/lib`. Please use either the docker image `eltenedor/perl-webwork` or build a suitable docker container from the provided `/docker/Dockerfile`. 

The environment that is used assumes that `${WEBWORK_ROOT} == ${PG_ROOT}`

## Docker command

```bash
docker run -it --rm --name minimal-test -v `pwd`:/opt/webwork/pg eltenedor/perl-webwork:latest
```

Then, from the shell of the Docker container run

```bash
perl Build.PL
./Build build
./Build manifest
./Build test
./Build testcover
```

The last command will result in the following error message:

```
t/pgaux.t .. Devel::Cover: Warning: can't open blib/lib/Net/SSLeay.pm for MD5 digest: No such file or directory
Devel::Cover: Can't find file "blib/lib/Net/SSLeay.pm" (blib/lib/Net/SSLeay.pm (autosplit into blib/lib/auto/Net/SSLeay/randomize.al)): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->_coercion for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->_coercion" (Specio::Coercion->_coercion): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->_has_coercion for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->_has_coercion" (Specio::Coercion->_has_coercion): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->_generated_inline_sub" (Specio::Coercion->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->_inline_generator" (Specio::Coercion->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->_has_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->_has_inline_generator" (Specio::Coercion->_has_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->_optimized_coercion for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->_optimized_coercion" (Specio::Coercion->_optimized_coercion): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->declared_at" (Specio::Coercion->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->description" (Specio::Coercion->description): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->from for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->from" (Specio::Coercion->from): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->inline_environment" (Specio::Coercion->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->to for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->to" (Specio::Coercion->to): ignored.
Devel::Cover: Warning: can't open Specio::Coercion->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Coercion->new" (Specio::Coercion->new): ignored.
Devel::Cover: Warning: can't open Specio::Exception->message for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Exception->message" (Specio::Exception->message): ignored.
Devel::Cover: Warning: can't open Specio::Exception->stack_trace for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Exception->stack_trace" (Specio::Exception->stack_trace): ignored.
Devel::Cover: Warning: can't open Specio::Exception->type for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Exception->type" (Specio::Exception->type): ignored.
Devel::Cover: Warning: can't open Specio::Exception->value for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Exception->value" (Specio::Exception->value): ignored.
Devel::Cover: Warning: can't open Specio::Exception->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Exception->new" (Specio::Exception->new): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_ancestors for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_ancestors" (Specio::Constraint::Simple->_ancestors): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_coercions for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_coercions" (Specio::Constraint::Simple->_coercions): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_constraint" (Specio::Constraint::Simple->_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_has_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_has_constraint" (Specio::Constraint::Simple->_has_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_generated_inline_sub" (Specio::Constraint::Simple->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_inline_generator" (Specio::Constraint::Simple->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_has_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_has_inline_generator" (Specio::Constraint::Simple->_has_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_message_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_message_generator" (Specio::Constraint::Simple->_message_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_optimized_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_optimized_constraint" (Specio::Constraint::Simple->_optimized_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_signature for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_signature" (Specio::Constraint::Simple->_signature): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_subification for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_subification" (Specio::Constraint::Simple->_subification): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->declared_at" (Specio::Constraint::Simple->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->description" (Specio::Constraint::Simple->description): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->inline_environment" (Specio::Constraint::Simple->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->name" (Specio::Constraint::Simple->name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_has_name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_has_name" (Specio::Constraint::Simple->_has_name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->parent" (Specio::Constraint::Simple->parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->_has_parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->_has_parent" (Specio::Constraint::Simple->_has_parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Simple->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Simple->new" (Specio::Constraint::Simple->new): ignored.
Devel::Cover: Warning: can't open Specio::DeclaredAt->filename for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::DeclaredAt->filename" (Specio::DeclaredAt->filename): ignored.
Devel::Cover: Warning: can't open Specio::DeclaredAt->line for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::DeclaredAt->line" (Specio::DeclaredAt->line): ignored.
Devel::Cover: Warning: can't open Specio::DeclaredAt->package for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::DeclaredAt->package" (Specio::DeclaredAt->package): ignored.
Devel::Cover: Warning: can't open Specio::DeclaredAt->subroutine for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::DeclaredAt->subroutine" (Specio::DeclaredAt->subroutine): ignored.
Devel::Cover: Warning: can't open Specio::DeclaredAt->has_subroutine for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::DeclaredAt->has_subroutine" (Specio::DeclaredAt->has_subroutine): ignored.
Devel::Cover: Warning: can't open Specio::DeclaredAt->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::DeclaredAt->new" (Specio::DeclaredAt->new): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_ancestors for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_ancestors" (Specio::Constraint::Parameterized->_ancestors): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_coercions for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_coercions" (Specio::Constraint::Parameterized->_coercions): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_constraint" (Specio::Constraint::Parameterized->_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_has_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_has_constraint" (Specio::Constraint::Parameterized->_has_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_generated_inline_sub" (Specio::Constraint::Parameterized->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_inline_generator" (Specio::Constraint::Parameterized->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_has_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_has_inline_generator" (Specio::Constraint::Parameterized->_has_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_message_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_message_generator" (Specio::Constraint::Parameterized->_message_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_optimized_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_optimized_constraint" (Specio::Constraint::Parameterized->_optimized_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_signature for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_signature" (Specio::Constraint::Parameterized->_signature): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_subification for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_subification" (Specio::Constraint::Parameterized->_subification): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->declared_at" (Specio::Constraint::Parameterized->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->description" (Specio::Constraint::Parameterized->description): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->inline_environment" (Specio::Constraint::Parameterized->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->name" (Specio::Constraint::Parameterized->name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->parameter for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->parameter" (Specio::Constraint::Parameterized->parameter): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->parent" (Specio::Constraint::Parameterized->parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->_has_parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->_has_parent" (Specio::Constraint::Parameterized->_has_parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterized->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterized->new" (Specio::Constraint::Parameterized->new): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_ancestors for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_ancestors" (Specio::Constraint::Parameterizable->_ancestors): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_coercions for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_coercions" (Specio::Constraint::Parameterizable->_coercions): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_constraint" (Specio::Constraint::Parameterizable->_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_has_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_has_constraint" (Specio::Constraint::Parameterizable->_has_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_generated_inline_sub" (Specio::Constraint::Parameterizable->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_inline_generator" (Specio::Constraint::Parameterizable->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_has_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_has_inline_generator" (Specio::Constraint::Parameterizable->_has_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_message_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_message_generator" (Specio::Constraint::Parameterizable->_message_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_optimized_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_optimized_constraint" (Specio::Constraint::Parameterizable->_optimized_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_parameterized_constraint_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_parameterized_constraint_generator" (Specio::Constraint::Parameterizable->_parameterized_constraint_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_has_parameterized_constraint_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_has_parameterized_constraint_generator" (Specio::Constraint::Parameterizable->_has_parameterized_constraint_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_parameterized_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_parameterized_inline_generator" (Specio::Constraint::Parameterizable->_parameterized_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_has_parameterized_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_has_parameterized_inline_generator" (Specio::Constraint::Parameterizable->_has_parameterized_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_signature for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_signature" (Specio::Constraint::Parameterizable->_signature): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_subification for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_subification" (Specio::Constraint::Parameterizable->_subification): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->declared_at" (Specio::Constraint::Parameterizable->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->description" (Specio::Constraint::Parameterizable->description): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->inline_environment" (Specio::Constraint::Parameterizable->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->name" (Specio::Constraint::Parameterizable->name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_has_name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_has_name" (Specio::Constraint::Parameterizable->_has_name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->parent" (Specio::Constraint::Parameterizable->parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->_has_parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->_has_parent" (Specio::Constraint::Parameterizable->_has_parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Parameterizable->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Parameterizable->new" (Specio::Constraint::Parameterizable->new): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_ancestors for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_ancestors" (Specio::Constraint::AnyCan->_ancestors): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_coercions for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_coercions" (Specio::Constraint::AnyCan->_coercions): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_constraint" (Specio::Constraint::AnyCan->_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_has_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_has_constraint" (Specio::Constraint::AnyCan->_has_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_generated_inline_sub" (Specio::Constraint::AnyCan->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_inline_generator" (Specio::Constraint::AnyCan->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_has_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_has_inline_generator" (Specio::Constraint::AnyCan->_has_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_message_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_message_generator" (Specio::Constraint::AnyCan->_message_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_optimized_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_optimized_constraint" (Specio::Constraint::AnyCan->_optimized_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_signature for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_signature" (Specio::Constraint::AnyCan->_signature): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_subification for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_subification" (Specio::Constraint::AnyCan->_subification): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->declared_at" (Specio::Constraint::AnyCan->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->description" (Specio::Constraint::AnyCan->description): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->inline_environment" (Specio::Constraint::AnyCan->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->methods for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->methods" (Specio::Constraint::AnyCan->methods): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->name" (Specio::Constraint::AnyCan->name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_has_name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_has_name" (Specio::Constraint::AnyCan->_has_name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->parent" (Specio::Constraint::AnyCan->parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->_has_parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->_has_parent" (Specio::Constraint::AnyCan->_has_parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::AnyCan->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::AnyCan->new" (Specio::Constraint::AnyCan->new): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_ancestors for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_ancestors" (Specio::Constraint::ObjectIsa->_ancestors): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_coercions for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_coercions" (Specio::Constraint::ObjectIsa->_coercions): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_constraint" (Specio::Constraint::ObjectIsa->_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_has_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_has_constraint" (Specio::Constraint::ObjectIsa->_has_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_generated_inline_sub" (Specio::Constraint::ObjectIsa->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_inline_generator" (Specio::Constraint::ObjectIsa->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_has_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_has_inline_generator" (Specio::Constraint::ObjectIsa->_has_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_message_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_message_generator" (Specio::Constraint::ObjectIsa->_message_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_optimized_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_optimized_constraint" (Specio::Constraint::ObjectIsa->_optimized_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_signature for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_signature" (Specio::Constraint::ObjectIsa->_signature): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_subification for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_subification" (Specio::Constraint::ObjectIsa->_subification): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->class for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->class" (Specio::Constraint::ObjectIsa->class): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->declared_at" (Specio::Constraint::ObjectIsa->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->description" (Specio::Constraint::ObjectIsa->description): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->inline_environment" (Specio::Constraint::ObjectIsa->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->name" (Specio::Constraint::ObjectIsa->name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_has_name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_has_name" (Specio::Constraint::ObjectIsa->_has_name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->parent" (Specio::Constraint::ObjectIsa->parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->_has_parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->_has_parent" (Specio::Constraint::ObjectIsa->_has_parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectIsa->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectIsa->new" (Specio::Constraint::ObjectIsa->new): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_ancestors for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_ancestors" (Specio::Constraint::Enum->_ancestors): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_coercions for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_coercions" (Specio::Constraint::Enum->_coercions): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_constraint" (Specio::Constraint::Enum->_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_has_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_has_constraint" (Specio::Constraint::Enum->_has_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_generated_inline_sub" (Specio::Constraint::Enum->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_inline_generator" (Specio::Constraint::Enum->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_has_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_has_inline_generator" (Specio::Constraint::Enum->_has_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_message_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_message_generator" (Specio::Constraint::Enum->_message_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_optimized_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_optimized_constraint" (Specio::Constraint::Enum->_optimized_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_signature for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_signature" (Specio::Constraint::Enum->_signature): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_subification for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_subification" (Specio::Constraint::Enum->_subification): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->declared_at" (Specio::Constraint::Enum->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->description" (Specio::Constraint::Enum->description): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->inline_environment" (Specio::Constraint::Enum->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->name" (Specio::Constraint::Enum->name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_has_name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_has_name" (Specio::Constraint::Enum->_has_name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->parent" (Specio::Constraint::Enum->parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->_has_parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->_has_parent" (Specio::Constraint::Enum->_has_parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->values for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->values" (Specio::Constraint::Enum->values): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Enum->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Enum->new" (Specio::Constraint::Enum->new): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_ancestors for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_ancestors" (Specio::Constraint::Union->_ancestors): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_coercions for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_coercions" (Specio::Constraint::Union->_coercions): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_constraint" (Specio::Constraint::Union->_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_generated_inline_sub" (Specio::Constraint::Union->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_inline_generator" (Specio::Constraint::Union->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_message_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_message_generator" (Specio::Constraint::Union->_message_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_optimized_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_optimized_constraint" (Specio::Constraint::Union->_optimized_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_signature for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_signature" (Specio::Constraint::Union->_signature): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->_subification for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->_subification" (Specio::Constraint::Union->_subification): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->declared_at" (Specio::Constraint::Union->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->description" (Specio::Constraint::Union->description): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->inline_environment" (Specio::Constraint::Union->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->name" (Specio::Constraint::Union->name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->of for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->of" (Specio::Constraint::Union->of): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::Union->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::Union->new" (Specio::Constraint::Union->new): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_ancestors for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_ancestors" (Specio::Constraint::ObjectCan->_ancestors): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_coercions for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_coercions" (Specio::Constraint::ObjectCan->_coercions): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_constraint" (Specio::Constraint::ObjectCan->_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_has_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_has_constraint" (Specio::Constraint::ObjectCan->_has_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_generated_inline_sub for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_generated_inline_sub" (Specio::Constraint::ObjectCan->_generated_inline_sub): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_inline_generator" (Specio::Constraint::ObjectCan->_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_has_inline_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_has_inline_generator" (Specio::Constraint::ObjectCan->_has_inline_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_message_generator for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_message_generator" (Specio::Constraint::ObjectCan->_message_generator): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_optimized_constraint for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_optimized_constraint" (Specio::Constraint::ObjectCan->_optimized_constraint): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_signature for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_signature" (Specio::Constraint::ObjectCan->_signature): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_subification for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_subification" (Specio::Constraint::ObjectCan->_subification): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->declared_at for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->declared_at" (Specio::Constraint::ObjectCan->declared_at): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->description for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->description" (Specio::Constraint::ObjectCan->description): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->inline_environment for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->inline_environment" (Specio::Constraint::ObjectCan->inline_environment): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->methods for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->methods" (Specio::Constraint::ObjectCan->methods): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->name" (Specio::Constraint::ObjectCan->name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_has_name for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_has_name" (Specio::Constraint::ObjectCan->_has_name): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->parent" (Specio::Constraint::ObjectCan->parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->_has_parent for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->_has_parent" (Specio::Constraint::ObjectCan->_has_parent): ignored.
Devel::Cover: Warning: can't open Specio::Constraint::ObjectCan->new for MD5 digest: No such file or directory
Devel::Cover: Can't find file "Specio::Constraint::ObjectCan->new" (Specio::Constraint::ObjectCan->new): ignored.
Can't use an undefined value as a symbol reference at /opt/webwork/pg/lib/WeBWorK/CourseEnvironment.pm line 180.
Compilation failed in require at /opt/webwork/pg/lib/WeBWorK/PG/Translator.pm line 16.
BEGIN failed--compilation aborted at /opt/webwork/pg/lib/WeBWorK/PG/Translator.pm line 16.
Compilation failed in require at /opt/webwork/pg/lib/PGloadfiles.pm line 76.
BEGIN failed--compilation aborted at /opt/webwork/pg/lib/PGloadfiles.pm line 76.
Compilation failed in require at /opt/webwork/pg/lib/PGcore.pm line 34.
BEGIN failed--compilation aborted at /opt/webwork/pg/lib/PGcore.pm line 34.
Compilation failed in require at /opt/webwork/pg/lib/build_PG_envir.pl line 9.
BEGIN failed--compilation aborted at /opt/webwork/pg/lib/build_PG_envir.pl line 9.
Compilation failed in require at t/pgaux.t line 24.
t/pgaux.t .. Dubious, test returned 255 (wstat 65280, 0xff00)
No subtests run 

Test Summary Report
-------------------
t/pgaux.t (Wstat: 65280 Tests: 0 Failed: 0)
  Non-zero exit status: 255
  Parse errors: No plan found in TAP output
Files=1, Tests=0,  2 wallclock secs ( 0.03 usr  0.02 sys +  1.70 cusr  0.07 csys =  1.82 CPU)
Result: FAIL
Failed 1/1 test programs. 0/0 subtests failed.
```
