.class Ledu/android/openfiledialog/OpenFileDialog$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/android/openfiledialog/OpenFileDialog;->createListView(Landroid/content/Context;)Landroid/widget/ListView;
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

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog$6;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$6;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$808(Ledu/android/openfiledialog/OpenFileDialog;)I

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$6;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ledu/android/openfiledialog/OpenFileDialog;->access$602(Ledu/android/openfiledialog/OpenFileDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$6;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2, v0}, Ledu/android/openfiledialog/OpenFileDialog;->access$900(Ledu/android/openfiledialog/OpenFileDialog;Landroid/widget/ArrayAdapter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$6;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$200(Ledu/android/openfiledialog/OpenFileDialog;)I

    move-result v2

    if-eq p3, v2, :cond_1

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$6;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2, p3}, Ledu/android/openfiledialog/OpenFileDialog;->access$202(Ledu/android/openfiledialog/OpenFileDialog;I)I

    :goto_1
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$6;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ledu/android/openfiledialog/OpenFileDialog;->access$202(Ledu/android/openfiledialog/OpenFileDialog;I)I

    goto :goto_1
.end method
