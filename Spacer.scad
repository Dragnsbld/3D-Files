//This file was created by Russell Cygan. Creation of this design is for personal use only.

include<threads.scad>;

module outer(){
translate([4, 4, 0]) cylinder(d=8,h=6,$fn=30);
}


module thread(){
translate([4, 4, -.25]) metric_thread (diameter=5, pitch=.8, length=6.5);
}
difference(){
    outer();
    thread();
}