module snap(){
    cylinder(d=5.5,h=26.4,$fn=30);
    translate([0,0,26.4]) cylinder(d1=7, d2=5, h=6, $fn=30);
    cylinder(d=11.5,h=3.91,$fn=30);
    translate([-11.5/2, 0, 0])    cube([11.5,101.2,3.91]);
    translate([0,101.2,0]) cylinder(d=11.5,h=3.91,$fn=6);
    
//    translate([.75,-6,25.5]) rotate([0,0,90]) cube([12,1.5,21]);
}

difference(){
    snap();
    
    translate([-6,-.5,12]) cube([12,1,21]);
    
    translate([.5,-6,12]) rotate([0,0,90]) cube([12,1,21]);
    
}
