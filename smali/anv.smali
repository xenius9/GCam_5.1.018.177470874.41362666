.class public final Lanv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laev;


# instance fields
.field private a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanv;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lanv;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lanv;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
