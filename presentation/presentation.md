title: Ruby Basics (||)
author: Haris Dimitriou (xarisd)
description: An introduction to Ruby for the average developer
date: <%= Date.today %>
% available themes: Default - Sky - Beige - Simple - Serif - Night - Moon - Solarized
theme: serif
% available transitions: // default/cube/page/concave/zoom/linear/fade/none
transition: linear
custom_css: presentation
% code-engine: coderay


# Ruby Basics

<p class="fragment">for the average developer</p>

!SLIDE
## Who am I?
<p>&nbsp;</p>
<h3 class="fragment">
  Haris Dimitriou (<strong>xarisd</strong>)
</h3>
<p>&nbsp;</p>
<p class="fragment">
  Ruby developer<span class="fragment">...among other things</span>
</p>
<p>&nbsp;</p>
<p class="fragment">
  CTO and co-founder @<a href="http://www.polyptychon.gr">Polyptychon</a> (<a href="http://polyptychon.gr">polyptychon.gr</a>)
</p>
<p>&nbsp;</p>
<p class="fragment">
  <a href="http://github.com/xarisd">github.com/xarisd</a>
  <br>
  <a href="http://twitter.com/xarisd">twitter.com/xarisd</a>
  <br>
  <a href="http://xarisd.io">xarisd.io</a>
</p>


!SLIDE
## Agenda

<p>&nbsp;</p>

* The VERY basics
* Control Structures
* Methods
* Classes, inheritance and mixins
* Ruby's Type System

!SLIDE
## Things we will not cover

<p>&nbsp;</p>

* Blocks and Iterators
* Basic types and containers
* I/O
* Exception handing
* Code organization and libraries (a.k.a. gems)
* Multithreading
* <em>Ruby Object Model and metaprogramming</em>
* ...

<p>&nbsp;</p>
<p class="fragment">maybe next time(s)...</p>


!SLIDE down-open
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!SLIDE
## The VERY basics

!SLIDE
## Ruby is LINE-ORIENTED

!SLIDE
That means expressions are terminated at the end of the line

<pre><code class="ruby">
<%= include 'code/basics/01_source_layout_a.rb' %>
</code></pre>


!SLIDE
...unless the parser can determine that the statement is incomplete (i.e. if the last token is an operator or comma)

<pre><code class="ruby">
<%= include 'code/basics/01_source_layout_b.rb' %>
</code></pre>


!SLIDE
You can also put a backslash <code>\</code> at the end of the line to continue it onto the next

<pre><code class="ruby">
<%= include 'code/basics/01_source_layout_c.rb' %>
</code></pre>


!SLIDE
A semicolon <code>;</code> can be used to separate multiple expressions in one line

<pre><code class="ruby">
<%= include 'code/basics/01_source_layout_d.rb' %>
</code></pre>

<p>&nbsp;</p>
<p class="fragment">Please do not do this! </p>
<p>&nbsp;</p>
<p class="fragment">We are in Ruby now, show some respect and craft your code with style :-)</p>


!SLIDE
## Comments

!SLIDE
Comments start with a <code>#</code> and run to the end of the physical line

<pre><code class="ruby">
<%= include 'code/basics/02_comments_a.rb' %>
</code></pre>


!SLIDE
Ruby has also block comments <br/>
using <code>=begin</code> and <code>=end</code> pairs

<pre><code class="ruby">
<%= include 'code/basics/02_comments_b.rb' %>
</code></pre>


!SLIDE
## Naming

## variables, methods, classes and constants

!SLIDE
## Local Variables

<pre><code class="ruby">
<%= include 'code/basics/03_naming_local_variables.rb' %>
</code></pre>
<ul>
  <li class="fragment">MUST start with a lower case letter or underscore <code>_</code></li>
  <li class="fragment">CAN be followed by any letter, number or underscore</li>
  <li class="fragment">CONVENTION : snake_case names</li>
</ul>

!SLIDE
## Global Variables

<pre><code class="ruby">
<%= include 'code/basics/03_naming_global_variables.rb' %>
</code></pre>
<ul>
  <li class="fragment">MUST start with a <code>$</code></li>
  <li class="fragment">CAN be followed by any letter, number or underscore</li>
  <li class="fragment">CONVENTION : snake_case names</li>
