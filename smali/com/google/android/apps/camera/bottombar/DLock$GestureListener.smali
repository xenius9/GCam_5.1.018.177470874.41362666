.class Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/bottombar/BottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBar;Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBar;)V

    return-void
.end method

.method public static getKeyValue(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v1, ""

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, ""

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-boolean v6, v6, Lcom/google/android/apps/camera/bottombar/BottomBar;->isDoubleClick:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iget-wide v6, v6, Lcom/google/android/apps/camera/bottombar/BottomBar;->lastTouchUpTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1f4

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    iget-object v5, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iput-boolean v4, v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->isDoubleClick:Z

    iput-wide v0, v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->lastTouchUpTime:J

    iget-object v1, v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->c:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1103e7

    invoke-static {v1, v4}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "pref_aemode_key"

    invoke-static {v1, v3}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->getKeyValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$1;

    invoke-direct {v3, v1}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener$1;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a004f

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f1100c8

    invoke-static {v1, v4}, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v0, v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->v:Landroid/os/Vibrator;

    iget-object v2, v5, Lcom/google/android/apps/camera/bottombar/BottomBar;->vibro_value:Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/camera/bottombar/DLock$GestureListener;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iput-wide v0, v4, Lcom/google/android/apps/camera/bottombar/BottomBar;->lastTouchUpTime:J

    iput-boolean v5, v4, Lcom/google/android/apps/camera/bottombar/BottomBar;->isDoubleClick:Z

    move v4, v5

    goto :goto_1
.end method
