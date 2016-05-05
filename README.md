# Nitrogen plugin for [Bootstrap Toggle](http://www.bootstraptoggle.com/)


A flexibale way to show a toggle box and shown on/off true/false values using CSS.

This creates a `#togglebox{}` element for [Nitrogen Web Framework](http://nitrogenproject.com) 


## Installing into a Nitrogen Application & Setup the HTML

Add it as a rebar dependency by adding into the deps section of rebar.config:

```erlang
{nitrogen_togglebox, "", {git, "git://github.com/stuart-thackray/element_togglebox.git", {branch, master}}}
```

You need to include the bootstrap and bootstrap toggle CCS and JS in yout html. This can either be done via CDN shown below or setting up the CSS/JS in our static folder. For example see the template for example see basic.html in the template directory


```html
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
```

### Using Nitrogen's built-in plugin installer (Requires Nitrogen 2.2.0)

Run `make` in your Application. The rest should be automatic.


## Usage
Basic example below the on an off values specify the text of the on and off text.

```erlang
#togglebox{
on="ON",
off="OFF",
colour="success"
}.	
```

Additional settings can be configured via the data_fields
For example width and height
```erlang
#togglebox{
data_fields =[{"width", "100"}, {"height","75"}]
}.
```


There are additional settings that are possible such as using icons/in the text infomation, multiple lines of text, animation speeds. Refer to [Bootstrap Toggle](http://www.bootstraptoggle.com/) for these.

The elements suppost postbacks and you can check if the togglebox has changed using wf:q(.)


