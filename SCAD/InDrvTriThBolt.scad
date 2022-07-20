//This can be too complex to preview, must full render.

//This script creates inside drive triangular thread bolts,
//with simple parameters.

//Change the detail based on size as needed.  128 is
//good for up to 10mm diameter threads in most cases,
//if a bit tighter tolarance is needed go to 256.
//For diameter greater than 10mm stick with 256 or
//512 for detail.  64 or 32 are good for quick preview
//renders.
detail=128;
$fn=detail;

//Some constants used later.
sqrDrive = 4;
triDrive = 3;
hexDrive = 6;


//Either triDrive (triangle drive) or sqrDrive (square drive)
//is recommended for the drive type, as hex may not hold up
//depending on material and size of bolt.

//Parameters, set to your bolt:
tol     = 0.1;  //Spacing tolarance for your printer.
drive   = sqrDrive;  //Type of drive (inside drive only).
DrvSize = 4;    //Size of drive hole in mm.
HeadSz  = 4;    //Radius of head in mm.
HeadHt  = 3;    //Height of head.
HeadCamf= 0.5;  //Height of edge camfer on head.
ThPitch = 0.5;  //Thread pitch in mm per thread.
ThLen   = 10;   //Length of threaded shaft.
ThRad   = 2.5;  //Radius of threaded shaft.
ThCamf  = 0.25; //Height of camfer on end of threads.





Head(HeadHt,HeadSz,DrvSize);
translate([0,0,HeadHt]) triBolt(ThLen,ThRad,ThPitch);


module Head(h,r,s){
  difference(){
    ccyl(h,r,HeadCamf);
    cylinder(h,r=s*cos(180/drive),center=true, $fn=drive);
    }
}
//


module triBolt(h,r,tp){
  difference(){
    difference(){
      cylinder(h,r=r);
      triThread(h,r,tp);
    }
    cylcamfer(ThCamf,r,ThCamf,0,0,h-ThCamf);
  }
}
//


module triThread(h,r,p){
  for(hi=[-p:p:h+p]) for(rot= [0:360/detail:360]) {
    rotate([0,0,rot])
      translate([0,r-(p/(1/(tol/2))),(hi-p/2)+((rot%360)/360*p)])
        rotate([45,0,0])
          //cube([r*0.12,p*0.71,p*0.71], center=true);
          cube([r/(detail*0.15),p*0.71,p*0.71], center=true);
  }
}
//


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