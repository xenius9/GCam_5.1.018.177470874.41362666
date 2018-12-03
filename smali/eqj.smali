.class final Leqj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Leqj;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v2, p0, Leqj;->a:Landroid/app/Activity;

    new-instance v0, Ledu/android/openfiledialog/OpenFileDialog;

    invoke-direct {v0, v2}, Ledu/android/openfiledialog/OpenFileDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ledu/android/openfiledialog/OpenFileDialog;->setOnlyFoldersFilter()Ledu/android/openfiledialog/OpenFileDialog;

    new-instance v1, Leqj$1;

    invoke-direct {v1, p0}, Leqj$1;-><init>(Leqj;)V

    invoke-virtual {v0, v1}, Ledu/android/openfiledialog/OpenFileDialog;->setOpenDialogListener(Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;)Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_custom_folder"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ledu/android/openfiledialog/OpenFileDialog;->setStartDirectory(Ljava/lang/String;)Ledu/android/openfiledialog/OpenFileDialog;

    invoke-virtual {v0}, Ledu/android/openfiledialog/OpenFileDialog;->show()Landroid/app/AlertDialog;

    const/4 v2, 0x1

    return v2
.end method
