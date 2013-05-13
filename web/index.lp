<?
	require( 'template' )
	template.init()

	template.set( 'web/header.html' )
?>

<body>
<p style="font-size:5em;">Hub</p>
@necrophcodr
<div>
<div class="navigator">
<a href="#" id="Nav_Home">Home</a>
</div>
<div class="navigator">
<a href="#" id="Nav_About">About</a>
</div>
<div class="navigator">
<a href="#" id="Nav_Projects">Projects</a>
</div>
<div class="navigator">
<a href="http://necrophcodr-blog.herokuapp.com" id="Nav_Blog">Blog</a>
</div>
</div>
<!-- Presentation of test sites below -->
<div class="content">
<div id="page_Home" style="display: block; ">
    <div class="warning">
    <p style="color:red;font-size:5em;line-height:1em;text-align:center;">WARNING</p><br>
    <p style="text-align:center;">These sites may break your break and everything inside yo head.</p><br>
    <p style="text-align:center;">Sanity not included.</p><br>
</div>
    <!-- // BEGIN W3C Validator -->
<a style="font-size:0.8em;" href="http://validator.w3.org/check?uri=http%3A%2F%2Fnecrophcodr.herokuapp.com">W3C Validation passed!</a>
</div>
<!-- // END W3C Validator -->

<div id="page_About" style="display: none; ">
<h1>About Me</h1>
<p>This is my personal website. For now it's just testing grounds though.</p>
<br>
</div>

<div id="page_Projects" style="display: none; ">
<p style="font-size:3em;">What's what?</p>
<br>
<p style="font-size:2em;">Projects:</p>
<div ng-controller="projectCtrl">
    <ul ng-repeat="project in projects">
	<li>
	(<a href="{{ project.url }}">github</a>) <b>{{ project.name }}</b>: {{ project.desc }}
	</li>
    </ul>
</div>
</div>
</div>

<?
	template.set( 'web/footer.html' )
-- vim: filetype=html
?>