</ul>

!SLIDE
## Methods

<pre><code class="ruby">
<%= include 'code/basics/03_naming_methods.rb' %>
</code></pre>
<ul>
  <li class="fragment">MUST (not really...) start with a lower case letter or underscore <code>_</code></li>
  <li class="fragment">CAN be followed by any letter, number or underscore</li>
  <li class="fragment">CAN end with <code>?</code> or <code>=</code> or <code>!</code> (more on this later)</li>
  <li class="fragment">CONVENTION : start with a lowercase letter and use snake_case</li>
</ul>


!SLIDE
## Constants

<pre><code class="ruby">
<%= include 'code/basics/03_naming_constants.rb' %>
</code></pre>
<ul>
  <li class="fragment">MUST start with an Upper case letter</li>
  <li class="fragment">CAN be followed by any letter, number or underscore</li>
  <li class="fragment">CONVENTION : ALL_CAPS_WITH_UNDERSCORES names</li>
</ul>


!SLIDE
## Classes and Modules

<pre><code class="ruby">
<%= include 'code/basics/03_naming_classes.rb' %>
</code></pre>
<ul>
  <li class="fragment">Class and Module <strong>names are CONSTANTS</strong></li>
  <li class="fragment">so they MUST start with an Upper case letter</li>
  <li class="fragment">CAN be followed by any letter, number or underscore</li>
  <li class="fragment">CONVENTION : <strong>CamelCase</strong> names instead of ALL_CAPS_WITH_UNDERSCORES in order to <strong>separate them from "simple variable like" constants</strong></li>
</ul>


!SLIDE
## Class level variables

<pre><code class="ruby">
<%= include 'code/basics/03_naming_class_level_variables.rb' %>
</code></pre>
<ul>
  <li class="fragment"><strong>Instance variables</strong> MUST start with a <code>@</code></li>
  <li class="fragment"><strong>Class variables</strong> MUST start with a <code>@@</code></li>
  <li class="fragment">CAN be followed by any letter, number or underscore</li>
  <li class="fragment">CONVENTION : snake_case names</li>
</ul>


!SLIDE
## String interpolation and implicit return values
<p>&nbsp;</p>
<p class="fragment">Better explain with an example...</p>


!SLIDE
<pre><code class="ruby">
<%= include 'code/basics/04_string_interpolation_and_return_values_a.rb' %>
</code></pre>
<p class="fragment small">+ string interpolation</p>
<pre class="fragment"><code class="ruby">
<%= include 'code/basics/04_string_interpolation_and_return_values_b.rb' %>
</code></pre>

<p class="fragment">+ implicit return value</p>
<pre class="fragment"><code class="ruby">
<%= include 'code/basics/04_string_interpolation_and_return_values_c.rb' %>
</code></pre>


!SLIDE down-close





!SLIDE down-open
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!SLIDE
## Control Structures

!SLIDE
## Conditionals

!SLIDE
## false(y) values

<ul>
  <li class="fragment"><code>false</code></li>
  <li class="fragment"><code>nil</code></li>
  <li class="fragment"><strong>EVERYTHING</strong> else evaluates to <code>true</code>
    <ul>
      <li class="fragment"><code>0</code></li>
      <li class="fragment"><code>""</code></li>
      <li class="fragment"><code>[]</code></li>
      <li class="fragment"><em>everything else...</em></li>
    </ul>
  </li>

</ul>


!SLIDE
## if

<pre><code class="ruby">
<%= include 'code/control_structures/01_simple_if.rb' %>
</code></pre>

<ul>
  <li class="fragment">The usual stuff with <code>elsif</code> (without the "e") and <code>else</code></li>
  <li class="fragment">ALWAYS closes with <code>end</code></li>
</ul>

!SLIDE
## unless

<pre><code class="ruby">
<%= include 'code/control_structures/01_simple_unless.rb' %>
</code></pre>

<ul>
  <li class="fragment">ALWAYS closes with <code>end</code></li>
</ul>


!SLIDE
## unless <em>antipattern</em>

<pre><code class="ruby">
<%= include 'code/control_structures/01_simple_unless_antipattern.rb' %>
</code></pre>

<ul>
  <li class="fragment">Use an <em>inverted</em> <code>if</code> when there is an <code>else</code> clause</li>
