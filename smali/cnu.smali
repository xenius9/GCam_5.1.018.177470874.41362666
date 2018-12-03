.class public final Lcnu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lblc;

.field public static final b:Lblb;

.field public static final c:Lblb;

.field public static final d:Lblb;


# instance fields
.field public final e:Lbhn;

.field public final f:Lihp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lblc;

    const-string v1, "camera.raisr"

    invoke-direct {v0, v1}, Lblc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcnu;->a:Lblc;

    new-instance v0, Lblb;

    const-string v1, "camera.p3"

    invoke-direct {v0, v1}, Lblb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcnu;->b:Lblb;

    new-instance v0, Lblb;

    const-string v1, "camera.slowraw.RESTART"

    invoke-direct {v0, v1}, Lblb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcnu;->c:Lblb;

    new-instance v0, Lblb;

    const-string v1, "camera.tbinning.RESTART"

    invoke-direct {v0, v1}, Lblb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcnu;->d:Lblb;

    return-void
.end method

.method constructor <init>(Lbhn;Lihp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnu;->e:Lbhn;

    iput-object p2, p0, Lcnu;->f:Lihp;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lbhn;->lockFrames:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    sget v0, Lbhn;->sFrames:I

    goto :goto_0
.end method


# virtual methods
.method public final b()I
    .locals 4

    iget-object v0, p0, Lcnu;->e:Lbhn;

    invoke-virtual {v0}, Lbhn;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget-object v0, v0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v2, "camera:hdr_plus_zsl_buffer_count"

    invoke-static {v0, v2, v1}, Lhyx;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcnu;->e:Lbhn;

    invoke-virtual {v2}, Lbhn;->cpc()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v3, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    const/4 v3, 0x5

    if-ge v2, v3, :cond_5

    :goto_0
    iget-object v2, p0, Lcnu;->f:Lihp;

    const-string v3, "persist.gcam.zsl_buffer_size"

    invoke-virtual {v2, v3, v0}, Lihp;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/16 v1, 0x3

    goto :goto_0

    :cond_3
    const/16 v1, 0x3

    goto :goto_0

    :cond_4
    const/16 v1, 0x3

    goto :goto_0

    :cond_5
    const/16 v1, 0x3

    goto :goto_0
.end method

.method public final getZslBufferLength()I
    .locals 4

    invoke-virtual {p0}, Lcnu;->b()I

    move-result v0

    iget-object v2, p0, Lcnu;->e:Lbhn;

    invoke-virtual {v2}, Lbhn;->cpc()I

    move-result v2

    const/16 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
