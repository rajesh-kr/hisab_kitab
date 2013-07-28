This program calculates the how much each individual have to pay for the monthly payments.
It reads from a file, whose content is of the form :<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<code>\<name\> - \<amount\></code><br>
Note that name and value are separated by <code>\<space\>\<dash\>\<space\></code><br>

For example, the content of file may be
<code><br>
AAA - 50 <br>
VVV - 456<br>
AAA - 30
</code><br><br>

Additional information can be added after the value as shown below, but that is discarded in the code
<code><br>
AAA - 50 - Additional info 1<br>
BBB - 100 - Additional info 2<br>
BBB - 20 - Additional info 3
</code><br><br>
You can run the program on the terminal by :<br>
<ul>Perl
<li><code>$ perl hisab_kitab.pl example.txt</code></li>
</ul>
<ul>Ruby
<li><code>$ ruby hisab_kitab.rb example.txt</code></li>
</ul>
