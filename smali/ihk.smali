.class public final Lihk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field private k:Z

.field private l:Z

.field public lphoto:I

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lihk;
    .locals 1

    new-instance v0, Lihk;

    invoke-direct {v0}, Lihk;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lihk;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lihk;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lihk;->a:Z

    iput-boolean v0, p0, Lihk;->b:Z

    iput-boolean v0, p0, Lihk;->c:Z

    iput-boolean v0, p0, Lihk;->d:Z

    iput-boolean v0, p0, Lihk;->e:Z

    iput-boolean v0, p0, Lihk;->f:Z

    iput-boolean v0, p0, Lihk;->g:Z

    iput-boolean v0, p0, Lihk;->h:Z

    iput-boolean v0, p0, Lihk;->i:Z

    iput-boolean v0, p0, Lihk;->j:Z

    iput-boolean v0, p0, Lihk;->k:Z

    iput-boolean v0, p0, Lihk;->l:Z

    iput-boolean v0, p0, Lihk;->m:Z

    iput-boolean v0, p0, Lihk;->n:Z

    iput v0, p0, Lihk;->lphoto:I

    return-void
.end method
