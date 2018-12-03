.class Ledu/android/openfiledialog/OpenFileDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/android/openfiledialog/OpenFileDialog;->setFilter(Ljava/lang/String;)Ledu/android/openfiledialog/OpenFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/android/openfiledialog/OpenFileDialog;

.field final synthetic val$filter:Ljava/lang/String;


# direct methods
.method constructor <init>(Ledu/android/openfiledialog/OpenFileDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog$2;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    iput-object p2, p0, Ledu/android/openfiledialog/OpenFileDialog$2;->val$filter:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p2, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$2;->val$filter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method