</ul>


!SLIDE
## if / unless as <em>statement modifiers</em>

<pre><code class="ruby">
<%= include 'code/control_structures/02_statement_modifiers.rb' %>
</code></pre>

<ul>
  <li class="fragment">Use them when they make the code easier to read</li>
</ul>


!SLIDE
### if / unless as <em>expressions</em>

<pre><code class="ruby">
<%= include 'code/control_structures/03_if_unless_expressions_a.rb' %>
</code></pre>

<p class="fragment">can be written as</p>

<pre class="fragment"><code class="ruby">
<%= include 'code/control_structures/03_if_unless_expressions_b.rb' %>
</code></pre>

<ul>
  <li class="fragment">Same with <code>unless</code></li>
</ul>

!SLIDE
## case statements

!SLIDE
## case (first flavor)

<pre><code class="ruby">
<%= include 'code/control_structures/04_case_a.rb' %>
</code></pre>

<ul>
  <li class="fragment">Used as...<code>if</code></li>
  <li class="fragment">No <code>break</code> needed (<strong>no Fallthrough</strong>)</li>
</ul>

!SLIDE
## case (second flavor)

<pre><code class="ruby">
<%= include 'code/control_structures/04_case_b.rb' %>
</code></pre>

<ul>
  <li class="fragment">Used more often</li>
  <li class="fragment">Uses <code>===</code> operator for comparison (which can be overloaded)</li>
  <li class="fragment">No <code>break</code> needed also</li>
</ul>


!SLIDE
## case as <em>expression</em>

<pre><code class="ruby">
<%= include 'code/control_structures/04_case_expressions.rb' %>
</code></pre>

<ul>
  <li class="fragment"><code>then</code> is used when you want the body of the branch to be in the same line (typically one-liner bodies)</li>
  <li class="fragment">IMHO : Nicer code than the if expression</li>
</ul>


!SLIDE
## Loops

!SLIDE
## while

<pre><code class="ruby">
<%= include 'code/control_structures/05_while.rb' %>
</code></pre>

<ul>
  <li class="fragment">The usual stuff with <code>break</code> and <code>next</code></li>
</ul>


!SLIDE
## until

<pre><code class="ruby">
<%= include 'code/control_structures/05_until.rb' %>
</code></pre>

<ul>
  <li class="fragment">The usual stuff with <code>break</code> and <code>next</code> also</li>
</ul>

!SLIDE
## while/until as <em>statement modifiers</em>

<pre><code class="ruby">
<%= include 'code/control_structures/05_while_until_as_statement_modifiers.rb' %>
</code></pre>

<ul>
  <li class="fragment">Use them when they make the code easier to read</li>
</ul>


!SLIDE
## while/until as <em>expressions</em>

<pre><code class="ruby">
<%= include 'code/control_structures/05_while_until_as_expressions.rb' %>
</code></pre>

<ul>
  <li class="fragment">Last expression is returned</li>
  <li class="fragment">Use with CAUTION when using <code>break</code></li>
</ul>


!SLIDE
## What about classical <code>for</code> statement?


!SLIDE
## Ruby <strong>does not have</strong> <br/>a classical <code>for</code> statement!


!SLIDE
## But you can do this
<pre><code class="ruby">
<%= include 'code/control_structures/07_for_loop_a.rb' %>
</code></pre>
<p class="fragment">or this</p>
<pre class="fragment"><code class="ruby">
<%= include 'code/control_structures/07_for_loop_b.rb' %>
</code></pre>

!SLIDE
#### In Ruby you <strong>normally</strong> do <strong>loops</strong> with

<h3 class="fragment"><strong>blocks and iterators</strong></h3>

<pre class="fragment"><code class="ruby">
<%= include 'code/control_structures/08_each_a.rb' %>
</code></pre>

<ul>
  <li class="fragment">No need for counters and initialization</li>
  <li class="fragment">Which is way nicer to read</li>
  <li class="fragment">And way nicer to write also!</li>
</ul>


!SLIDE down-close





!SLIDE down-open
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!SLIDE
## Methods

!SLIDE
## Method definition

<pre><code class="ruby">
<%= include 'code/methods/01_method_definition.rb' %>
</code></pre>

