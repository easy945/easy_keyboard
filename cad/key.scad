module caozhu()
{
    difference() {
        cylinder(7.9, r=4, center=true, $fn=36);

        cube([1.6, 4, 8], center=true);
        rotate([0, 0, 90]) {
            cube([1.6, 4, 8], center=true);
        }
    }
}

module zhuti()
{
    difference() {
        hull() {
            cube([18, 18, 0.1], center=true);
            translate([0, 0, 10]) {
                cube([12.5, 15, 1], center=true);
            }
        }

        hull() {
            cube([16, 16, 0.2], center=true);
            translate([0, 0, 6.5]) {
                cube([10.5, 13, 1], center=true);
            }
        }
    }
}

module chengshuti()
{
    zhuti();
    translate([0, 0, 3.5]) {
        caozhu();
    }
}

module qiehu()
{
    translate([0, 0, 28.4]) {
        rotate([90, 0, 0]) {
            cylinder(20, r=19, center=true, $fn=100);
        }
    }
}

module qiedi()
{  
    rotate([-8, 0, 0]) {
        cube([20, 20, 4], center=true);
    }
}

difference() {
    chengshuti();
    qiehu();
    qiedi();
}