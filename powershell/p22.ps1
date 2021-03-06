<#
ProjectEuler.net
Problem 22

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names,
begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value
 by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 
938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.

What is the total of all the name scores in the file?
#>
if(!$a){
$a = Get-Content C:\Users\ty\Documents\scripts\euler\names.txt | % {$_.split(",")} | % {$_.replace("`"","")} | sort
}

$count = 0
$result = 0

foreach($c in $a)
{

$x = 0

  for($i=0;$i-le$c.length-1;$i++)
  {

    switch ($c[$i])
    {
    
      a {$x+= 1;  break}
      b {$x+= 2;  break}
      c {$x+= 3;  break}
      d {$x+= 4;  break}
      e {$x+= 5;  break}
      f {$x+= 6;  break}
      g {$x+= 7;  break}
      h {$x+= 8;  break}
      i {$x+= 9;  break}
      j {$x+= 10; break}
      k {$x+= 11; break}
      l {$x+= 12; break}
      m {$x+= 13; break}
      n {$x+= 14; break}
      o {$x+= 15; break}
      p {$x+= 16; break}
      q {$x+= 17; break}
      r {$x+= 18; break}
      s {$x+= 19; break}
      t {$x+= 20; break}
      u {$x+= 21; break}
      v {$x+= 22; break}
      w {$x+= 23; break}
      x {$x+= 24; break}
      y {$x+= 25; break}
      z {$x+= 26; break}
    
    }#end_switch
    
  }#end_for

$count++
$result += ($x * $count)

}#end_foreach

$result