<ul>
  <li class="fragment">Define a method with <code>def</code> keyword</li>
  <li class="fragment">...followed by the <strong>name</strong> of the method</li>
  <li class="fragment">...followed by <strong>optional parameter list</strong></li>
  <li class="fragment">Close the definition with <code>end</code> keyword</li>
</ul>

!SLIDE
## Optional Parentheses

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/02_method_parentheses.rb' %>
</code></pre>

<ul>
  <li class="fragment">Parentheses are optional both on <strong>definition</strong> and <strong>invocation</strong> <span class="fragment">when there is no ambiguity</span></li>
  <li class="fragment">There is a convention...</li>
</ul>

!SLIDE
Method parentheses...convention

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/02_method_parentheses_convention.rb' %>
</code></pre>

<ul>
  <li class="fragment">Use <code>()</code> when you <strong>have parameters</strong></li>
  <li class="fragment">Don't use them when you don't have parameters</li>
</ul>

!SLIDE
Method parentheses...style

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/02_method_parentheses_style.rb' %>
</code></pre>

<ul>
  <li class="fragment">Strive for code that <strong>READS</strong> more clearly</li>
</ul>


!SLIDE
## Method parameters


!SLIDE
### Parameters...the normal way

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/03_method_parameters_a.rb' %>
</code></pre>

<ul>
  <li class="fragment">Parameters <strong>DO NOT HAVE</strong> types</li>
  <li class="fragment">Parameter <strong>order</strong> matters</li>
</ul>

!SLIDE
### Optional parameters

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/03_method_parameters_optional.rb' %>
</code></pre>

<ul>
  <li class="fragment">Parameters can have <strong>default values</strong>. That makes them <strong>optional</strong>.</li>
</ul>


!SLIDE
### Optional parameters positioning

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/03_method_parameters_optional_positioning.rb' %>
</code></pre>

<ul>
  <li class="fragment">Ruby is very clever when matching parameters</li>
  <li class="fragment">Be clever yourself and <strong>use it sparignly for better code readability</strong></li>
</ul>


!SLIDE
### Variable length argument lists

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/03_method_parameters_splat.rb' %>
</code></pre>

<ul>
  <li class="fragment">You can use <strong>splat</strong> parameter as the last one in order (prepended with <code>*</code>)</li>
  <li class="fragment">Inside the method body it is an <strong>array</strong></li>
  <li class="fragment">It will be an <em>empty array</em> if you don't pass anything to it</li>
</ul>


!SLIDE
### Options hash as the last parameter

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/03_method_parameters_options_hash.rb' %>
</code></pre>

<ul>
  <li class="fragment">It is common to use it</li>
  <li class="fragment">You can fill it with <strong>any</strong> key-value combination</li>
</ul>



!SLIDE
### Options hash as the last parameter with default values

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/03_method_parameters_options_hash_default.rb' %>
</code></pre>

<ul>
  <li class="fragment">This is something that you will see often</li>
  <li class="fragment">But with more elegant code  :-)</li>
</ul>


!SLIDE
### Keyword arguments

(Ruby > 2.0 only)

<pre  class="fragment"><code class="ruby">
<%= include 'code/methods/03_method_parameters_keyword_arguments.rb' %>
</code></pre>

<ul>
  <li class="fragment">Keyword arguments must be <strong>AFTER</strong> any normal or optional parameters</li>
  <li class="fragment">When you call the method <strong>you pass in a hash as the last parameter</strong></li>
  <li class="fragment">Inside the method they become <strong>local variables</strong></li>
</ul>


!SLIDE
### Double splat <code>**</code> parameters

(Ruby > 2.0 only)

<pre class="fragment"><code class="ruby">
<%= include 'code/methods/03_method_parameters_double_splat.rb' %>
</code></pre>

<ul>
  <li class="fragment">You can use <strong>double splat</strong> parameter to pass extra (optional) options to your method</li>
  <li class="fragment">Inside the method body the double splat parameter is a <strong>hash</strong></li>
  <li class="fragment">It will be an <em>empty hash</em> if you don't pass anything to it</li>
</ul>



!SLIDE
### Methods and blocks

(just a simple example)

<pre class="fragment"><code class="ruby">
<%= include 'code/methods/04_method_with_block.rb' %>
</code></pre>

