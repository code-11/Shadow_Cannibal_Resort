if (alertTimer > 0){
    alertTimer--;
}
else if (alertTimerCap == 0) {
    alertTimer = -1;
    alert = false;
}
