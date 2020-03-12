//This file was created by Russell Cygan. Creation of this design is for personal use only.

//change threads diameter=4.48 to 5 and render for export. 4.48 used for preview only.
include<threads.scad>;
module Arm(){
    union(){
        translate([3,0,0])
        cube([28.4, 25.4, 25.4]);    translate([31.4, 6.35, 0])    cube([98.6, 12.7, 7]);
        translate([31.4, 10.2, 7])    cube([100, 5, 12.7]);
        
        translate([0, 12.7, 12.7])rotate([0,90,0]) cylinder(d=12.7,h=6, $fn=30);
        
        translate([130, 12.7, 0]) rotate([0,0,90]) cylinder(d=12.7,h=7,$fn=6);

    }
}

module remove(){
    //Support angle
     translate([31.4, 10.15, 19.7]) rotate([0,3,0]) cube([101, 6, 12.7]);
     translate([126, 10.15, 15]) rotate([0,45,0]) cube([10,6,10]);
    
    //LG Blk relief
     translate([2.75, 0, 21.1575]) rotate([45,0,0]) cube([28.9,6,6]);
     translate([2.75, 25.4, 21.1575]) rotate([45,0,0]) cube([28.9,6,6]);
        translate([27.2,0,25.9]) rotate([45,90,0]) cube([26.4,6,6]);
        translate([27.2,25.4,25.9]) rotate([45,90,0]) cube([26.4,6,6]);
        translate([-1.25,0,25.9]) rotate([45,90,0]) cube([26.4,6,6]);
        translate([-1.25,25.4,25.9]) rotate([45,90,0]) cube([26.4,6,6]);

     //PCB Slot
     translate([34, 12.7, -2.2426])rotate([45,0,0]) cube([103, 3, 3]);
     
     //Slider Tubes
      translate([24, 18, -.25])rotate([0,0,90]) cylinder(d=6,h=25.9, $fn=30);
      translate([24, 7.4, -.25])rotate([0,0,90]) cylinder(d=6,h=25.9, $fn=30);
        
     //Slider Stabalizer
     translate([12, 5.7, -.25]) cube([5, 14.4, 26.4]);    
     
     //Slider stabalizer lock screw
     //Change diameter to 5 and render.
     translate([-.25, 12.7, 12.7])rotate([0,90,0]) metric_thread (diameter=5, pitch=.8, length=12.8);
 }
 difference (){
     Arm();
     remove();
 };