<ul>
  <li class="fragment">You can pass <strong>code</strong> to a method with a <strong>block</strong></li>
  <li class="fragment">A block is code inside <code>do</code> and <code>end</code> or <code>{</code> and <code>}</code></li>
  <li class="fragment">Inside the method body you can invoke it with <code>yield</code> </li>
</ul>

!SLIDE
### Blocks
<p>&nbsp;</p>
<p class="fragment">are one of the most powerful features in Ruby</p>
<p>&nbsp;</p>
<p class="fragment">They deserve their own presentation :-)</p>


!SLIDE down-close







!SLIDE down-open
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!SLIDE
## Classes, inheritance and mixins

!SLIDE
### Class definition

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/01_class_definition_a.rb' %>
</code></pre>
<p>&nbsp;</p>
<ul>
  <li class="fragment">You define a class with <code>class</code> keyword </li>
  <li class="fragment">...followed by its <strong>name</strong></li>
  <li class="fragment">...followed by method definitions</li>
  <li class="fragment">You close the definition with <code>end</code> keyword</li>
  <li class="fragment">You can choose a super class to inherit from with <code>&lt;</code></li>
  <li class="fragment">If you don't specify a super class, you inherit from <code>Object</code></li>
</ul>


!SLIDE
### Object creation
<pre class="fragment"><code class="ruby">
<%= include 'code/classes/02_object_creation.rb' %>
</code></pre>

<ul>
  <li class="fragment">You create an object by calling the <code>new</code> <strong>method</strong> on the class </li>
  <li class="fragment"><code>new</code> is <strong>class method</strong> not a keyword!</li>
</ul>


!SLIDE
### Initializers (constructors)
<pre class="fragment"><code class="ruby">
<%= include 'code/classes/03_initializers.rb' %>
</code></pre>

<ul>
  <li class="fragment">When you call the <code>new</code> <strong>class method</strong></li>
  <li class="fragment">...Ruby creates the object (i.e. allocates the needed memory)</li>
  <li class="fragment">...calls the <code>initialize</code> <strong>instance method</strong> on the object</li>
  <li class="fragment">And finally it returns the new object as a result</li>
</ul>


!SLIDE
### Initializers with params
<p>&nbsp;</p>
<ul>
  <li class="fragment">Ruby <strong>DOES NOT</strong> have <strong>method overloading</strong></li>
  <li class="fragment">This is true for the <strong>initializers</strong> also (after all they are methods)</li>
  <li class="fragment">So do your best to keep a <em>nice-to-use</em> and <em>flexible</em> API for your initializers</li>
</ul>

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/03_initializers_with_params.rb' %>
</code></pre>

!SLIDE
### Initializers with <code>super</code>

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/03_initializers_with_super.rb' %>
</code></pre>

<ul>
  <li class="fragment">You can call <code>super</code> <strong class="fragment">at any point</strong></li>
  <li class="fragment">...then the parent class's <code>initialize</code> <strong>instance method</strong> will be called</li>
  <li class="fragment">...passing <strong>ALL the current parameters</strong></li>
</ul>


!SLIDE
### Initializers with different parameters

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/03_initializers_with_super_different.rb' %>
</code></pre>

<ul>
  <li class="fragment">You can call <code>super</code> <strong class="fragment">with parameters</strong></li>
  <li class="fragment">...then the parent class's <code>initialize</code> <strong>instance method</strong> will be called</li>
  <li class="fragment">...passing <strong>those parameters</strong></li>
</ul>



!SLIDE
### Instance methods and instance variables

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/04_instance_methods.rb' %>
</code></pre>

<ul>
  <li class="fragment">You can define <strong>instance methods</strong> with <code>def</code> (as usual) from inside a class definition</li>
  <li class="fragment">Instance methods have full access to <strong>instance variables</strong> starting with <code>@</code></li>
</ul>


!SLIDE
### Instance variables and attributes

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/04_attributes.rb' %>
</code></pre>

<ul>
  <li class="fragment">Instance variables are <strong>ALWAYS PRIVATE</strong> </li>
  <li class="fragment">But you can define <strong>getter</strong> and <strong>setter</strong> methods to act like an <strong>atttribute</strong> (readonly, writeonly, read/write)</li>
  <li class="fragment">Setter methods  <strong>MUST END</strong> with <code>=</code></li>
