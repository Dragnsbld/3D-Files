include<threads.scad>;
module Arm(){
    union(){
//        translate([12.95, 25.4, 0]) 
        cylinder(d=50.8, h=25.4, $fn=75);
       
        translate([0, 0, 25.4]) cylinder(d1=50.8, d2=8, h=6.35, $fn=30);
        
 //       translate([12.95, 9.525, 12.7]) cylinder(d1=12.7, d2=6, h=6, $fn=30);

        

    }
}

module Arm_mounts_lower (radius, count)
{
for (a = [0: count -1]){
angle = a * 360 /count;
translate (radius * [sin(angle), -cos(angle), -.1])
rotate ([0, 0, angle])
children ();
}}

module Arm_mounts_upper (radius, count)
{
for (a = [0: count -1]){
angle = a * 360 /count;
translate (radius * [sin(angle), -cos(angle), 40.75/25.4])
rotate ([0, 0, angle])
children ();
}}

module Arm_mnt_slotC (radius, count)
{
for (a = [0: count -1]){
angle = a * 360 /count;
translate (radius * [sin(angle), -cos(angle), -.1/25.4])
rotate ([0, 0, angle])
children ();
}}

module Arm_mnt_slotR (radius, count)
{
for (a = [0: count -1]){
angle = a * 360 /count;
translate (radius * [sin(angle), -cos(angle), -.1/25.4])
rotate ([0, 0, angle])
children ();
}}
//     Arm_mounts_upper (radius = 16.4, count = 3) cylinder (d=12, h = 10, $fn=30);


 difference (){
     Arm();
     
     Arm_mounts_lower (radius = 16.4, count = 3) cylinder (d=6, h = 35, $fn=30) ;
     
     Arm_mounts_upper (radius = 16.4, count = 3) cylinder (d=12, h = 10, $fn=30);
     
     Arm_mnt_slotC (radius = 16.4, count = 3) cylinder (d=12, h = 5, $fn=30);
     
     Arm_mnt_slotR (radius = 22.8, count = 3) cube([12,12,10],center=true);
     
     translate([0, 0, 24])metric_thread (diameter=5.5, pitch=.8, length=8);


 };
