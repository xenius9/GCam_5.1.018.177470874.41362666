.class final Lhui;
.super Lhkf;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhkf;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lhls;Ljava/lang/Object;Lhkn;Lhko;)Lhkj;
    .locals 7

    new-instance v0, Lhuy;

    const-string v5, "locationServices"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lhuy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lhkn;Lhko;Ljava/lang/String;Lhls;)V

    return-object v0
.end method
