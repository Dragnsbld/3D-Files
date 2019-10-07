// PRUSA I3 Original
// SKR V1.3 cover Base
// Russell Cygan
// Based on Original RAMBo Base by Josef Prusa

// main body
module main_body(){
cube( [ 121.67 , 100.1 , 2 ] );  
cube( [ 1.5 , 96.1 , 35 ] );
// USB Side Wall  
translate( [ 0 , 94.1 , 0 ] ) cube( [ 105.5 , 2 , 35 ] );  
    
translate( [ 0 , 96.1 , 1.5 ] ) cube( [ 106 , 4 , 4 ] );
    
translate( [ 0 , 0 , 1 ] ) cube( [ 5.5 , 7 , 34 ] );  
translate( [ 0 , 0 , 1 ] ) cube( [ 9 , 95.8 , 3 ] );  
translate( [ 105.17 , 0 , 0 ] ) cube( [ 9 , 95.8 , 4 ] );  
//lower Door close Pin Support
translate( [ 105.17 , 94.1 , 0 ] ) cube( [ 9 , 6 , 35 ] );  
//upper door close pin support
translate( [ 0 , 94.1 , 0 ] ) cube( [ 5.5 , 6 , 35 ] );  
//door closing block
translate( [ 41.5 , 95 , 20 ] ) cube( [ 12.5 , 12.5 , 15 ] );

translate( [ 20 , 0 , 0 ] ) cube( [ 87.17 , 3 , 5 ] );  

// SKR V1.3 mounting holes
translate( [ 109.35 , 14 , 1 ] ) rotate([0,0,90]) cylinder( h = 7, r = 4.5, $fn=6); 
translate( [ 109.35 , 90.1 , 1 ] ) rotate([0,0,90]) cylinder( h = 7, r = 4.5, $fn=6); 
translate( [ 7.5 , 14 , 1 ] ) cylinder( h = 7, r = 4.5, $fn=6); 
translate( [ 7.5 , 90.1 , 1 ] ) cylinder( h = 7, r = 4.5, $fn=6); 

// corners reinforcement
    //upper usb side
translate( [ 0 , 84.6 , 1 ] ) cube( [ 20.17 , 10.5 , 6 ] );  
translate( [ 0 , 79.82 , 1 ] ) cube( [ 7.5 , 11 , 6 ] ); 
translate( [ 0 , 7.75 , 1 ] ) cube( [ 7.5 , 11 , 6 ] ); 
translate( [ 0 , 0 , 1 ] ) cube( [ 13 , 14 , 6 ] ); 

// frame mounting screw blocks
translate( [ 105.17 , 0 , 0 ] ) cube( [ 16.5 , 8 , 8 ] ); 
translate( [ 1 , 0 , 0 ] ) cube( [ 19.5 , 8 , 8 ] );  
translate( [ 16.5 , 8 , 5 ] ) rotate([90,0,0]) cylinder( h = 8, r = 5, $fn=30);   
translate( [ 117.67 , 8 , 5 ] ) rotate([90,90,0]) cylinder( h = 8, r = 5, $fn=30);
translate( [ 18.45 , 0 , 0 ] ) cube( [ 3 , 8 , 5.5] ); 

// door closing corner
translate( [ 109.17 , 96.6 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   
translate( [ 2 , 94.6 , 31 ] ) cube( [ 6 , 5.5 , 4] ); 
translate( [ 4 , 96.6 , 35 ] ) cylinder( h = 3, r1=2.5, r2=1, $fn=30);   
translate( [ 96.17 , 2 , 0 ] ) cylinder( h = 5, r = 6, $fn=6);   

}



module inside_cable_holder(){
    
translate( [ 57.17 , 6 , 0.5 ] ) cube( [ 30, 2, 20] ); 
difference(){
translate( [ 57.17 , 8 , 25 ] ) rotate([0,90,0]) cylinder( h = 30, r = 6, $fn=6);   
translate( [ 56.17 , 8 , 25 ] ) rotate([0,90,0]) cylinder( h = 34, r = 4, $fn=6);  
translate( [ 56.17 , 8 , 10 ] ) cube( [ 34, 10, 25] );     
}
    
    }

module cutouts(){
// side     
translate( [ 12 , 19 , 1 ] ) cube( [ 92.67 , 60.3 , 3 ] );   

// SKR V1.3 M3 screws
translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [ 109.35 , 14 , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [ 109.35 , 90.1 , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);  
translate( [ 7.5 , 90.1 , -1 ] ) cylinder( h = 10, r = 1.7, $fn=30);     
    
// frame mounting screws
translate( [ 16.5 , 8 , 5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);   
translate( [ 117.67 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 10, r = 1.6, $fn=30);   
translate( [ 16.5 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);   
translate( [ 117.67 , 9 , 5 ] ) rotate([90,0,0]) cylinder( h = 5, r = 3, $fn=30);       
translate( [ 121.67 , -2 , -1 ] ) cube( [ 5 , 15 , 10] ); 

// USB connector hole
translate( [ 76.49 , 93.6 , 8 ] ) cube( [ 14 , 5.5 , 14 ] ); 

// MicroSD Card
translate( [ 54.36 , 93.6 , 8 ] ) cube( [ 18.5 , 5.5 , 6 ] );  

// door closing screw
    //screw hole
translate( [ 47.75 , 101.6 , 22 ] ) cylinder( h = 43, r = 1.8, $fn=30); 
    //M3 nut trap
translate( [ 47.75 , 101.6 , 19.5 ] ) rotate([0,0,30]) cylinder( h = 2.9, r = 5.5, $fn=6);
    translate([ 41 , 104 , 19 ] )rotate([0,0,45]) cube( [ 6 , 6 , 17 ] );
    translate([ 50.5 , 108 , 19 ] )rotate([0,0,-45]) cube( [ 6 , 6 , 17 ] );

// heatbed cable opening hole
translate( [ 68.42 , 98.1 , 24 ] ) rotate([90,90,0]) cylinder( h = 5, r = 7, $fn=6); 
translate( [ 70.42 , 84.1 , 20.5 ] ) cube( [ 4 , 15 , 15] ); 
translate( [ 62.42 , 99.1 , 27.5 ] ) rotate([90,60,0]) cube( [ 5 , 10 , 10] ); 

// nut traps
translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [ 109.67 , 14 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [ 109.67 , 90.1 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  
translate( [ 7.5 , 90.1 , -1 ] ) cylinder( h = 4, r = 3.2, $fn=6);  

translate( [ 7.5 , 14 , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ 109.67 , 14 , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ 109.67 , 90.1 , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  
translate( [ 7.5 , 90.1 , -1 ] ) cylinder( h = 1.5, r1 = 5, r2=3.2, $fn=6);  

// door closing corners
translate( [ 8 , 87.6 , 28 ] ) cube( [ 5 , 5 , 10] );




// x axis cable hole
translate( [ 96.17 , 2 , -1 ] ) cylinder( h = 10, r = 4, $fn=6);   
translate( [ 87.17 , -5 , -1 ] ) cube( [ 15, 5, 10] ); 



// large corner coutout
translate( [ -25 , 93.5 , -54 ] ) rotate([50,0,45]) cube( [ 50, 50, 50] ); 
translate( [ 144.65 , 69.6 , -10 ] ) rotate([0,0,45]) cube( [ 50, 50, 50] ); 

}


module ext_cable_holder()
{
difference()
{
    union(){
        rotate([90,0,0]) translate([-8, 49.3, -28]) rotate([0,90,0]) cylinder( h = 4, r1 = 7, r2=10, $fn=6);    
        rotate([90,0,0]) translate([-4, 49.3, -28]) rotate([0,90,0]) cylinder( h = 4, r1 = 10, r2=10, $fn=6);    
        rotate([90,0,0]) translate( [ 1.5 , 49.3 , -28 ] ) rotate([0,90,0]) cylinder( h = 10, r1 = 10, r2=7, $fn=6);
        translate( [ -4.1 , 49.3 , 17.5 ] ) rotate([0,45,0]) cube( [ 7 , 5 , 8 ] );           
    }
    
    translate( [ -15 , 36.3 , 15] ) cube( [ 15 , 15 , 25 ] );  
    translate( [ 1.5 , 49.3 , 10] ) cube( [ 15 , 15 , 25 ] );   
 
    difference(){
        rotate([90,0,0]) translate([-4, 49.3, -28]) rotate([0,90,0]) cylinder( h = 3.5, r = 8,  $fn=30);    
        rotate([90,0,0]) translate([-5, 49.3, -28]) rotate([0,90,0]) cylinder( h = 5.5, r = 6.5,  $fn=30);    
        }
}
}

module SKR_cover()
{
    difference()
    {
    main_body();
    cutouts();
    }
}


difference(){

union(){
SKR_cover();
    //translate( [ 10 , 112.3 , 3] ) cube( [ 6 , 1 , 32 ] ); 
    translate( [ 12 , 93.1 , 1] ) cube( [ 4 , 1 , 2 ] ); 
}

translate( [ 25 , 93.1 , 20.8] ) cube( [ 7.4 , 5 , 16 ] );  //Cube018   
translate( [ 25 , 99.1 , 25 ] ) rotate([90,90,0]) cylinder( h = 7, r = 8.5, $fn=6); 
//Start ventilation slots
x=14;
y=21.5;
z=-.5;

for (i =[1:14])
    if (i==1)
    {
        translate( [ x , y , z ] ) cube( [ 4 , 15 , 2 ] );
    }
    else
    {
        translate( [ x*(i/2) , y , z ] )
      cube( [ 4 , 15 , 2 ] );
    }
x1=14;
y1=41.5;
z1=-.5;

for (i =[1:14])
    if (i==1)
    {
        translate( [ x1 , y1 , z1 ] ) cube( [ 4 , 15 , 2 ] );
    }
    else
    {
        translate( [ x1*(i/2) , y1 , z1 ] )
      cube( [ 4 , 15 , 2 ] );
    }
x2=14;
y2=61.5;
z2=-.5;

for (i =[1:14])
    if (i==1)
    {
        translate( [ x2 , y2 , z2 ] ) cube( [ 4 , 15 , 2 ] );
    }
    else
    {
        translate( [ x2*(i/2) , y2 , z2 ] )
      cube( [ 4 , 15 , 2 ] );
    }
//End ventilation slots
}


// upper print part support
translate([0,1,0])
difference(){
translate( [ 18.25 , 94.1 , 15] ) cube( [ 6.75 , 1 , 19 ] );    
translate( [ 17 , 94.7 , 29.4] ) rotate([0,60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 30 , 94.7 , 13.1] ) rotate([0,-60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 30 , 84.85 , 13] ) rotate([0,-60,0]) cube( [ 10 , 2 , 10 ] );
translate( [ 17 , 94 , 13.1] ) rotate([0,30,0]) cube( [ 10 , 2 , 20 ] );        
}



// print part support

//Near USB and MicroSD cutouts
difference()
{
translate( [ 62.92 , 94.6 , 15] ) cube( [ 7.5 , 1 , 19 ] );    
translate( [ 61.92 , 95.1 , 27.8] ) rotate([0,60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 72.92 , 95.1 , 13.9] ) rotate([0,-60,0]) cube( [ 1 , 1 , 19 ] );    
translate( [ 74.42 , 94.1 , 10] ) rotate([0,-60,0]) cube( [ 10 , 2 , 10 ] );    
}

//new Zip Ties
    //inside upper left
translate( [0.25 , 7.1 , 26 ] ) rotate([0,0,0])  difference() {
           
       translate( [0 , 0 , -2 ] ) cube( [ 5 , 8 , 10 ] );
       translate( [0 , -1 , -3 ] ) rotate([0,45,0])  cube( [ 5 , 10 , 8 ] );
       translate( [5, -1 , 6 ] ) rotate([0,-60,0])  cube( [ 5 , 10 , 8 ] );
      union() {  
       translate( [1.5 , 2.5 , 3.5] ) cube( [ 2 , 3 ,10 ] );
       translate( [3 , 2.5 , 2 ] ) cube( [ 5.5 , 3 ,2 ] );
       translate( [2 , 2.5 , 6.5 ] ) cube( [ 5 , 3 ,3 ] );
       
       difference () {    
       translate( [ 3 ,5.5 , 3.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 1.5, $fn=30);  
          translate( [3.5 , 1.5 , 4 ] ) cube( [ 5 , 5 ,3 ] );  
           
       }}}

    //inside upper right
translate( [0.25 , 78 , 26 ] ) rotate([0,0,0])  difference() {
           
       translate( [0 , 0 , -2 ] ) cube( [ 5 , 8 , 10 ] );
       translate( [0 , -1 , -3 ] ) rotate([0,45,0])  cube( [ 5 , 10 , 8 ] );
       translate( [5, -1 , 6 ] ) rotate([0,-60,0])  cube( [ 5 , 10 , 8 ] );
      union() {  
       translate( [1.5 , 2.5 , 3.5] ) cube( [ 2 , 3 ,10 ] );
       translate( [3 , 2.5 , 2 ] ) cube( [ 5.5 , 3 ,2 ] );
       translate( [2 , 2.5 , 6.5 ] ) cube( [ 5 , 3 ,3 ] );
       
       difference () {    
       translate( [ 3 ,5.5 , 3.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 1.5, $fn=30);  
          translate( [3.5 , 1.5 , 4 ] ) cube( [ 5 , 5 ,3 ] );  
           
       }}}
       
    //outside upper
translate( [17 , 94.55 , 25 ] ) rotate([0,0,90])  difference() {
           
       translate( [0 , 0 , -2 ] ) cube( [ 5 , 8 , 10 ] );
       translate( [0 , -1 , -3 ] ) rotate([0,45,0])  cube( [ 5 , 10 , 8 ] );
       translate( [5, -1 , 6 ] ) rotate([0,-60,0])  cube( [ 5 , 10 , 8 ] );
      union() {  
       translate( [1.5 , 2.5 , 3.5] ) cube( [ 2 , 3 ,10 ] );
       translate( [3 , 2.5 , 2 ] ) cube( [ 5.5 , 3 ,2 ] );
       translate( [2 , 2.5 , 6.5 ] ) cube( [ 5 , 3 ,3 ] );
       
       difference () {    
       translate( [ 3 ,5.5 , 3.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 1.5, $fn=30);  
          translate( [3.5 , 1.5 , 4 ] ) cube( [ 5 , 5 ,3 ] );  
           
       }}}

    //outside lower
translate( [62 , 94.5 , 26 ] ) rotate([0,0,90])  difference() {
           
       translate( [0 , 0 , -2 ] ) cube( [ 5 , 8 , 10 ] );
       translate( [0 , -1 , -3 ] ) rotate([0,45,0])  cube( [ 5 , 10 , 8 ] );
       translate( [5, -1 , 6 ] ) rotate([0,-60,0])  cube( [ 5 , 10 , 8 ] );
      union() {  
       translate( [1.5 , 2.5 , 3.5] ) cube( [ 2 , 3 ,10 ] );
       translate( [3 , 2.5 , 2 ] ) cube( [ 5.5 , 3 ,2 ] );
       translate( [2 , 2.5 , 6.5 ] ) cube( [ 5 , 3 ,3 ] );
       
       difference () {    
       translate( [ 3 ,5.5 , 3.5 ] ) rotate([90,0,0]) cylinder( h = 3, r = 1.5, $fn=30);  
          translate( [3.5 , 1.5 , 4 ] ) cube( [ 5 , 5 ,3 ] );  
           
       }}}
 