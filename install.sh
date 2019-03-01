#!/bin/bash  

#-----------------------------------------------------------#
# Install Perl packages 
#-----------------------------------------------------------#
apt-get -y install epel-release
apt-get -y install mod_perl
apt-get -y install perl-CGI
apt-get -y install perl-CPAN
apt-get -y install perl-Module-Build
#-----------------------------------------------------------#
# Install General Perl Tools 
# cpan> o conf prerequisites_policy follow
# cpan> o conf commit
#-----------------------------------------------------------#
perl -MCPAN -e 'my $c = "CPAN::HandleConfig"; $c->load(doit => 1, autoconfig => 1); $c->edit(prerequisites_policy => "follow"); $c->edit(build_requires_install_policy => "yes"); $c->commit'
perl -MCPAN -e 'install Bundle::CPAN'

#-----------------------------------------------------------#
# Install Perl CPAN libraries 
#-----------------------------------------------------------#
cpan install Module::Build

cpan install CGI::Simple
cpan install Date::Calc
cpan install DateTime
cpan install Devel::Leak
cpan install Digest::SHA2
cpan install Domain::PublicSuffix
cpan install File::Slurp
cpan install Geography::Countries
cpan install HTML::Entities
cpan install HTML::Highlight
cpan install HTML::LinkExtractor
cpan install HTML::Mason
cpan install HTML::TreeBuilder.pm
cpan install LWP::Simple
cpan install Math::Prime::Util
cpan install MCE
cpan install Number::Format
cpan install Perl::Tags::Naive
cpan install Search::Tools::Snipper
cpan install Time::Piece
cpan install URI
cpan install YAML
cpan install YAML::Tiny
cpan Locale::Currency::Format
#-----------------------------------------------------------#
