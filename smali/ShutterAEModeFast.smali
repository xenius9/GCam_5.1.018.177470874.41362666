.class public LShutterAEModeFast;
.super LAEMode;
.source "ShutterAEModeFast.java"


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

    iput-wide v0, v2, LShutterAEModeFast;->maxExposureMs:D

    return-void
.end method


# virtual methods
.method public calculate()V
    .locals 6

    iget-wide v0, p0, LShutterAEModeFast;->tet:D

    iget-wide v2, p0, LShutterAEModeFast;->sensitivityRangeLow:D

    div-double/2addr v0, v2

    iget-wide v4, p0, LShutterAEModeFast;->maxExposureMs:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4

    iget-wide v2, p0, LShutterAEModeFast;->tet:D

    iget-wide v0, p0, LShutterAEModeFast;->maxExposureMs:D

    div-double/2addr v2, v0

    const-wide v4, 0x40b2c00000000000L    # 4800.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    sget v2, LcokMod;->sAEMode:I

    const/16 v4, 0x7

    if-eq v2, v4, :cond_3

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    const/16 v4, 0xb

    if-eq v2, v4, :cond_0

    iget-wide v2, p0, LShutterAEModeFast;->tet:D

    const-wide v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, LShutterAEModeFast;->maxExposureMs:D

    div-double/2addr v2, v0

    const-wide v4, 0x40b2c00000000000L    # 4800.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    :cond_0
    iget-wide v2, p0, LShutterAEModeFast;->tet:D

    const-wide v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, LShutterAEModeFast;->maxExposureMs:D

    div-double/2addr v2, v0

    const-wide v4, 0x40b2c00000000000L    # 4800.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    :cond_1
    iget-wide v2, p0, LShutterAEModeFast;->tet:D

    const-wide v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, LShutterAEModeFast;->maxExposureMs:D

    div-double/2addr v2, v0

    const-wide v4, 0x40b2c00000000000L    # 4800.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    :cond_2
    iget-wide v2, p0, LShutterAEModeFast;->tet:D

    const-wide v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, LShutterAEModeFast;->maxExposureMs:D

    div-double/2addr v2, v0

    const-wide v4, 0x40b2c00000000000L    # 4800.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    :cond_3
    iget-wide v2, p0, LShutterAEModeFast;->tet:D

    iget-wide v0, p0, LShutterAEModeFast;->exposureRangeHighMs:D

    const-wide v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    iput-wide v0, p0, LShutterAEModeFast;->maxExposureMs:D

    div-double/2addr v2, v0

    :cond_4
    iput-wide v0, p0, LShutterAEModeFast;->calculatedExposureTime:D

    iput-wide v2, p0, LShutterAEModeFast;->calculatedSensitivity:D

    const-wide v4, 0x4051800000000000L    # 70.0

    cmpl-double v4, v4, v0

    if-lez v4, :cond_5

    const/16 v4, 0x0

    sget v2, LcokMod;->sAntibandingMode:I

    if-eq v2, v4, :cond_5

    invoke-virtual {p0, v0, v1}, LShutterAEModeFast;->doAntibandingAdjustment(D)V

    :cond_5
    return-void
.end method
