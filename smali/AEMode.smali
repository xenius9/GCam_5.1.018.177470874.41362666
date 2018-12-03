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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    move/from16 v0, p4

    int-to-double v8, v0

    iput-wide v8, p0, LAEMode;->sensitivityRangeLow:D

    .line 31
    move/from16 v0, p5

    int-to-double v8, v0

    iput-wide v8, p0, LAEMode;->sensitivityRangeHigh:D

    .line 32
    move-wide/from16 v0, p6

    long-to-double v8, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->exposureRangeLowMs:D

    .line 33
    move-wide/from16 v0, p8

    long-to-double v8, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->exposureRangeHighMs:D

    .line 34
    move/from16 v0, p10

    int-to-double v8, v0

    iput-wide v8, p0, LAEMode;->maxAnalogGain:D

    .line 37
    mul-float v7, p1, p2

    mul-float v2, v7, p3

    .line 38
    .local v2, "currentTet":F
    div-float v6, p12, v2

    .line 39
    .local v6, "mult":F
    cmpl-float v7, p12, v2

    if-lez v7, :cond_1

    .line 40
    mul-float v5, v6, p3

    .line 41
    .local v5, "modExposure_time_ms":F
    float-to-double v8, v5

    iget-wide v10, p0, LAEMode;->exposureRangeHighMs:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    .line 42
    float-to-double v8, p1

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 43
    float-to-double v8, p2

    float-to-double v10, v5

    mul-double/2addr v8, v10

    iget-wide v10, p0, LAEMode;->exposureRangeHighMs:D

    div-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 44
    iget-wide v8, p0, LAEMode;->exposureRangeHighMs:D

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    .line 98
    .end local v5    # "modExposure_time_ms":F
    :goto_0
    iget-wide v8, p0, LAEMode;->digital_gain:D

    iget-wide v10, p0, LAEMode;->analog_gain:D

    mul-double/2addr v8, v10

    iget-wide v10, p0, LAEMode;->sensitivityRangeLow:D

    mul-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->sensitivity:D

    .line 99
    iget-wide v8, p0, LAEMode;->exposure_time_ms:D

    iget-wide v10, p0, LAEMode;->sensitivity:D

    mul-double/2addr v8, v10

    iput-wide v8, p0, LAEMode;->tet:D

    .line 101
    move-object/from16 v0, p11

    iput-object v0, p0, LAEMode;->antibandingMode:LAEMode$AntibandingMode;

    .line 102
    sget-object v7, LAEMode$AntibandingMode;->HZ60:LAEMode$AntibandingMode;

    move-object/from16 v0, p11

    if-ne v0, v7, :cond_8

    const-wide v8, 0x4030aaaaaaaaaaabL    # 16.666666666666668

    :goto_1
    iput-wide v8, p0, LAEMode;->antibandingExposureMs:D

    .line 103
    return-void

    .line 47
    .restart local v5    # "modExposure_time_ms":F
    :cond_0
    float-to-double v8, p1

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 48
    float-to-double v8, p2

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 49
    float-to-double v8, v5

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto :goto_0

    .line 53
    .end local v5    # "modExposure_time_ms":F
    :cond_1
    cmpg-float v7, p12, v2

    if-gez v7, :cond_7

    .line 54
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v7

    if-lez v7, :cond_4

    .line 55
    mul-float v4, v6, p1

    .line 56
    .local v4, "modDigital_gain":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    .line 57
    mul-float v3, v4, p2

    .line 58
    .local v3, "modAnalog_gain":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_2

    .line 59
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 60
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 61
    mul-float v7, v3, p3

    float-to-double v8, v7

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto :goto_0

    .line 63
    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 64
    float-to-double v8, v3

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 65
    float-to-double v8, p3

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto :goto_0

    .line 68
    .end local v3    # "modAnalog_gain":F
    :cond_3
    float-to-double v8, v4

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 69
    float-to-double v8, p2

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 70
    float-to-double v8, p3

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto :goto_0

    .line 73
    .end local v4    # "modDigital_gain":F
    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p2, v7

    if-lez v7, :cond_6

    .line 74
    mul-float v3, v6, p2

    .line 75
    .restart local v3    # "modAnalog_gain":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_5

    .line 76
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 77
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 78
    mul-float v7, v3, p3

    float-to-double v8, v7

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto/16 :goto_0

    .line 80
    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 81
    float-to-double v8, v3

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 82
    float-to-double v8, p3

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto/16 :goto_0

    .line 86
    .end local v3    # "modAnalog_gain":F
    :cond_6
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 87
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 88
    mul-float v7, p3, v6

    float-to-double v8, v7

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto/16 :goto_0

    .line 93
    :cond_7
    float-to-double v8, p1

    iput-wide v8, p0, LAEMode;->digital_gain:D

    .line 94
    float-to-double v8, p2

    iput-wide v8, p0, LAEMode;->analog_gain:D

    .line 95
    float-to-double v8, p3

    iput-wide v8, p0, LAEMode;->exposure_time_ms:D

    goto/16 :goto_0

    .line 102
    :cond_8
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    goto/16 :goto_1
.end method


