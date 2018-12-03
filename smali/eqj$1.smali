.class Leqj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqj;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leqj;


# direct methods
.method constructor <init>(Leqj;)V
    .locals 0

    iput-object p1, p0, Leqj$1;->this$1:Leqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSelectedFile(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Leqj$1;->this$1:Leqj;

    iget-object v2, v0, Leqj;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    const-string v1, "Directory saved. Does not work on external SD card"

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_custom_folder"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
