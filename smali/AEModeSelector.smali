.class public LAEModeSelector;
.super Ljava/lang/Object;
.source "AEModeSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SelectAEMode(IFFFIIJJILAEMode$AntibandingMode;F)LAEMode;
    .locals 16
    .param p0, "aeMode"    # I
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
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 42
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 8
    :pswitch_0
    new-instance v0, LSimpleAEMode;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, LSimpleAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;F)V

    goto :goto_0

    .line 11
    :pswitch_1
    new-instance v0, LSlowShutterAEMode;

    const-wide v12, 0x408f400000000000L    # 1000.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto :goto_0

    .line 14
    :pswitch_2
    new-instance v0, LSlowShutterAEMode;

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto :goto_0

    .line 17
    :pswitch_3
    new-instance v0, LSlowShutterAEMode;

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto :goto_0

    .line 20
    :pswitch_4
    new-instance v0, LSlowShutterAEMode;

    const-wide v12, 0x4040aaaaaaaaaaabL    # 33.333333333333336

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    .line 23
    :pswitch_5
    new-instance v0, LSlowShutterAEMode;

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    .line 26
    :pswitch_6
    new-instance v0, LSlowShutterAEMode;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    .line 29
    :pswitch_7
    new-instance v0, LSlowShutterAEMode;

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    .line 32
    :pswitch_8
    new-instance v0, LSlowShutterAEMode;

    const-wide/16 v2, 0x2

    mul-long v8, p8, v2

    const-wide v12, 0x408f400000000000L    # 1000.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    .line 35
    :pswitch_9
    new-instance v0, LSlowShutterAEMode;

    const-wide/16 v2, 0x4

    mul-long v8, p8, v2

    const-wide v12, 0x408f400000000000L    # 1000.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    .line 38
    :pswitch_a
    new-instance v0, LSlowShutterAEMode;

    const-wide/16 v2, 0x8

    mul-long v8, p8, v2

    const-wide v12, 0x408f400000000000L    # 1000.0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, LSlowShutterAEMode;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    .line 6
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
