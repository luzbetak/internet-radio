#!/usr/bin/perl
use CGI qw/:standard/;
#-----------------------------------------------------------------------#
my($goback, $title, $url);

$res = `/usr/bin/mpc clear`; 
open(FILE, "channels.dat");
while(<FILE>) { 
    my($goback, $title, $url) = split('\|', $_);
    $res = `/usr/bin/mpc add $url`; 
}
close(FILE);

#-----------------------------------------------------------------------#
my $res;
$res = `/usr/bin/mpc play 1`;

#------------------------------ HTML Content ---------------------------#
print "Content-type: text/html\n\n";
print <<HTML;
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta id="viewport" name="viewport" content="width=320; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
	<title>Headers</title>
	<link rel="stylesheet" href="/stylesheets/iphone.css" />
	<link rel="apple-touch-icon" href="/images/apple-touch-icon.png" />
	<script type="text/javascript" charset="utf-8">
		window.onload = function() {
		  setTimeout(function(){window.scrollTo(0, 1);}, 100);
		}
	</script>
</head>

<body>
	
	<div id="header">
		<h1>$title</h1>
		<a href="/$goback" id="backButton">Back</a>
	</div>

<h1>Radio Library Loaded</h1>

<ul class="data">
	<li><p>$res</p></li>
</ul>

<!-- Menu -->
<ul class="individual">
    <li><a href="/cgi-bin/recent.pl?play=prev">Previous Channel</a></li>
	<li><a href="/cgi-bin/recent.pl?play=next">Next Channel</a></li>
</ul>

<ul class="volume">
	<li><a href="/cgi-bin/volume.pl?set=70">70</a></li>
	<li><a href="/cgi-bin/volume.pl?set=75">75</a></li>
	<li><a href="/cgi-bin/volume.pl?set=80">80</a></li>
    <li><a href="/cgi-bin/volume.pl?set=85">85</a></li>
    <li><a href="/cgi-bin/volume.pl?set=90">90</a></li>
	<li><a href="/cgi-bin/volume.pl?set=95">95</a></li>
</ul>

<ul class="individual">
    <li><a href="/cgi-bin/volume.pl?set=down">Volume Down</a></li>
	<li><a href="/cgi-bin/volume.pl?set=up">Volume Up</a></li>
</ul>
<!-- End of Menu -->

<p>1997-2014 <a href="http://pacific-design.com">Pacific-Design.com</a></p>

<div id="optionpanel" style="display: none">

</div>

</body>
</html>
HTML

