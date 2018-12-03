.class public LShutterAEModeISO;
.super LAEMode;
.source "ShutterAEModeISO.java"


# instance fields
.field private maxExposureMs:D


# direct methods
.method public constructor <init>(FFFIIJJILAEMode$AntibandingMode;DF)V
    .locals 18

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

    move-wide/from16 v0, p12

    move-object/from16 v2, p0

    iput-wide v0, v2, LShutterAEModeISO;->maxExposureMs:D

    return-void
.end method


# virtual methods
.method public calculate()V
    .locals 6

    iget-wide v0, p0, LShutterAEModeISO;->tet:D

    iget-wide v2, p0, LShutterAEModeISO;->sensitivityRangeLow:D

    div-double/2addr v0, v2

    const-wide v2, 0x4008000000000000L    # 3.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    iget-wide v0, p0, LShutterAEModeISO;->tet:D

    div-double/2addr v0, v2

    iget-wide v4, p0, LShutterAEModeISO;->maxExposureMs:D

    const-wide v2, 0x4039000000000000L    # 25.0

    mul-double/2addr v4, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_2

    iget-wide v0, p0, LShutterAEModeISO;->tet:D

    div-double/2addr v0, v4

    iget-wide v4, p0, LShutterAEModeISO;->exposureRangeHighMs:D

    cmpl-double v2, v4, v0

    if-lez v2, :cond_1

    iget-wide v2, p0, LShutterAEModeISO;->maxExposureMs:D

    const-wide v4, 0x4039000000000000L    # 25.0

    mul-double/2addr v2, v4

    iput-wide v2, p0, LShutterAEModeISO;->calculatedSensitivity:D

    iput-wide v0, p0, LShutterAEModeISO;->calculatedExposureTime:D

    const-wide v4, 0x4014000000000000L    # 5.0

    iget-wide v0, p0, LShutterAEModeISO;->calculatedExposureTime:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    const-wide v4, 0x4059000000000000L    # 100.0

    cmpl-double v4, v4, v0

    if-lez v4, :cond_0

    const/16 v4, 0x0

    sget v2, LcokMod;->sAntibandingMode:I

    if-eq v2, v4, :cond_0

    invoke-virtual {p0, v0, v1}, LShutterAEModeISO;->doAntibandingAdjustment(D)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, LShutterAEModeISO;->tet:D

    div-double/2addr v2, v4

    iput-wide v2, p0, LShutterAEModeISO;->calculatedSensitivity:D

    iput-wide v4, p0, LShutterAEModeISO;->calculatedExposureTime:D

    goto :goto_0

    :cond_2
    iput-wide v0, p0, LShutterAEModeISO;->calculatedSensitivity:D

    const-wide v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, LShutterAEModeISO;->calculatedExposureTime:D

    goto :goto_0

    :cond_3
    iget-wide v2, p0, LShutterAEModeISO;->sensitivityRangeLow:D

    iput-wide v2, p0, LShutterAEModeISO;->calculatedSensitivity:D

    iput-wide v0, p0, LShutterAEModeISO;->calculatedExposureTime:D

    goto :goto_0
.end method
