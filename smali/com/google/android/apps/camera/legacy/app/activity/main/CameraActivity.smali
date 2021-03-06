.class public Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;
.super Lbsj;
.source "PG"

# interfaces
.implements Lbti;


# static fields
.field private static final g:Ljava/lang/String;

.field public static isbackground:Z


# instance fields
.field public d:Lbli;

.field public e:Lbii;

.field private h:Lbst;

.field private i:Lbtf;

.field private j:Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CameraActivity"

    invoke-static {v0}, Lbhz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->g:Ljava/lang/String;

    new-instance v0, Lblb;

    const-string v1, "camera.exp.activity"

    invoke-direct {v0, v1}, Lblb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbsj;-><init>()V

    return-void
.end method

.method private static byte(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "DCIM/Camera"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refreshBrightness(F)V
    .locals 4

    goto :goto_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "max_brigtness"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    sget v0, Lbhn;->sBright:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v0, 0x80

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public X()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "def_folder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_custom_folder"

    const-string v2, "/storage/emulated/0/DCIM/Camera"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "def_folder"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public Z()V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "reminder"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Info"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "PGZvbnQgY29sb3I9IzAwMDAwMD48Yj7QndCwINCg0YPRgdGB0LrQvtC8PC9iPjo8L2ZvbnQ+PGJyPg0KPGZvbnQgY29sb3I9IzAwMDAwMD7QlNCy0L7QudC90L7QtSDQvdCw0LbQsNGC0LjQtSDQvdCwINC90LjQttC90LjQuSDQsdCw0YAsINC90LAg0LrQvtGC0L7RgNC+0Lwg0YDQsNGB0L/QvtC70L7QttC10L3RiyDQutC90L7Qv9C60Lg6INC30LDRgtCy0L7RgCAvINC/0LXRgNC10LrQu9GO0YfQtdC90LjQtSDQutCw0LzQtdGA0YsgLyDQs9Cw0LvQtdGA0LXRjyAvINCy0LjQtNC10L4sINC+0YLQutGA0YvQstCw0LXRgiDQvdCw0YHRgtGA0L7QudC60Lgg0JDQstGC0L4t0JLRi9C00LXRgNC20LrQuCBIRFIrPC9mb250Pjxicj48YnI+DQo8Zm9udCBjb2xvcj0jMDAwMDAwPjxiPkluIEVuZ2xpc2g8L2I+OjwvZm9udD48YnI+DQo8Zm9udCBjb2xvcj0jMDAwMDAwPkRvdWJsZSBjbGljayBvbiB0aGUgYm90dG9tIGJhciwgb24gd2hpY2ggdGhlIGJ1dHRvbnMgYXJlIGxvY2F0ZWQ6IHNodXR0ZXIgLyDRgWFtZXJhIHN3aXRjaCAvIGdhbGxlcnkgLyB2aWRlbywgb3BlbnMgdGhlIHNldHRpbmdzIEF1dG8tRXhwb3N1cmUgSERSKzwvZm9udD4="

    invoke-static {v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->byte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ok"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "reminder"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final d()Lbtf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->i:Lbtf;

    invoke-static {v0}, Liui;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtf;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->X()V

    const v0, 0x64

    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->refreshBrightness(F)V

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lfsq;->a()Lfsq;

    move-result-object v0

    iget-object v1, v0, Lfsq;->g:Lfsu;

    sget-object v2, Lfss;->d:Lfss;

    invoke-virtual {v1, v2}, Lfsu;->a(Lfss;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    iput-wide v6, v0, Lfsq;->a:J

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v0

    const-string v1, "CameraActivity#onCreate"

    invoke-interface {v0, v1}, Licz;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->instance()Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->j:Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->j:Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->cameraActivity()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionRecorder;->create()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->recordActivityOnCreateStart()V

    invoke-super {p0, p1}, Lbsj;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->a()Ldih;

    move-result-object v1

    invoke-interface {v1, p0}, Ldih;->a(Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v2

    const-string v5, "setupDefaultActivity#init"

    invoke-interface {v2, v5}, Licz;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->b()Lbsk;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->c()Lbpz;

    move-result-object v5

    new-instance v6, Lerj;

    invoke-direct {v6, v0}, Lerj;-><init>(Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;)V

    invoke-static {v2}, Liya;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Liya;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v2, v5, v6}, Ldih;->a(Lbsk;Lbpz;Lerj;)Lbst;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->h:Lbst;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v1

    const-string v2, "activityInitializer#get"

    invoke-interface {v1, v2}, Licz;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->h:Lbst;

    iget-object v1, v1, Lbst;->G:Ljxn;

    invoke-interface {v1}, Ljxn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtd;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v2

    const-string v5, "activityInitializer#start"

    invoke-interface {v2, v5}, Licz;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Lhzc;->a()Ljuw;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v1

    const-string v2, "#cameraUiModule#inflate"

    invoke-interface {v1, v2}, Licz;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->h:Lbst;

    new-instance v6, Lfie;

    iget-object v1, v5, Lbst;->H:Ljxn;

    invoke-interface {v1}, Ljxn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v1, v5, Lbst;->b:Lbpz;

    iget-object v1, v1, Lbpz;->a:Landroid/app/Activity;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v2}, Ljwd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v8, Lhba;

    iget-object v2, v5, Lbst;->b:Lbpz;

    iget-object v2, v2, Lbpz;->a:Landroid/app/Activity;

    const-string v9, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v2, v9}, Ljwd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v8, v2}, Lhba;-><init>(Landroid/app/Activity;)V

    iget-object v2, v5, Lbst;->b:Lbpz;

    iget-object v2, v2, Lbpz;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v2, v5}, Ljwd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Window;

    invoke-direct {v6, v7, v1, v8, v2}, Lfie;-><init>(ZLandroid/app/Activity;Lhba;Landroid/view/Window;)V

    invoke-static {}, Lhzt;->a()V

    iget-object v2, v6, Lfie;->c:Landroid/view/Window;

    iget-boolean v5, v6, Lfie;->b:Z

    sget-object v1, Lfie;->a:Ljava/lang/String;

    const-string v7, "Initializing Window Flags"

    invoke-static {v1, v7}, Lbhz;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lgzz;->a()Lgzz;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lgzz;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lfie;->a:Ljava/lang/String;

    const-string v7, "Set rotation animation to crossfade"

    invoke-static {v1, v7}, Lbhz;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_0
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {v2, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/Window;->requestFeature(I)Z

    sget-object v1, Lfie;->a:Ljava/lang/String;

    const-string v7, "Requesting ActionBar"

    invoke-static {v1, v7}, Lbhz;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, -0x80000000

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    sget-object v1, Lfie;->a:Ljava/lang/String;

    const-string v7, "Setting window flags for drawing system bar backgrounds."

    invoke-static {v1, v7}, Lbhz;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v5, v7

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v1, Lfie;->a:Ljava/lang/String;

    const-string v2, "Initializing Secure Window Attributes"

    invoke-static {v1, v2}, Lbhz;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v6, Lfie;->c:Landroid/view/Window;

    invoke-static {v1}, Lfie;->a(Landroid/view/Window;)V

    iget-object v1, v6, Lfie;->d:Lhba;

    sget-object v2, Lfie;->a:Ljava/lang/String;

    const-string v5, "Initializing Camera Ui"

    invoke-static {v2, v5}, Lbhz;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lhba;->a:Landroid/app/Activity;

    const v5, 0x7f04001c

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setContentView(I)V

    new-instance v2, Lfid;

    invoke-static {v1}, Lhaz;->a(Lhbb;)Lhaz;

    move-result-object v1

    invoke-direct {v2, v1}, Lfid;-><init>(Lhaz;)V

    iget-object v1, v6, Lfie;->e:Landroid/app/Activity;

    sget-object v5, Lfie;->a:Ljava/lang/String;

    const-string v7, "Initializing Action Bar"

    invoke-static {v5, v7}, Lbhz;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {v1}, Liya;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    new-instance v5, Lfif;

    iget-object v6, v6, Lfie;->f:Landroid/view/LayoutInflater;

    invoke-direct {v5, v1, v6, v2}, Lfif;-><init>(Landroid/app/ActionBar;Landroid/view/LayoutInflater;Lfid;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v1

    const-string v2, "activityUiInitializer#get"

    invoke-interface {v1, v2}, Licz;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->h:Lbst;

    new-instance v2, Lbtf;

    invoke-direct {v2, v1, v5}, Lbtf;-><init>(Lbst;Lfif;)V

    iput-object v2, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->i:Lbtf;

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->i:Lbtf;

    iget-object v1, v1, Lbtf;->d:Ljxn;

    invoke-interface {v1}, Ljxn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtg;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v2

    const-string v5, "#activityUiInitializer#start"

    invoke-interface {v2, v5}, Licz;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Lhzc;->a()Ljuw;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v1

    invoke-interface {v1}, Licz;->a()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v1

    const-string v2, "CameraActivity#disablePreviewScreenshots"

    invoke-interface {v1, v2}, Licz;->a(Ljava/lang/String;)V

    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "setDisablePreviewScreenshots"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v1

    invoke-interface {v1}, Licz;->a()V

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->e:Lbii;

    invoke-interface {v1}, Lbii;->a()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/google/android/apps/camera/legacy/app/processing/ProcessingService;->setProcessing(Landroid/content/Context;I)V

    if-eqz v1, :cond_3

    new-instance v0, Lbih;

    invoke-direct {v0}, Lbih;-><init>()V

    throw v0

    :cond_2
    const/4 v1, 0x3

    sget-object v7, Lfie;->a:Ljava/lang/String;

    const-string v8, "Set rotation animation to seamless"

    invoke-static {v7, v8}, Lbhz;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_2
    sget-object v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->g:Ljava/lang/String;

    const-string v2, "Could not find method: setDisablePreviewScreenshots"

    invoke-static {v1, v2}, Lbhz;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-wide v6, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->c:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_4

    :goto_3
    const-string v1, "Accidental session reuse."

    invoke-static {v3, v1}, Liya;->b(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->m:Lijl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->c:J

    const-string v1, "OnCreate"

    iget-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->b:J

    iget-wide v4, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->c:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->a(Ljava/lang/String;JJ)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Licz;

    move-result-object v0

    invoke-interface {v0}, Licz;->a()V

    return-void

    :cond_4
    move v3, v4

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lbsj;->onPause()V

    invoke-static {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->checkProcessing(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->isbackground:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 10

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->j:Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->cameraActivity()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;

    iget-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->e:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->m:Lijl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->e:J

    const-string v1, "OnCreate End"

    iget-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->c:J

    const-string v4, "OnResume Start"

    iget-wide v5, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->e:J

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->a(Ljava/lang/String;JLjava/lang/String;J)V

    :cond_0
    invoke-super {p0}, Lbsj;->onResume()V

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->j:Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->cameraActivity()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;

    iget-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->f:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->m:Lijl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->f:J

    const-string v1, "OnResume"

    iget-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->e:J

    iget-wide v4, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->a(Ljava/lang/String;JJ)V

    invoke-static {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->checkProcessing(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->isrestart:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->isrestart:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->isbackground:Z

    return-void
.end method

.method protected onStart()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->j:Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->cameraActivity()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;

    iget-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->m:Lijl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->d:J

    const-string v1, "OnStart"

    iget-wide v2, v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/legacy/app/stats/CameraActivitySession;->a(Ljava/lang/String;J)V

    :cond_0
    invoke-static {}, Lfsq;->a()Lfsq;

    move-result-object v0

    iget-object v1, v0, Lfsq;->g:Lfsu;

    sget-object v2, Lfss;->e:Lfss;

    invoke-virtual {v1, v2}, Lfsu;->a(Lfss;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lfsq;->b:J

    :cond_1
    invoke-super {p0}, Lbsj;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->Z()V

    return-void
.end method
