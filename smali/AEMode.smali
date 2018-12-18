.class public abstract LAEMode;
.super Ljava/lang/Object;
.source "AEMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAEMode$AntibandingMode;
    }
.end annotation


# instance fields
.field protected final analog_gain:D

.field private final antibandingExposureMs:D

.field protected final antibandingMode:LAEMode$AntibandingMode;

.field protected calculatedExposureTime:D

.field protected calculatedSensitivity:D

.field protected final digital_gain:D

.field protected final exposureRangeHighMs:D

.field protected final exposureRangeLowMs:D

.field protected final exposure_time_ms:D

.field protected final maxAnalogGain:D

.field protected final sensitivity:D

.field protected final sensitivityRangeHigh:D

.field protected final sensitivityRangeLow:D

.field protected final tet:D


# direct methods
.method public constructor <init>(FFFIIJJILAEMode$AntibandingMode;F)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move/from16 v0, p4

    int-to-double v8, v0

    iput-wide v8, p0, LAEMode;->sensitivityRangeLow:D

    move/from16 v0, p5

    int-to-double v8, v0

    iput-wide v8, p0, LAEMode;->sensitivityRangeHigh:D

    move-wide/from16 v0, p6

    long-to-double v8, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->exposureRangeLowMs:D

    move-wide/from16 v0, p8

    long-to-double v8, v0

    const-wide v10, 0x41224f8000000000L    # 600000.0

    div-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->exposureRangeHighMs:D

    move/from16 v0, p10

    int-to-double v8, v0

    iput-wide v8, p0, LAEMode;->maxAnalogGain:D

    mul-float v7, p1, p2

    mul-float v2, v7, p3

    div-float v6, p12, v2

    cmpl-float v7, p12, v2

    if-lez v7, :cond_1

    mul-float v5, v6, p3

    float-to-double v8, v5

    iget-wide v10, p0, LAEMode;->exposureRangeHighMs:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    float-to-double v8, p1

    iput-wide v8, p0, LAEMode;->digital_gain:D

    float-to-double v8, p2

    float-to-double v10, v5

    mul-double/2addr v8, v10

    iget-wide v10, p0, LAEMode;->exposureRangeHighMs:D

    div-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->analog_gain:D

    iget-wide v8, p0, LAEMode;->exposureRangeHighMs:D

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    :goto_0
    iget-wide v8, p0, LAEMode;->digital_gain:D

    iget-wide v10, p0, LAEMode;->analog_gain:D

    mul-double/2addr v8, v10

    iget-wide v10, p0, LAEMode;->sensitivityRangeLow:D

    mul-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->sensitivity:D

    iget-wide v8, p0, LAEMode;->exposure_time_ms:D

    iget-wide v10, p0, LAEMode;->sensitivity:D

    mul-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->tet:D

    move-object/from16 v0, p11

    iput-object v0, p0, LAEMode;->antibandingMode:LAEMode$AntibandingMode;

    sget-object v7, LAEMode$AntibandingMode;->HZ60:LAEMode$AntibandingMode;

    move-object/from16 v0, p11

    if-ne v0, v7, :cond_8

    const-wide v8, 0x4030aaaaaaaaaaabL    # 16.666666666666668

    :goto_1
    iput-wide v8, p0, LAEMode;->antibandingExposureMs:D

    return-void

    :cond_0
    float-to-double v8, p1

    iput-wide v8, p0, LAEMode;->digital_gain:D

    float-to-double v8, p2

    iput-wide v8, p0, LAEMode;->analog_gain:D

    float-to-double v8, v5

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto :goto_0

    :cond_1
    cmpg-float v7, p12, v2

    if-gez v7, :cond_7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v7

    if-lez v7, :cond_4

    mul-float v4, v6, p1

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    mul-float v3, v4, p2

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->analog_gain:D

    mul-float v7, v3, p3

    float-to-double v8, v7

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto :goto_0

    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    float-to-double v8, v3

    iput-wide v8, p0, LAEMode;->analog_gain:D

    float-to-double v8, p3

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto :goto_0

    :cond_3
    float-to-double v8, v4

    iput-wide v8, p0, LAEMode;->digital_gain:D

    float-to-double v8, p2

    iput-wide v8, p0, LAEMode;->analog_gain:D

    float-to-double v8, p3

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto :goto_0

    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p2, v7

    if-lez v7, :cond_6

    mul-float v3, v6, p2

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->analog_gain:D

    mul-float v7, v3, p3

    float-to-double v8, v7

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto/16 :goto_0

    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    float-to-double v8, v3

    iput-wide v8, p0, LAEMode;->analog_gain:D

    float-to-double v8, p3

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->analog_gain:D

    mul-float v7, p3, v6

    float-to-double v8, v7

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto/16 :goto_0

    :cond_7
    float-to-double v8, p1

    iput-wide v8, p0, LAEMode;->digital_gain:D

    float-to-double v8, p2

    iput-wide v8, p0, LAEMode;->analog_gain:D

    float-to-double v8, p3

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto/16 :goto_0

    :cond_8
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    goto/16 :goto_1
.end method


