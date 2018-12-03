.class public Lhka;
.super Ljava/lang/Object;


# static fields
.field private static a:Lhka;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhka;->b:Landroid/content/Context;

    iget-object v0, p0, Lhka;->b:Landroid/content/Context;

    sget-object v1, Lhpv;->a:Lhpv;

    invoke-virtual {v1, v0}, Lhpv;->a(Landroid/content/Context;)Lhpu;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lhka;
    .locals 2

    invoke-static {p0}, Lhjg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lhka;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhka;->a:Lhka;

    if-nez v0, :cond_0

    invoke-static {p0}, Lhmu;->a(Landroid/content/Context;)V

    new-instance v0, Lhka;

    invoke-direct {v0, p0}, Lhka;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhka;->a:Lhka;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lhka;->a:Lhka;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static varargs a(Landroid/content/pm/PackageInfo;[Lhmv;)Lhmv;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method
