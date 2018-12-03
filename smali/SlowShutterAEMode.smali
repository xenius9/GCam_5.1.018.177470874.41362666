.class public LSlowShutterAEMode;
.super LAEMode;
.source "SlowShutterAEMode.java"


# instance fields
.field private maxExposureMs:D


# direct methods
.method public constructor <init>(FFFIIJJILAEMode$AntibandingMode;DF)V
    .locals 18
    .param p1, "digital_gain"    # F
    .param p2, "analog_gain"    # F
    .param p3, "exposure_time_ms"    # F
    .param p4, "sensitivityRangeLow"    # I
    .param p5, "sensitivityRangeHigh"    # I
    .param p6, "exposureRangeLow"    # J
    .param p8, "exposureRangeHigh"    # J
    .param p10, "maxAnalogGain"    # I
    .param p11, "antibandingMode"    # LAEMode$AntibandingMode;
    .param p12, "maxExposureMs"    # D
    .param p14, "desiredTET"    # F

    .prologue
    .line 8
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p14

    invoke-direct/range {v4 .. v16}, LAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;F)V

    .line 10
    move-wide/from16 v0, p12

    move-object/from16 v2, p0

    iput-wide v0, v2, LSlowShutterAEMode;->maxExposureMs:D

    .line 12
    return-void
.end method


# virtual methods
.method public calculate()V
    .locals 6

    .prologue
    .line 16
    iget-wide v2, p0, LSlowShutterAEMode;->maxExposureMs:D

    iget-wide v4, p0, LSlowShutterAEMode;->exposureRangeHighMs:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v0, p0, LSlowShutterAEMode;->exposureRangeHighMs:D

    .line 17
    .local v0, "maxExpMs":D
    :goto_0
    iget-wide v2, p0, LSlowShutterAEMode;->sensitivity:D

    iget-wide v4, p0, LSlowShutterAEMode;->sensitivityRangeLow:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 18
    iget-wide v2, p0, LSlowShutterAEMode;->tet:D

    iget-wide v4, p0, LSlowShutterAEMode;->sensitivityRangeLow:D

    div-double/2addr v2, v4

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    .line 19
    iput-wide v0, p0, LSlowShutterAEMode;->calculatedExposureTime:D

    .line 20
    iget-wide v2, p0, LSlowShutterAEMode;->tet:D

    div-double/2addr v2, v0

    iput-wide v2, p0, LSlowShutterAEMode;->calculatedSensitivity:D

    .line 21
    iget-wide v2, p0, LSlowShutterAEMode;->calculatedSensitivity:D

    iget-wide v4, p0, LSlowShutterAEMode;->sensitivityRangeHigh:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, LSlowShutterAEMode;->sensitivityRangeHigh:D

    iput-wide v2, p0, LSlowShutterAEMode;->calculatedSensitivity:D

    .line 31
    :cond_0
    :goto_1
    invoke-virtual {p0, v0, v1}, LSlowShutterAEMode;->doAntibandingAdjustment(D)V

    .line 32
    return-void

    .line 16
    .end local v0    # "maxExpMs":D
    :cond_1
    iget-wide v0, p0, LSlowShutterAEMode;->maxExposureMs:D

    goto :goto_0

    .line 23
    .restart local v0    # "maxExpMs":D
    :cond_2
    iget-wide v2, p0, LSlowShutterAEMode;->tet:D

    iget-wide v4, p0, LSlowShutterAEMode;->sensitivityRangeLow:D

    div-double/2addr v2, v4

    iput-wide v2, p0, LSlowShutterAEMode;->calculatedExposureTime:D

    .line 24
    iget-wide v2, p0, LSlowShutterAEMode;->sensitivityRangeLow:D

    iput-wide v2, p0, LSlowShutterAEMode;->calculatedSensitivity:D

    goto :goto_1

    .line 28
    :cond_3
    iget-wide v2, p0, LSlowShutterAEMode;->sensitivity:D

    iput-wide v2, p0, LSlowShutterAEMode;->calculatedSensitivity:D

    .line 29
    iget-wide v2, p0, LSlowShutterAEMode;->exposure_time_ms:D

    iput-wide v2, p0, LSlowShutterAEMode;->calculatedExposureTime:D

    goto :goto_1
.end method
