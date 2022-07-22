//The detail, $fn, and tol variables should be
//set in the file that uses this module, good
//default values for this use are given here.

detail=128;
$fn=detail;
tol=0.1;


//Code for punching threaded holes for simple
//triangle bolts in anything.  An example is
//given at the end of this file.



module ThreadHole(h,hd,p){
  r=hd/2;
  difference(){
    cylinder(h,d=hd+(tol/2));
    for(hi=[-p:p:h+p]) for(rot= [0:360/detail:360]) {
      rotate([0,0,rot])
        translate([0,r+(p/(1/(tol/2))),(hi-p/2)+((rot%360)/360*p)])
          rotate([45,0,0])
            cube([r/(detail*0.15),p*0.71,p*0.71], center=true);
    }
  }
}
//



//***** EXAMPLE *****
//Here is a 5mm thick 30mm square plate with 4 threaded
//holes of 3mm diameter and 1mm thread pitch near the corners
//as an example of using the ThreadHole module.   For normal
//usage the example code should be commented out.
difference(){
  cube([30,30,5],center=true);
  union(){
    translate([11.5,11.5,-2.5]) ThreadHole(5,3,1);
    translate([-11.5,11.5,-2.5]) ThreadHole(5,3,1);
    translate([11.5,-11.5,-2.5]) ThreadHole(5,3,1);
    translate([-11.5,-11.5,-2.5]) ThreadHole(5,3,1);
  }
}
//***** END EXAMPLE *****
