unit module Chart::EasyGnuplot;

use Chart::Gnuplot;

multi sub line-plot(Str $title, @x, @y, Str $filename="chart.png") is export {
    my $gnu = Chart::Gnuplot.new(
      :terminal("png"),
      :filename($filename)
    );
    $gnu.plot(:title($title), :vertices(@x Z @y), :style("lines"));
}

