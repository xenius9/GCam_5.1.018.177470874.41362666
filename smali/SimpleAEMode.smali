.class public LSimpleAEMode;
.super LAEMode;
.source "SimpleAEMode.java"


# direct methods
.method public constructor <init>(FFFIIJJILAEMode$AntibandingMode;F)V
    .locals 0
    .param p1, "digital_gain"    # F
    .param p2, "analog_gain"    # F
    .param p3, "exposure_time_ms"    # F
    .param p4, "sensitivityRangeLow"    # I
    .param p5, "sensitivityRangeHigh"    # I
    .param p6, "exposureRangeLow"    # J
    .param p8, "exposureRangeHigh"    # J
    .param p10, "maxAnalogGain"    # I
    .param p11, "antibandingMode"    # LAEMode$AntibandingMode;
    .param p12, "desiredTET"    # F

    .prologue
    .line 9
    invoke-direct/range {p0 .. p12}, LAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;F)V

    .line 11
    return-void
.end method


# virtual methods
.method public calculate()V
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, LSimpleAEMode;->exposure_time_ms:D

    iput-wide v0, p0, LSimpleAEMode;->calculatedExposureTime:D

    .line 16
    iget-wide v0, p0, LSimpleAEMode;->sensitivity:D

    iput-wide v0, p0, LSimpleAEMode;->calculatedSensitivity:D

    .line 17
    iget-wide v0, p0, LSimpleAEMode;->exposureRangeHighMs:D

    invoke-virtual {p0, v0, v1}, LSimpleAEMode;->doAntibandingAdjustment(D)V

    .line 18
    return-void
.end method