# virtual methods
.method public abstract calculate()V
.end method

.method protected doAntibandingAdjustment(D)V
    .locals 15

    iget-object v8, p0, LAEMode;->antibandingMode:LAEMode$AntibandingMode;

    sget-object v9, LAEMode$AntibandingMode;->OFF:LAEMode$AntibandingMode;

    if-eq v8, v9, :cond_1

    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v10, p0, LAEMode;->antibandingExposureMs:D

    const-wide v12, 0x4007eb851eb851ecL    # 2.99

    div-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v10, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    iget-wide v8, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v4, v8, v10

    iget-wide v8, p0, LAEMode;->tet:D

    div-double v6, v8, v4

    iget-wide v8, p0, LAEMode;->exposureRangeLowMs:D

    cmpg-double v8, v4, v8

    if-gez v8, :cond_0

    iget-wide v4, p0, LAEMode;->exposureRangeLowMs:D

    :cond_0
    iput-wide v4, p0, LAEMode;->calculatedExposureTime:D

    iput-wide v6, p0, LAEMode;->calculatedSensitivity:D

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v10, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_4

    iget-wide v8, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double v4, v8, v10

    iget-wide v8, p0, LAEMode;->tet:D

    div-double v6, v8, v4

    iget-wide v8, p0, LAEMode;->exposureRangeLowMs:D

    cmpg-double v8, v4, v8

    if-gez v8, :cond_3

    iget-wide v4, p0, LAEMode;->exposureRangeLowMs:D

    :cond_3
    iput-wide v4, p0, LAEMode;->calculatedExposureTime:D

    iput-wide v6, p0, LAEMode;->calculatedSensitivity:D

    goto :goto_0

    :cond_4
    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v10, p0, LAEMode;->antibandingExposureMs:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_6

    iget-wide v8, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v0, v8, v10

    :goto_1
    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double v4, v0, v2

    iget-wide v8, p0, LAEMode;->tet:D

    div-double v6, v8, v4

    iget-wide v8, p0, LAEMode;->sensitivityRangeLow:D

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_5

    cmpl-double v8, v4, p1

    if-lez v8, :cond_7

    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    div-double v4, v0, v2

    iput-wide v4, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v8, p0, LAEMode;->tet:D

    div-double/2addr v8, v4

    iput-wide v8, p0, LAEMode;->calculatedSensitivity:D

    iget-wide v8, p0, LAEMode;->calculatedSensitivity:D

    iget-wide v10, p0, LAEMode;->sensitivityRangeHigh:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    iget-wide v8, p0, LAEMode;->sensitivityRangeHigh:D

    iput-wide v8, p0, LAEMode;->calculatedSensitivity:D

    goto :goto_0

    :cond_6
    iget-wide v0, p0, LAEMode;->antibandingExposureMs:D

    goto :goto_1

    :cond_7
    iget-wide v8, p0, LAEMode;->exposureRangeLowMs:D

    cmpg-double v8, v4, v8

    if-gez v8, :cond_8

    iget-wide v4, p0, LAEMode;->exposureRangeLowMs:D

    :cond_8
    iput-wide v4, p0, LAEMode;->calculatedExposureTime:D

    iput-wide v6, p0, LAEMode;->calculatedSensitivity:D

    goto :goto_0
.end method

.method public getCalculatedAnalogGain()F
    .locals 8

    invoke-virtual {p0}, LAEMode;->getCalculatedSensitivity()I

    move-result v4

    int-to-double v0, v4

    iget-wide v4, p0, LAEMode;->maxAnalogGain:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, LAEMode;->maxAnalogGain:D

    iget-wide v6, p0, LAEMode;->sensitivityRangeLow:D

    div-double v2, v4, v6

    :goto_0
    double-to-float v4, v2

    return v4

    :cond_0
    iget-wide v4, p0, LAEMode;->sensitivityRangeLow:D

    div-double v2, v0, v4

    goto :goto_0
.end method

.method public getCalculatedDigitalGain()F
    .locals 8

    invoke-virtual {p0}, LAEMode;->getCalculatedSensitivity()I

    move-result v4

    int-to-double v0, v4

    iget-wide v4, p0, LAEMode;->maxAnalogGain:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, LAEMode;->maxAnalogGain:D

    div-double v4, v0, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    :goto_0
    double-to-float v4, v2

    return v4

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public getCalculatedExposureTime()J
    .locals 4

    iget-wide v0, p0, LAEMode;->calculatedExposureTime:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCalculatedSensitivity()I
    .locals 2

    iget-wide v0, p0, LAEMode;->calculatedSensitivity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMinIso()I
    .locals 2

    iget-wide v0, p0, LAEMode;->sensitivityRangeLow:D

    double-to-int v0, v0

    return v0
.end method
