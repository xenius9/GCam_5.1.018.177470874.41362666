.class public final Lue;
.super Ltt;
.source "PG"

# interfaces
.implements Lud;


# static fields
.field public static a:Ljava/lang/reflect/Method;


# instance fields
.field public b:Lud;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lue;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ltt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Z)Lst;
    .locals 1

    new-instance v0, Luf;

    invoke-direct {v0, p1, p2}, Luf;-><init>(Landroid/content/Context;Z)V

    iput-object p0, v0, Luf;->i:Lud;

    return-object v0
.end method

.method public final a(Loz;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lue;->b:Lud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lue;->b:Lud;

    invoke-interface {v0, p1, p2}, Lud;->a(Loz;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public final b(Loz;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lue;->b:Lud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lue;->b:Lud;

    invoke-interface {v0, p1, p2}, Lud;->b(Loz;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method
