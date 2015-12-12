r = 20;
th = 4;
offset = -3;
hole_length = 4;


side = 2*r+3*th;

module piece()
{
difference(){

cube([side,side,th],center=true);

union(){
translate([-side/2,-side/2,0]) cylinder(h=th,r=r,center=true);

translate([side/2,-side/2,0]) cylinder(h=th,r=r,center=true);

translate([side/2,side/2,0]) cylinder(h=th,r=r,center=true);

translate([-side/2,side/2,0]) cylinder(h=th,r=r,center=true);

cylinder(h=th,r=r*0.5,center=true);

translate([(-side+hole_length)/1.98,0,0]) hole();

translate([(side-hole_length)/1.98,0,0]) hole();

translate([0,(-side+hole_length)/1.98,0]) rotate([0,0,90]) hole();

translate([0,(side-hole_length)/1.98,0]) rotate([0,0,90]) hole();

}
}


}

module hole()
{
	cube([hole_length,th+offset,th],center=true);
}

piece();