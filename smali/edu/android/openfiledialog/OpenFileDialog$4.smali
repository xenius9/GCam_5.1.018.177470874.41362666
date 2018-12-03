.class Ledu/android/openfiledialog/OpenFileDialog$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/android/openfiledialog/OpenFileDialog;->createBackItem(Landroid/content/Context;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/android/openfiledialog/OpenFileDialog;


# direct methods
.method constructor <init>(Ledu/android/openfiledialog/OpenFileDialog;)V
    .locals 0

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog$4;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$4;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$600(Ledu/android/openfiledialog/OpenFileDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$4;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$700(Ledu/android/openfiledialog/OpenFileDialog;)Z

    move-result v3

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$4;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$800(Ledu/android/openfiledialog/OpenFileDialog;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$4;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$810(Ledu/android/openfiledialog/OpenFileDialog;)I

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$4;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ledu/android/openfiledialog/OpenFileDialog;->access$602(Ledu/android/openfiledialog/OpenFileDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Ledu/android/openfiledialog/OpenFileDialog$4;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$4;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$400(Ledu/android/openfiledialog/OpenFileDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;

    invoke-static {v3, v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$900(Ledu/android/openfiledialog/OpenFileDialog;Landroid/widget/ArrayAdapter;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
