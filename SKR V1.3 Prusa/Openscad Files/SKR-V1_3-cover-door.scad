// PRUSA I3 Original
// SKR V1.3 cover door
// Russell Cygan
// Based on Original RAMBo Cover by Josef Prusa

module body()
{
cube( [ 114.2 , 95.6 , 1 ] );  
cube( [ 114.2 , 5.995 , 20 ] );  
cube( [ 2 , 95.6 , 20 ] );  

// corner reinforcement
translate( [ 105.7 , 2 , 0 ] ) cube( [ 7.5 , 5 , 20 ] );   
translate( [ 0.5 , 0.5 , 0 ] ) cube( [ 5 , 6.5 , 20 ] );  
translate( [ 1 , 0 , 0 ] ) cube( [ 10 , 95.6 , 6 ] );  
translate( [ 108.2 , 0 , 0 ] ) cube( [ 6 , 95.6 , 7 ] );  
translate( [ 10 , 0 , 0 ] ) cube( [ 6 , 5 , 6 ] );  

// screw thread body
translate( [ 41.5 , -7.4 , 0 ] ) cube( [ 12.5 , 11.8 , 20 ] );  

// rounded side
translate( [ 0 , 95.6 , 4.5 ] ) rotate([0,90,0]) cylinder( h = 114.2, r = 4.5, $fn=30);  

// upper hinge reinforcement
translate( [ 0.5 , 77.1 , -9 ] ) rotate([20,0,0]) cube( [ 26 , 20 , 10 ] );  
    
// door closing
translate( [ 4 , 3.5 , 16.8 ] ) rotate([0,0,0]) cylinder( h = 3.2, r1 = 1.8, r2= 3.5, $fn=30);  
translate( [ 109.4 , 3.5 , 16.8 ] ) rotate([0,0,0]) cylinder( h = 3.2, r1 = 1.8, r2= 3.5, $fn=30); 

}

module ventilation_holes()
    {
     for ( i = [0 : 9] ){
      translate([46 + (i*5.5),14.55,-1]) cube([3,19,10]);
    }
}

module cutouts()
{
//door close side
translate( [ 8.0, -.5 , -.5 ] )
        cube( [ 33.5 , 4.495 , 21 ] );
translate( [ 54, -.5 , -.5 ] )
        cube( [ 51.17 , 4.495 , 21 ] );
translate( [ 53.35 , -10, -.5 ] ) rotate([0,0,45]) cube([10 , 3.5 , 21]);
translate( [ 37.15 , -5, -.5 ] ) rotate([0,0,-45]) cube([10 , 3.5 , 21]);
    
// door closing screw
translate( [ 47.75 , -1.5 , -.5 ] ) cylinder( h = 21, r = 2, $fn=30);

ventilation_holes();
translate([0,50,0]) ventilation_holes();
translate([0,25,0]) ventilation_holes();
    

// rounded side cutoff    
translate( [ 26.5 , 95.6 , 4.5 ] ) rotate([0,90,0]) cylinder( h = 81.7, r = 3.5, $fn=30);   
translate([ 26.5 ,88.1,5]) cube([81.7,19,10]); 
translate([ 26.5 ,90.6,1]) cube([81.7,5,10]); 
    
translate( [ 0 , 68.1 , -10 ] ) cube( [ 30 , 30 , 10 ] );    
translate( [ -1 , 95.6 , 0 ] ) cube( [ 22.5 , 10 , 10 ] );   

// upper hinge 
translate( [2 , 88.1, 6] ) cube( [ 19.5, 10 , 10 ] );     
translate( [-2 , 97.8, 3] ) rotate([70,0,0]) cube( [ 19.5, 10 , 5 ] );   
translate( [ -5 , 95.6 , 4.5 ] ) rotate([0,90,0]) cylinder( h = 26.5, r = 2.5, $fn=30);  

// hinge hole
translate( [ -5 , 95.6 , 4.5 ] ) rotate([0,90,0]) cylinder( h = 128.1, r = 2.6, $fn=30); 

// door closing 
translate( [ 4 , 3.5 , 16.9 ] ) rotate([0,0,0]) cylinder( h = 3.2, r1 = 1.2, r2= 2.8, $fn=30);  
translate( [ 109.4 , 3.5 , 16.9 ] ) rotate([0,0,0]) cylinder( h = 3.2, r1 = 1.2, r2= 2.8, $fn=30);  

// M3 NUT
//translate( [55.65 , 0.5, 16] )
//    cylinder( h = 2.4, r = 5.5, $fn=6, center = true );
//    cube( [ 5.7, 10 , 2.5 ] );  


translate( [4 , 10, 4] ) cube( [ 4, 65 , 5 ] );  
translate( [109.7 , 10, 4] ) cube( [ 3, 70 , 5 ] );  

}



module SKR_cover_doors()
{
difference()
{
    body();
    cutouts();
    translate( [0 , -20, -3] ) rotate([0,45,45]) cube( [ 30, 30 , 20 ] );
    translate([20,39.05,.5]) rotate([180,0,-90]) linear_extrude(height = 1.5) {
       text("PRUSA", size = 8, halign = "center", valign = "center");}
    translate([30,39.05,.5]) rotate([180,0,0-90]) linear_extrude(height = 1.5) {
       text("SKR V1.3", size = 8, halign = "center", valign = "center");
     }  
    }
}
 
SKR_cover_doors();