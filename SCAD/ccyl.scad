//This is a simple cylinder with camphered ends.
//This is the basis for many other things.

//Depending on usage and desired quality you may
//need to set the detail to a higher level than
//64, I recommend 128, 256, or 512.
detail=64;
$fn=detail;
//rotate([0,180,0]) cylcamfer(2,20,0,0,-2);


//To use just pass the height as first param,
//the radius as second parameter, and the height
//of the 45 degree camfer as the third.
ccyl(50,10,0.5);

module ccyl(h,r,c){
  difference(){
    cylinder(h=h,r=r);
    union(){
      cylcamfer(c,r,c,0,0,h-c);
      rotate([0,180,0]) cylcamfer(c,r,c,0,0,-c);
    }
  }
}
//


module cylcamfer(h,r,c,px,py,pz){
  translate([px,py,pz]){
    difference(){
      cylinder(h=h,r=r);
      cylinder(h=h,r1=r,r2=r-c);
    }
  }
} 