# virtual methods
.method public abstract calculate()V
.end method

.method protected doAntibandingAdjustment(D)V
    .locals 15
    .param p1, "maxExpMs"    # D

    .prologue
    .line 106
    iget-object v8, p0, LAEMode;->antibandingMode:LAEMode$AntibandingMode;

    sget-object v9, LAEMode$AntibandingMode;->OFF:LAEMode$AntibandingMode;

    if-eq v8, v9, :cond_1

    .line 107
    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v10, p0, LAEMode;->antibandingExposureMs:D

    const-wide v12, 0x4007eb851eb851ecL    # 2.99

    div-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 110
    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v10, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 111
    iget-wide v8, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v4, v8, v10

    .line 112
    .local v4, "exposureMs":D
    iget-wide v8, p0, LAEMode;->tet:D

    div-double v6, v8, v4

    .line 113
    .local v6, "sensi":D
    iget-wide v8, p0, LAEMode;->exposureRangeLowMs:D

    cmpg-double v8, v4, v8

    if-gez v8, :cond_0

    iget-wide v4, p0, LAEMode;->exposureRangeLowMs:D

    .end local v4    # "exposureMs":D
    :cond_0
    iput-wide v4, p0, LAEMode;->calculatedExposureTime:D

    .line 114
    iput-wide v6, p0, LAEMode;->calculatedSensitivity:D

    .line 141
    .end local v6    # "sensi":D
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v10, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_4

    .line 116
    iget-wide v8, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double v4, v8, v10

    .line 117
    .restart local v4    # "exposureMs":D
    iget-wide v8, p0, LAEMode;->tet:D

    div-double v6, v8, v4

    .line 118
    .restart local v6    # "sensi":D
    iget-wide v8, p0, LAEMode;->exposureRangeLowMs:D

    cmpg-double v8, v4, v8

    if-gez v8, :cond_3

    iget-wide v4, p0, LAEMode;->exposureRangeLowMs:D

    .end local v4    # "exposureMs":D
    :cond_3
    iput-wide v4, p0, LAEMode;->calculatedExposureTime:D

    .line 119
    iput-wide v6, p0, LAEMode;->calculatedSensitivity:D

    goto :goto_0

    .line 121
    .end local v6    # "sensi":D
    :cond_4
    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    iget-wide v10, p0, LAEMode;->antibandingExposureMs:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_6

    iget-wide v8, p0, LAEMode;->antibandingExposureMs:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v0, v8, v10

    .line 122
    .local v0, "abExposureMs":D
    :goto_1
    iget-wide v8, p0, LAEMode;->calculatedExposureTime:D

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 123
    .local v2, "div":D
    div-double v4, v0, v2

    .line 124
    .restart local v4    # "exposureMs":D
    iget-wide v8, p0, LAEMode;->tet:D

    div-double v6, v8, v4

    .line 126
    .restart local v6    # "sensi":D
    iget-wide v8, p0, LAEMode;->sensitivityRangeLow:D

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_5

    cmpl-double v8, v4, p1

    if-lez v8, :cond_7

    .line 127
    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    .line 128
    div-double v4, v0, v2

    .line 129
    iput-wide v4, p0, LAEMode;->calculatedExposureTime:D

    .line 130
    iget-wide v8, p0, LAEMode;->tet:D

    div-double/2addr v8, v4

    iput-wide v8, p0, LAEMode;->calculatedSensitivity:D

    .line 131
    iget-wide v8, p0, LAEMode;->calculatedSensitivity:D

    iget-wide v10, p0, LAEMode;->sensitivityRangeHigh:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 132
    iget-wide v8, p0, LAEMode;->sensitivityRangeHigh:D

    iput-wide v8, p0, LAEMode;->calculatedSensitivity:D

    goto :goto_0

    .line 121
    .end local v0    # "abExposureMs":D
    .end local v2    # "div":D
    .end local v4    # "exposureMs":D
    .end local v6    # "sensi":D
    :cond_6
    iget-wide v0, p0, LAEMode;->antibandingExposureMs:D

    goto :goto_1

    .line 134
    .restart local v0    # "abExposureMs":D
    .restart local v2    # "div":D
    .restart local v4    # "exposureMs":D
    .restart local v6    # "sensi":D
    :cond_7
    iget-wide v8, p0, LAEMode;->exposureRangeLowMs:D

    cmpg-double v8, v4, v8

    if-gez v8, :cond_8

    iget-wide v4, p0, LAEMode;->exposureRangeLowMs:D

    .end local v4    # "exposureMs":D
    :cond_8
    iput-wide v4, p0, LAEMode;->calculatedExposureTime:D

    .line 135
    iput-wide v6, p0, LAEMode;->calculatedSensitivity:D

    goto :goto_0
