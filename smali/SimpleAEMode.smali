.class public LSimpleAEMode;
.super LAEMode;
.source "SimpleAEMode.java"


# direct methods
.method public constructor <init>(FFFIIJJILAEMode$AntibandingMode;F)V
    .locals 0

    invoke-direct/range {p0 .. p12}, LAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;F)V

    return-void
.end method


# virtual methods
.method public calculate()V
    .locals 2

    iget-wide v0, p0, LSimpleAEMode;->exposure_time_ms:D

    iput-wide v0, p0, LSimpleAEMode;->calculatedExposureTime:D

    iget-wide v0, p0, LSimpleAEMode;->sensitivity:D

    iput-wide v0, p0, LSimpleAEMode;->calculatedSensitivity:D

    iget-wide v0, p0, LSimpleAEMode;->exposureRangeHighMs:D

    invoke-virtual {p0, v0, v1}, LSimpleAEMode;->doAntibandingAdjustment(D)V

    return-void
.end method
