use strict;
use warnings;

on configure => sub {
  requires 'Config'                        => '0';
  requires 'ExtUtils::MakeMaker'           => '6.76';     # offers the RECURSIVE_TEST_FILES feature
  requires 'ExtUtils::MakeMaker::CPANfile' => '0';
  requires 'File::Basename'                => '0';
  requires 'File::Spec'                    => '0';
  requires 'lib'                           => '0';
  requires 'strict'                        => '0';
  requires 'subs'                          => '0';
  requires 'version'                       => '0.9915';
  requires 'warnings'                      => '0';
};

on runtime => sub {
  requires 'Carp'                                    => '1.32';  # Don't vivify @CARP_NOT and @ISA in caller's namespace
  requires 'Clone'                                   => '0.46';
  requires 'Log::Log4perl::Config'                   => '0';
  requires 'Log::Log4perl::Config::BaseConfigurator' => '0';
  requires 'YAML::PP'                                => '0';
  requires 'parent'                                  => '0';
  requires 'strict'                                  => '0';
  requires 'version'                                 => '0.9915';
  requires 'warnings'                                => '0';
};

on test => sub {
  requires 'Test::Fatal'   => '0';
  requires 'Test::Harness' => '3.50';
  requires 'Test::More'    => '1.001005';    # Subtests accept args
  requires 'Test::Needs'   => '0';
  requires 'Test::Output'  => '0';
};

on develop => sub {
  requires 'Devel::Cover'       => '1.33';       # Fix cover -test with Build.PL
  requires 'Perl::Tidy'         => '20230701';
  requires 'Template'           => '0';
  requires 'Test::Perl::Critic' => '0';
  requires 'Test::Pod'          => '1.26';
};