</ul>


!SLIDE
Attributes the easy way

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/04_attr.rb' %>
</code></pre>

<ul>
  <li class="fragment">You can use <code>attr_accessor</code> to create <strong>read/write</strong> attribute methods</li>
  <li class="fragment">You can use <code>attr_reader</code> to create <strong>readonly</strong> attribute methods</li>
  <li class="fragment">You can use <code>attr_writer</code> to create <strong>writeonly</strong> attribute methods</li>
  <li class="fragment">These <strong>are just class methods</strong> that generate the appropriate getters/setters</li>
</ul>


!SLIDE
Access control

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/05_access_control_simple.rb' %>
</code></pre>

<ul>
  <li class="fragment"><strong>public</strong> is the default</li>
  <li class="fragment"><strong>protected</strong> methods can be called by any object of this class and this class's descendants</li>
  <li class="fragment"><strong>private</strong> methods can be called <strong>ONLY without explicit reciever</strong></li>
</ul>


!SLIDE
Access control (alternate way)

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/05_access_control_simple_alt.rb' %>
</code></pre>




!SLIDE
## Inheritance and method overriding



!SLIDE
In Ruby

<ul>
<li class="fragment">We have <strong>Single Class Inheritance</strong></li>
<li class="fragment">There is no method <strong>overloading</strong></li>
<li class="fragment">You can <strong>override</strong> any method by <strong>redifining</strong> it</li>
<li class="fragment">You can use <code>super</code> to call the superclass's implementation of the same method as in initializers (after all initializers are just methods)</li>

</ul>


!SLIDE
Method overriding example

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/06_inheritance.rb' %>
</code></pre>


!SLIDE
## Class methods

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/07_class_methods.rb' %>
</code></pre>


<ul>
  <li class="fragment small">You can define class methods using <code>def self.</code> from inside a class definition</li>
  <li class="fragment small">You can also define class methods from <strong>inside or outside</strong> the class using <code>def ClassName.</code></li>
</ul>



!SLIDE
## Modules


!SLIDE
### Modules are used

<p>&nbsp;</p>
<ul>
  <li class="fragment">For grouping utility methods together</li>
  <li class="fragment">For namespacing</li>
  <li class="fragment">For mixing in functionality to classes and objects</li>
</ul>

!SLIDE
Modules as utility methods containers

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/08_modules_static_methods.rb' %>
</code></pre>

<ul>
  <li class="fragment">Watch out the <code>self.</code> in definitions</li>
  <li class="fragment">After all...<span class="fragment">these methods are just <strong>module (class) methods</strong></span></li>
</ul>

!SLIDE
Modules for namespacing

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/08_modules_namespacing.rb' %>
</code></pre>


!SLIDE
Modules for mixing-in functionality

<pre class="fragment"><code class="ruby">
<%= include 'code/classes/08_modules_mixins_simple.rb' %>
</code></pre>


!SLIDE
### Modules and mixins
<p>&nbsp;</p>
<p class="fragment">are ALSO one of the most powerful features in Ruby</p>
<p>&nbsp;</p>
<p class="fragment">They ALSO deserve their own presentation :-)</p>
<p>&nbsp;</p>
<p class="fragment">maybe in...</p>
<p>&nbsp;</p>
<p class="fragment"><em>"Ruby and its Object Model : the beauty and the beast"</em></p>

!SLIDE down-close







!SLIDE down-open
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!SLIDE
## Ruby's Type System



!SLIDE
## Ruby

<p>&nbsp;</p>

### <span class="fragment">is **DYNAMICALY** typed</span>

<p>&nbsp;</p>
<p class="fragment">unlike Java and C#</p>
<p>&nbsp;</p>
<p class="fragment">like JavaScript</p>



!SLIDE
You don't have to declare the variables nor their types

<pre><code class="ruby">
<%= include 'code/type_system/01_dynamicaly_typed_a.rb' %>
</code></pre>

<p class="fragment">just <strong>assign</strong> to a variable <span class="fragment"><strong>and it comes to existence</strong></span></p>

!SLIDE
...but <strong>YOU HAVE to assign</strong> before you use it
<pre><code class="ruby">
<%= include 'code/type_system/01_dynamicaly_typed_b.rb' %>
</code></pre>

