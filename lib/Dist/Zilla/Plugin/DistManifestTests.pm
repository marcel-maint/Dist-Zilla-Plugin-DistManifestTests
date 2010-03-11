use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::DistManifestTests;
# ABSTRACT: release tests for the manifest
use Moose;
use Test::DistManifest;
extends 'Dist::Zilla::Plugin::InlineFiles';

__PACKAGE__->meta->make_immutable;
no Moose;
1;

=pod

=for test_synopsis
1;
__END__

=head1 SYNOPSIS

In C<dist.ini>:

    [DistManifestTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following files

  xt/release/dist-manifest.t - a standard Test::DistManifest test

=cut

__DATA__
___[ xt/release/dist-manifest.t ]___
#!perl

use Test::More;

eval "use Test::DistManifest";
plan skip_all => "Test::DistManifest required for testing the manifest"
  if $@;
manifest_ok();
