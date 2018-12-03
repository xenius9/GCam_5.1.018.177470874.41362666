.class public final enum LAEMode$AntibandingMode;
.super Ljava/lang/Enum;
.source "AEMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAEMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AntibandingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAEMode$AntibandingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LAEMode$AntibandingMode;

.field public static final enum HZ50:LAEMode$AntibandingMode;

.field public static final enum HZ60:LAEMode$AntibandingMode;

.field public static final enum OFF:LAEMode$AntibandingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    new-instance v0, LAEMode$AntibandingMode;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v2}, LAEMode$AntibandingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAEMode$AntibandingMode;->OFF:LAEMode$AntibandingMode;

    .line 183
    new-instance v0, LAEMode$AntibandingMode;

    const-string/jumbo v1, "HZ50"

    invoke-direct {v0, v1, v3}, LAEMode$AntibandingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAEMode$AntibandingMode;->HZ50:LAEMode$AntibandingMode;

    .line 184
    new-instance v0, LAEMode$AntibandingMode;

    const-string/jumbo v1, "HZ60"

    invoke-direct {v0, v1, v4}, LAEMode$AntibandingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAEMode$AntibandingMode;->HZ60:LAEMode$AntibandingMode;

    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [LAEMode$AntibandingMode;

    sget-object v1, LAEMode$AntibandingMode;->OFF:LAEMode$AntibandingMode;

    aput-object v1, v0, v2

    sget-object v1, LAEMode$AntibandingMode;->HZ50:LAEMode$AntibandingMode;

    aput-object v1, v0, v3

    sget-object v1, LAEMode$AntibandingMode;->HZ60:LAEMode$AntibandingMode;

    aput-object v1, v0, v4

    sput-object v0, LAEMode$AntibandingMode;->$VALUES:[LAEMode$AntibandingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LAEMode$AntibandingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v0, LAEMode$AntibandingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LAEMode$AntibandingMode;

    return-object v0
.end method

.method public static values()[LAEMode$AntibandingMode;
    .locals 1

    .prologue
    .line 181
    sget-object v0, LAEMode$AntibandingMode;->$VALUES:[LAEMode$AntibandingMode;

    invoke-virtual {v0}, [LAEMode$AntibandingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAEMode$AntibandingMode;

    return-object v0
.end method
