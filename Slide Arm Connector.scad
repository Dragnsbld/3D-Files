include<threads.scad>;
module Arm(){
    union(){
//        cube([25.9, 19.05, 12.7]);
        cube([25.9, 12.7, 19.05]);
        
        translate([12.95, 18.7, 9.525]) rotate([90,0,0]) cylinder(d=9.525,h=6, $fn=30);
        
        translate([12.95, 6.35, 19.05]) cylinder(d1=12.7, d2=6, h=6, $fn=30);
        
       translate([12.95, 6.35, 28.72]) sphere(d=9.525, $fn=50);
        

    }
}

 difference (){
     Arm();
     translate([12.95, 6.35, 9.525]) rotate([90,0,0]) cube([26.4, 14.4, 5],center=true);
     
     translate([12.95, 18.71, 9.525]) rotate([90,0,0]) metric_thread (diameter=5, pitch=.8, length=12.35);
     

 };

