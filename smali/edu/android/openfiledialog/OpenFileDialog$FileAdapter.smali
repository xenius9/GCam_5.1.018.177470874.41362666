.class Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/android/openfiledialog/OpenFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/android/openfiledialog/OpenFileDialog;


# direct methods
.method public constructor <init>(Ledu/android/openfiledialog/OpenFileDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    const v0, 0x1090003

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private setDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/16 v2, 0x3c

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$000(Ledu/android/openfiledialog/OpenFileDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->setDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$100(Ledu/android/openfiledialog/OpenFileDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->setDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->this$0:Ledu/android/openfiledialog/OpenFileDialog;

    invoke-static {v2}, Ledu/android/openfiledialog/OpenFileDialog;->access$200(Ledu/android/openfiledialog/OpenFileDialog;)I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {p0}, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method
