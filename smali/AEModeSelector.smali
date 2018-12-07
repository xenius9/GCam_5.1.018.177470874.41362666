.class public LAEModeSelector;
.super Ljava/lang/Object;
.source "AEModeSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SelectAEMode(IFFFIIJJILAEMode$AntibandingMode;F)LAEMode;
    .locals 16

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

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

    :pswitch_1
    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    goto :goto_1

    :pswitch_2
    const-wide/high16 v12, 0x4035000000000000L    # 21.0

    goto :goto_1

    :pswitch_3
    const-wide/high16 v12, 0x402c000000000000L    # 14.0

    goto :goto_1

    :pswitch_4
    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    goto :goto_1

    :pswitch_5
    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    goto :goto_1

    :pswitch_6
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    goto :goto_1

    :pswitch_7
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    :goto_1
    new-instance v0, LShutterAEModeISO;

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

    invoke-direct/range {v0 .. v14}, LShutterAEModeISO;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    :pswitch_8
    const-wide v12, 0x408f400000000000L    # 1000.0

    goto :goto_2

    :pswitch_9
    const-wide v12, 0x407f400000000000L    # 500.0

    goto :goto_2

    :pswitch_a
    const-wide v12, 0x4069000000000000L    # 200.0

    goto :goto_2

    :pswitch_b
    const-wide v12, 0x4059000000000000L    # 100.0

    :goto_2
    new-instance v0, LShutterAEModeSlow;

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

    invoke-direct/range {v0 .. v14}, LShutterAEModeSlow;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

    :pswitch_c
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    goto :goto_3

    :pswitch_d
    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    goto :goto_3

    :pswitch_e
    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    goto :goto_3

    :pswitch_f
    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    goto :goto_3

    :pswitch_10
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    goto :goto_3

    :pswitch_11
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    :goto_3
    new-instance v0, LShutterAEModeFast;

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

    invoke-direct/range {v0 .. v14}, LShutterAEModeFast;-><init>(FFFIIJJILAEMode$AntibandingMode;DF)V

    goto/16 :goto_0

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
