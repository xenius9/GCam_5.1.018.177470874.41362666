.class public Lhd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static c:[Ljava/lang/Object;

.field private static d:I

.field private static e:[Ljava/lang/Object;

.field private static f:I


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field private g:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lgq;->a:[I

    iput-object v0, p0, Lhd;->g:[I

    sget-object v0, Lgq;->b:[Ljava/lang/Object;

    iput-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lhd;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Lgq;->a:[I

    iput-object v0, p0, Lhd;->g:[I

    sget-object v0, Lgq;->b:[Ljava/lang/Object;

    iput-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lhd;->b:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lhd;->e(I)V

    goto :goto_0
.end method

.method public constructor <init>(Lhd;)V
    .locals 0

    invoke-direct {p0}, Lhd;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lhd;->a(Lhd;)V

    :cond_0
    return-void
.end method

.method private final a()I
    .locals 5

    iget v2, p0, Lhd;->b:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lhd;->g:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lhd;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lhd;->g:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    iget-object v3, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lhd;->g:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    iget-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private final a(Ljava/lang/Object;I)I
    .locals 5

    iget v2, p0, Lhd;->b:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lhd;->g:[I

    invoke-static {v0, v2, p2}, Lhd;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lhd;->g:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lhd;->g:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private static a([III)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2}, Lgq;->a([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 4

    const/16 v2, 0xa

    const/4 v3, 0x2

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-class v1, Lgm;

    monitor-enter v1

    :try_start_0
    sget v0, Lhd;->f:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    sget-object v2, Lhd;->e:[Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sput-object p1, Lhd;->e:[Ljava/lang/Object;

    sget v0, Lhd;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lhd;->f:I

    :cond_1
    monitor-exit v1

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v1, Lgm;

    monitor-enter v1

    :try_start_1
    sget v0, Lhd;->d:I

    if-ge v0, v2, :cond_5

    const/4 v0, 0x0

    sget-object v2, Lhd;->c:[Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    sput-object p1, Lhd;->c:[Ljava/lang/Object;

    sget v0, Lhd;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lhd;->d:I

    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private final e(I)V
    .locals 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const-class v1, Lgm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhd;->e:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v2, Lhd;->e:[Ljava/lang/Object;

    iput-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lhd;->e:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    iput-object v0, p0, Lhd;->g:[I

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    sget v0, Lhd;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lhd;->f:I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Lhd;->g:[I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-class v1, Lgm;

    monitor-enter v1

    :try_start_2
    sget-object v0, Lhd;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v2, Lhd;->c:[Ljava/lang/Object;

    iput-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lhd;->c:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    iput-object v0, p0, Lhd;->g:[I

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    sget v0, Lhd;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lhd;->d:I

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lhd;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lhd;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lhd;->b:I

    iget-object v1, p0, Lhd;->g:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    iget-object v1, p0, Lhd;->g:[I

    iget-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lhd;->e(I)V

    iget v3, p0, Lhd;->b:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lhd;->g:[I

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-static {v1, v2, v0}, Lhd;->a([I[Ljava/lang/Object;I)V

    :cond_1
    iget v1, p0, Lhd;->b:I

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method public final a(Lhd;)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p1, Lhd;->b:I

    iget v2, p0, Lhd;->b:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lhd;->a(I)V

    iget v2, p0, Lhd;->b:I

    if-nez v2, :cond_1

    if-lez v1, :cond_0

    iget-object v2, p1, Lhd;->g:[I

    iget-object v3, p0, Lhd;->g:[I

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lhd;->a:[Ljava/lang/Object;

    iget-object v3, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lhd;->b:I

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lhd;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Lhd;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lhd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final b(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lhd;->b:I

    shl-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    if-nez p1, :cond_2

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    shr-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    :cond_2
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public clear()V
    .locals 4

    iget v0, p0, Lhd;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lhd;->g:[I

    iget-object v1, p0, Lhd;->a:[Ljava/lang/Object;

    iget v2, p0, Lhd;->b:I

    sget-object v3, Lgq;->a:[I

    iput-object v3, p0, Lhd;->g:[I

    sget-object v3, Lgq;->b:[Ljava/lang/Object;

    iput-object v3, p0, Lhd;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Lhd;->b:I

    invoke-static {v0, v1, v2}, Lhd;->a([I[Ljava/lang/Object;I)V

    :cond_0
    iget v0, p0, Lhd;->b:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lhd;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lhd;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 9

    const/4 v8, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v3, v2, v3

    iget v4, p0, Lhd;->b:I

    const/4 v2, 0x1

    if-gt v4, v2, :cond_0

    iget-object v0, p0, Lhd;->g:[I

    iget-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lhd;->a([I[Ljava/lang/Object;I)V

    sget-object v0, Lgq;->a:[I

    iput-object v0, p0, Lhd;->g:[I

    sget-object v0, Lgq;->b:[Ljava/lang/Object;

    iput-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    move v0, v1

    :goto_0
    iget v1, p0, Lhd;->b:I

    if-eq v4, v1, :cond_7

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    add-int/lit8 v2, v4, -0x1

    iget-object v5, p0, Lhd;->g:[I

    array-length v5, v5

    if-le v5, v0, :cond_5

    iget v5, p0, Lhd;->b:I

    iget-object v6, p0, Lhd;->g:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_5

    if-le v4, v0, :cond_1

    shr-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v4

    :cond_1
    iget-object v5, p0, Lhd;->g:[I

    iget-object v6, p0, Lhd;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lhd;->e(I)V

    iget v0, p0, Lhd;->b:I

    if-eq v4, v0, :cond_2

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    if-lez p1, :cond_3

    iget-object v0, p0, Lhd;->g:[I

    invoke-static {v5, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v6, v1, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-ge p1, v2, :cond_4

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lhd;->g:[I

    sub-int v7, v2, p1

    invoke-static {v5, v0, v1, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    sub-int v7, v2, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v6, v0, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    if-ge p1, v2, :cond_6

    iget-object v0, p0, Lhd;->g:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v5, p0, Lhd;->g:[I

    sub-int v6, v2, p1

    invoke-static {v0, v1, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    sub-int v7, v2, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v0, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object v8, v0, v1

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object v8, v0, v1

    move v0, v2

    goto/16 :goto_0

    :cond_7
    iput v0, p0, Lhd;->b:I

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lhd;

    if-eqz v2, :cond_6

    check-cast p1, Lhd;

    invoke-virtual {p0}, Lhd;->size()I

    move-result v2

    invoke-virtual {p1}, Lhd;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    :try_start_0
    iget v3, p0, Lhd;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lhd;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lhd;->c(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lhd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Lhd;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_b

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lhd;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v2, v1

    :goto_2
    :try_start_1
    iget v3, p0, Lhd;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lhd;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lhd;->c(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-nez v5, :cond_8

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    if-nez v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lhd;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    const/4 v1, 0x0

    iget-object v5, p0, Lhd;->g:[I

    iget-object v6, p0, Lhd;->a:[Ljava/lang/Object;

    const/4 v0, 0x1

    iget v7, p0, Lhd;->b:I

    move v2, v0

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v0, v6, v2

    aget v8, v5, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    xor-int/2addr v0, v8

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v4
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lhd;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v4, 0x0

    iget v5, p0, Lhd;->b:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lhd;->a()I

    move-result v2

    move v3, v4

    :goto_0
    if-ltz v2, :cond_1

    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v2, p0, Lhd;->a:[Ljava/lang/Object;

    aput-object p2, v2, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lhd;->a(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v2, -0x1

    iget-object v6, p0, Lhd;->g:[I

    array-length v6, v6

    if-lt v5, v6, :cond_6

    if-lt v5, v0, :cond_3

    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    :cond_2
    :goto_2
    iget-object v1, p0, Lhd;->g:[I

    iget-object v6, p0, Lhd;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lhd;->e(I)V

    iget v0, p0, Lhd;->b:I

    if-eq v5, v0, :cond_4

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_3
    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lhd;->g:[I

    array-length v0, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lhd;->g:[I

    array-length v7, v1

    invoke-static {v1, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    invoke-static {v1, v6, v5}, Lhd;->a([I[Ljava/lang/Object;I)V

    :cond_6
    if-ge v2, v5, :cond_7

    iget-object v0, p0, Lhd;->g:[I

    iget-object v1, p0, Lhd;->g:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v6, v5, v2

    invoke-static {v0, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Lhd;->a:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Lhd;->b:I

    sub-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v0, v1, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget v0, p0, Lhd;->b:I

    if-ne v5, v0, :cond_8

    iget-object v0, p0, Lhd;->g:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_9
    iget-object v0, p0, Lhd;->g:[I

    aput v3, v0, v2

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    iget-object v0, p0, Lhd;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    iget v0, p0, Lhd;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhd;->b:I

    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lhd;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lhd;->d(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lhd;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lhd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Lhd;->b:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lhd;->b:I

    if-ge v0, v2, :cond_4

    if-lez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Lhd;->b(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lhd;->c(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