.end method

.method public getCalculatedAnalogGain()F
    .locals 8

    .prologue
    .line 158
    invoke-virtual {p0}, LAEMode;->getCalculatedSensitivity()I

    move-result v4

    int-to-double v0, v4

    .line 159
    .local v0, "sensi":D
    iget-wide v4, p0, LAEMode;->maxAnalogGain:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 160
    iget-wide v4, p0, LAEMode;->maxAnalogGain:D

    iget-wide v6, p0, LAEMode;->sensitivityRangeLow:D

    div-double v2, v4, v6

    .line 164
    .local v2, "x":D
    :goto_0
    double-to-float v4, v2

    return v4

    .line 162
    .end local v2    # "x":D
    :cond_0
    iget-wide v4, p0, LAEMode;->sensitivityRangeLow:D

    div-double v2, v0, v4

    .restart local v2    # "x":D
    goto :goto_0
.end method

.method public getCalculatedDigitalGain()F
    .locals 8

    .prologue
    .line 169
    invoke-virtual {p0}, LAEMode;->getCalculatedSensitivity()I

    move-result v4

    int-to-double v0, v4

    .line 170
    .local v0, "sensi":D
    iget-wide v4, p0, LAEMode;->maxAnalogGain:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 171
    iget-wide v4, p0, LAEMode;->maxAnalogGain:D

    div-double v4, v0, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 175
    .local v2, "x":D
    :goto_0
    double-to-float v4, v2

    return v4

    .line 173
    .end local v2    # "x":D
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .restart local v2    # "x":D
    goto :goto_0
.end method

.method public getCalculatedExposureTime()J
    .locals 4

    .prologue
    .line 144
    iget-wide v0, p0, LAEMode;->calculatedExposureTime:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCalculatedSensitivity()I
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, LAEMode;->calculatedSensitivity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMinIso()I
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, LAEMode;->sensitivityRangeLow:D

    double-to-int v0, v0

    return v0
.end method
