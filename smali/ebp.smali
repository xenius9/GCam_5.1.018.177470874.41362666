.class public final Lebp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljxn;


# instance fields
.field private a:Ljxn;

.field private b:Ljxn;

.field private c:Ljxn;

.field private d:Ljxn;


# direct methods
.method public constructor <init>(Ljxn;Ljxn;Ljxn;Ljxn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebp;->a:Ljxn;

    iput-object p2, p0, Lebp;->b:Ljxn;

    iput-object p3, p0, Lebp;->c:Ljxn;

    iput-object p4, p0, Lebp;->d:Ljxn;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lebp;->a:Ljxn;

    invoke-interface {v2}, Ljxn;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Leca;

    move-object/from16 v0, p0

    iget-object v2, v0, Lebp;->b:Ljxn;

    invoke-interface {v2}, Ljxn;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lebp;->c:Ljxn;

    invoke-interface {v3}, Ljxn;->a()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ledn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lebp;->d:Ljxn;

    invoke-interface {v3}, Ljxn;->a()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ledk;

    new-instance v17, Ledp;

    invoke-virtual {v2}, Ledh;->a()Leai;

    move-result-object v18

    invoke-static {}, Lfsp;->d()Lggq;

    move-result-object v2

    iget-object v3, v13, Ledk;->e:Ljuw;

    new-instance v4, Ledl;

    invoke-direct {v4, v2}, Ledl;-><init>(Lggq;)V

    sget-object v2, Ljvc;->a:Ljvc;

    invoke-static {v3, v4, v2}, Ljuh;->a(Ljuw;Ljhj;Ljava/util/concurrent/Executor;)Ljuw;

    move-result-object v9

    new-instance v19, Ledq;

    new-instance v2, Leco;

    iget-object v3, v13, Ledk;->a:Licz;

    iget-object v4, v13, Ledk;->b:Licv;

    iget-object v5, v13, Ledk;->i:Leam;

    iget-object v6, v13, Ledk;->c:Lghe;

    iget-object v7, v13, Ledk;->d:Ldol;

    iget-object v8, v13, Ledk;->e:Ljuw;

    iget-object v10, v13, Ledk;->f:Ldjo;

    iget-object v11, v13, Ledk;->g:Ldjm;

    iget-object v12, v13, Ledk;->h:Ldvc;

    iget-object v13, v13, Ledk;->j:Lgez;

    const/4 v14, 0x1

    invoke-direct/range {v2 .. v14}, Leco;-><init>(Licz;Licv;Leam;Lghe;Ldol;Ljuw;Ljuw;Ldjo;Ldjm;Ldvc;Lgfp;I)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Ledq;-><init>(Leai;IZ)V

    const-wide/32 v2, 0x5f5e100

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3}, Ledn;->a(Leai;J)Leai;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v2}, Leca;->a(Leai;Leai;)Leai;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ledp;-><init>(Leai;)V

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljwd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledp;

    return-object v2
.end method
