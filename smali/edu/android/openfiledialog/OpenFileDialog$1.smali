.class Ledu/android/openfiledialog/OpenFileDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/android/openfiledialog/OpenFileDialog;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v0}, Ledu/android/openfiledialog/OpenFileDialog;->access$200(Ledu/android/openfiledialog/OpenFileDialog;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v0}, Ledu/android/openfiledialog/OpenFileDialog;->access$300(Ledu/android/openfiledialog/OpenFileDialog;)Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v0}, Ledu/android/openfiledialog/OpenFileDialog;->access$300(Ledu/android/openfiledialog/OpenFileDialog;)Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;

    move-result-object v0

    iget-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v1}, Ledu/android/openfiledialog/OpenFileDialog;->access$400(Ledu/android/openfiledialog/OpenFileDialog;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$200(Ledu/android/openfiledialog/OpenFileDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;->OnSelectedFile(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v0}, Ledu/android/openfiledialog/OpenFileDialog;->access$300(Ledu/android/openfiledialog/OpenFileDialog;)Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v0}, Ledu/android/openfiledialog/OpenFileDialog;->access$500(Ledu/android/openfiledialog/OpenFileDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v0}, Ledu/android/openfiledialog/OpenFileDialog;->access$300(Ledu/android/openfiledialog/OpenFileDialog;)Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;

    move-result-object v0

    iget-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog$1;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v1}, Ledu/android/openfiledialog/OpenFileDialog;->access$600(Ledu/android/openfiledialog/OpenFileDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;->OnSelectedFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