<p class="fragment">otherwise you'll get an exception: </p>
<p class="fragment"><em>"...undefined local variable or method 'b'...(NameError)"</em></p>





!SLIDE
A variable can point to any object

<pre><code class="ruby">
<%= include 'code/type_system/01_dynamicaly_typed_c.rb' %>
</code></pre>

<p class="fragment">of <strong>any type</strong></p>

<p class="fragment">at <strong>any time</strong></p>

<p class="fragment">because variables are <strong>just pointers</strong></p>



!SLIDE
## Ruby
<p>&nbsp;</p>

### <span class="fragment">is **STRONGLY** typed</span>

<p>&nbsp;</p>
<p class="fragment">like Java and C#</p>
<p>&nbsp;</p>
<p class="fragment">unlike JavaScript</p>



!SLIDE
You *cannot just assign* attributes and methods to an object (ala JavaScript)

<pre><code class="ruby">
<%= include 'code/type_system/02_strongly_typed_a.rb' %>
</code></pre>

<p class="fragment">because you'll get an error</p>
<p class="fragment"><em>"...undefined method `the_most_useful_property=' for #&lt;Object:0x007fd2821eeab8> (NoMethodError)..."</em> </p>

!SLIDE
## As I said...<br/><br/><span class="fragment">Ruby <span class="fragment">is</span> <strong class="fragment">STRONGLY typed</strong></span>


!SLIDE
## but...

!SLIDE
## :-)

!SLIDE
## Ruby has a <strong>VERY</strong> dynamic Object Model


!SLIDE
## In Ruby you can do what ever you want (literally) to a class or an object

<h2 class="fragment"><strong>at RUNTIME</strong></h2>




!SLIDE
You can **REOPEN** any class to **add** or **rewrite** a method

<pre class="fragment"><code class="ruby">
<%= include 'code/type_system/03_object_model_a.rb' %>
</code></pre>

<p class="fragment">YES...<span class="fragment"><strong>any class</strong></span></p>
<p class="fragment">So any objects of this class can have the new methods...</p>
<p class="fragment">even objects
 <span class="fragment">that were created</span>
 <span class="fragment"><strong>BEFORE</strong></span> <span class="fragment">you opened their class</span>
</p>
<p class="fragment">(i.e. the object assigned to the <strong><code>a</code></strong> variable in the code above)</p>

!SLIDE
## Because in Ruby

<h2 class="fragment">every class or object</h2>
<h2 class="fragment"> is <strong class="fragment">ALIVE</strong> <span class="fragment">at RUNTIME</span></h2>



!SLIDE
## Got your attention?

!SLIDE
## Wait there is more...


!SLIDE
You can add a method <span class="fragment">to a <strong>SPECIFIC</strong> object</span> <strong class="fragment">ONLY</strong>

<pre class="fragment"><code class="ruby">
<%= include 'code/type_system/03_object_model_b.rb' %>
</code></pre>

<p class="fragment">YES...<span class="fragment">to</span> <strong class="fragment">THAT</strong> <span class="fragment">object</span> <strong class="fragment">ONLY</strong></p>


!SLIDE
## Whet your appetite?

!SLIDE
## Want more?


!SLIDE
Well <br/>that's another presentation :-)
<p>&nbsp;</p>
<p class="fragment">maybe...<em class="fragment">"Ruby and its Object Model : the beauty and the beast"</em></p>

!SLIDE down-close




!SLIDE
## Thank you!
<p>&nbsp;</p>
<p class="fragment">Liked the presentation?</p>
<p>&nbsp;</p>
<p class="fragment">
  Source: <a href="http://github.com/xarisd/ruby-basics-ii"> github.com/xarisd/ruby-basics-ii</a>
</p>
<p>&nbsp;</p>
<p>
<p class="fragment">
  View it online: <a href="http://xarisd.io/presentations/ruby-basics-ii">xarisd.io/presentations/ruby-basics-ii</a>
</p>
<p>&nbsp;</p>
<p class="fragment">
  Have something to say?
</p>
<p class="fragment">
  Send me a tweet or direct message: <a href="http://twitter.com/xarisd">@xarisd</a>
</p>
<p>&nbsp;</p>
<p class="fragment">Questions?</p>

