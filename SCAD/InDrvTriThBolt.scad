//This is too complex to preview, must full render.

//Change the detail based on size as needed.  64 is
//good for up to 5mm diameter threads in most cases,
//if a bit tighter tolarance is needed go to 128.
//For diameter greater than 10mm stick with 256 or
//512 for detail.
detail=64;
$fn=detail;


SqrHead(3,3,3);
difference(){
    triBolt(13,2.5,0.5);
    cylinder(3,r=2.5);
}
//


module SqrHead(h,r,s){
    difference(){
      ccyl(h,r,0.5);
      translate([0,0,h/2])cube([s,s,h], center=true);
    }
}
//


module triBolt(h,r,tp){
  difference(){
    ccyl(h,r,0.5);
    triThread(h,r,tp);
  }
}
//


module triThread(h,r,p){
  for(hi=[0:p:h]) for(rot= [0:360/detail:360]) {
    rotate([0,0,rot])
      translate([0,r,(hi-p/2)+((rot%360)/360*p)])
        rotate([45,0,0])
          cube([r*0.12,p*0.71,p*0.71], center=true);
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
