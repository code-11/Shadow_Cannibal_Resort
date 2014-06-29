if (dragTarget != -1) {
    //var dragAngle = image_angle - 180;
    var dragAngle = point_direction(x, y, dragTarget.x, dragTarget.y);
    dragTarget.x = x + lengthdir_x(dragRange, dragAngle);
    dragTarget.y = y + lengthdir_y(dragRange, dragAngle);
}
