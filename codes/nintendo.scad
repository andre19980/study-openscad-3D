module n_2d() {
    polygon([
        [0, 0],
        [0, 30],
        [10, 30],
        [20, 15],
        [20, 30],
        [30, 30],
        [30, 0],
        [20, 0],
        [10, 15],
        [10, 0]
    ]);
}


module n_3d() {
    linear_extrude(height=10) {
        n_2d();
    }
}


union() {
    rotate([90, 0, 0]) n_3d();
    
    translate([10, 20, 0]) rotate([90, 0, -90]) n_3d();
    
    translate([30, 10, 0]) rotate([90, 0, 180]) n_3d();
    
    translate([20, -10, 0]) rotate([90, 0, 90]) n_3d();
}
