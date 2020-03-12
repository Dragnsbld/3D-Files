//This file was created by Russell Cygan. Creation of this design is for personal use only.

include<threads.scad>;
  
// cylinder(d=6,h=2.25,$fn=30);

module compression(){

translate([0,0,2.38125]) sphere(d=12.025, $fn=50);

translate([0,-.75,-.38125]) rotate([90,0,0]) cube([15,8,2]);
translate([0,2.75,-.38125]) rotate([90,0,0]) cube([15,8,2]);
    
translate([16,-2.75,2.5]) cube([1.5,2,2.625]);
translate([16,.75,2.5]) cube([1.5,2,2.625]);

translate([15,-.75,2.5]) rotate([90,0,0]) cylinder(d=5,h=2,$fn=30);
translate([15,-.75,5.125]) rotate([90,0,0]) cylinder(d=5,h=2,$fn=30);
    
translate([15,2.75,2.5]) rotate([90,0,0]) cylinder(d=5,h=2,$fn=30); 
translate([15,2.75,5.125]) rotate([90,0,0]) cylinder(d=5,h=2,$fn=30);
    
translate([0,0,6]) cylinder(d=9.5,h=12,$fn=30);
    

}


module rem1(){

    translate([0,0,2.38125]) sphere(d=9.525, $fn=50);

    translate([-9,-9,-5.38125]) cube([30,18,5.38125]);  
    translate([0,.75,-.38125]) rotate([90,0,0]) cube([18,11,1.5]); 
    
    translate([12,-.625,3.75]) rotate([90,0,0]) cylinder(d=6,h=2.25,$fn=30);
  
    translate([0,0,11]) metric_thread (diameter=5, pitch=.8, length=8);
    
    translate([12,2.85,3.75]) rotate([90,0,0])cylinder(d=5,h=2.2,$fn=30);
}
 difference (){
compression();
rem1();
}

