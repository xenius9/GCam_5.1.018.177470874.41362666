.class public Ledu/android/openfiledialog/OpenFileDialog;
.super Landroid/app/AlertDialog$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;,
        Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;
    }
.end annotation


# instance fields
.field private accessDeniedMessage:Ljava/lang/String;

.field private can_up:Z

.field private can_up_lvl:I

.field private currentPath:Ljava/lang/String;

.field private fileIcon:Landroid/graphics/drawable/Drawable;

.field private filenameFilter:Ljava/io/FilenameFilter;

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private folderIcon:Landroid/graphics/drawable/Drawable;

.field private isOnlyFoldersFilter:Z

.field private listView:Landroid/widget/ListView;

.field private listener:Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;

.field private selectedIndex:I

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->currentPath:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->files:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->selectedIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up:Z

    iput v2, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up_lvl:I

    iput-boolean v2, p0, Ledu/android/openfiledialog/OpenFileDialog;->isOnlyFoldersFilter:Z

    invoke-direct {p0, p1}, Ledu/android/openfiledialog/OpenFileDialog;->createTitle(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->title:Landroid/widget/TextView;

    invoke-direct {p0}, Ledu/android/openfiledialog/OpenFileDialog;->changeTitle()V

    invoke-direct {p0, p1}, Ledu/android/openfiledialog/OpenFileDialog;->createMainLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, p1}, Ledu/android/openfiledialog/OpenFileDialog;->createBackItem(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Ledu/android/openfiledialog/OpenFileDialog;->createListView(Landroid/content/Context;)Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Ledu/android/openfiledialog/OpenFileDialog;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Ledu/android/openfiledialog/OpenFileDialog$1;

    invoke-direct {v3, p0}, Ledu/android/openfiledialog/OpenFileDialog$1;-><init>(Ledu/android/openfiledialog/OpenFileDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "SD fix"

    new-instance v3, Ledu/android/openfiledialog/OpenFileDialog$7;

    invoke-direct {v3, p1}, Ledu/android/openfiledialog/OpenFileDialog$7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private RebuildFiles(Landroid/widget/ArrayAdapter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Ledu/android/openfiledialog/OpenFileDialog;->currentPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Ledu/android/openfiledialog/OpenFileDialog;->getFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Ledu/android/openfiledialog/OpenFileDialog;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, -0x1

    iput v3, p0, Ledu/android/openfiledialog/OpenFileDialog;->selectedIndex:I

    iget-object v3, p0, Ledu/android/openfiledialog/OpenFileDialog;->files:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Ledu/android/openfiledialog/OpenFileDialog;->changeTitle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ledu/android/openfiledialog/OpenFileDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ledu/android/openfiledialog/OpenFileDialog;->accessDeniedMessage:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Ledu/android/openfiledialog/OpenFileDialog;->accessDeniedMessage:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Ledu/android/openfiledialog/OpenFileDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic access$000(Ledu/android/openfiledialog/OpenFileDialog;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->folderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Ledu/android/openfiledialog/OpenFileDialog;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->fileIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Ledu/android/openfiledialog/OpenFileDialog;)I
    .locals 1

    iget v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->selectedIndex:I

    return v0
.end method

.method static synthetic access$202(Ledu/android/openfiledialog/OpenFileDialog;I)I
    .locals 0

    iput p1, p0, Ledu/android/openfiledialog/OpenFileDialog;->selectedIndex:I

    return p1
.end method

.method static synthetic access$300(Ledu/android/openfiledialog/OpenFileDialog;)Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;
    .locals 1

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->listener:Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;

    return-object v0
.end method

.method static synthetic access$400(Ledu/android/openfiledialog/OpenFileDialog;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Ledu/android/openfiledialog/OpenFileDialog;)Z
    .locals 1

    iget-boolean v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->isOnlyFoldersFilter:Z

    return v0
.end method

.method static synthetic access$600(Ledu/android/openfiledialog/OpenFileDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->currentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ledu/android/openfiledialog/OpenFileDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog;->currentPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Ledu/android/openfiledialog/OpenFileDialog;)Z
    .locals 1

    iget-boolean v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up:Z

    return v0
.end method

.method static synthetic access$800(Ledu/android/openfiledialog/OpenFileDialog;)I
    .locals 1

    iget v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up_lvl:I

    return v0
.end method

.method static synthetic access$808(Ledu/android/openfiledialog/OpenFileDialog;)I
    .locals 2

    iget v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up_lvl:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up_lvl:I

    return v0
.end method

.method static synthetic access$810(Ledu/android/openfiledialog/OpenFileDialog;)I
    .locals 2

    iget v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up_lvl:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up_lvl:I

    return v0
.end method

.method static synthetic access$900(Ledu/android/openfiledialog/OpenFileDialog;Landroid/widget/ArrayAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Ledu/android/openfiledialog/OpenFileDialog;->RebuildFiles(Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method private changeTitle()V
    .locals 9

    const/4 v8, 0x2

    iget-object v3, p0, Ledu/android/openfiledialog/OpenFileDialog;->currentPath:Ljava/lang/String;

    invoke-virtual {p0}, Ledu/android/openfiledialog/OpenFileDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ledu/android/openfiledialog/OpenFileDialog;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-double v4, v1

    const-wide v6, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iget-object v4, p0, Ledu/android/openfiledialog/OpenFileDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ledu/android/openfiledialog/OpenFileDialog;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v4

    if-le v4, v0, :cond_2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ledu/android/openfiledialog/OpenFileDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ledu/android/openfiledialog/OpenFileDialog;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v4

    if-le v4, v0, :cond_1

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Ledu/android/openfiledialog/OpenFileDialog;->title:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Ledu/android/openfiledialog/OpenFileDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private createBackItem(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 7

    const/16 v6, 0x3c

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v2, 0x10301b3

    invoke-direct {p0, p1, v2}, Ledu/android/openfiledialog/OpenFileDialog;->createTextView(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Ledu/android/openfiledialog/OpenFileDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Ledu/android/openfiledialog/OpenFileDialog$4;

    invoke-direct {v2, p0}, Ledu/android/openfiledialog/OpenFileDialog$4;-><init>(Ledu/android/openfiledialog/OpenFileDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private createListView(Landroid/content/Context;)Landroid/widget/ListView;
    .locals 2

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Ledu/android/openfiledialog/OpenFileDialog$6;

    invoke-direct {v1, p0}, Ledu/android/openfiledialog/OpenFileDialog$6;-><init>(Ledu/android/openfiledialog/OpenFileDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private createMainLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p1}, Ledu/android/openfiledialog/OpenFileDialog;->getLinearLayoutMinHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    return-object v0
.end method

.method private createTextView(Landroid/content/Context;I)Landroid/widget/TextView;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Ledu/android/openfiledialog/OpenFileDialog;->getItemHeight(Landroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v1
.end method

.method private createTitle(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    const v1, 0x10301b8

    invoke-direct {p0, p1, v1}, Ledu/android/openfiledialog/OpenFileDialog;->createTextView(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ledu/android/openfiledialog/OpenFileDialog;->filenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/io/File;

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ledu/android/openfiledialog/OpenFileDialog$5;

    invoke-direct {v3, p0}, Ledu/android/openfiledialog/OpenFileDialog$5;-><init>(Ledu/android/openfiledialog/OpenFileDialog;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private getItemHeight(Landroid/content/Context;)I
    .locals 5

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010387

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-static {p1}, Ledu/android/openfiledialog/OpenFileDialog;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2, v0}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method private static getLinearLayoutMinHeight(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Ledu/android/openfiledialog/OpenFileDialog;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method private static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0}, Ledu/android/openfiledialog/OpenFileDialog;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method


# virtual methods
.method public getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x50

    return v1
.end method

.method public setAccessDeniedMessage(Ljava/lang/String;)Ledu/android/openfiledialog/OpenFileDialog;
    .locals 0

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog;->accessDeniedMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setCanUp(Z)Ledu/android/openfiledialog/OpenFileDialog;
    .locals 0

    iput-boolean p1, p0, Ledu/android/openfiledialog/OpenFileDialog;->can_up:Z

    return-object p0
.end method

.method public setFileIcon(Landroid/graphics/drawable/Drawable;)Ledu/android/openfiledialog/OpenFileDialog;
    .locals 0

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog;->fileIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setFilter(Ljava/lang/String;)Ledu/android/openfiledialog/OpenFileDialog;
    .locals 1

    new-instance v0, Ledu/android/openfiledialog/OpenFileDialog$2;

    invoke-direct {v0, p0, p1}, Ledu/android/openfiledialog/OpenFileDialog$2;-><init>(Ledu/android/openfiledialog/OpenFileDialog;Ljava/lang/String;)V

    iput-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->filenameFilter:Ljava/io/FilenameFilter;

    return-object p0
.end method

.method public setFolderIcon(Landroid/graphics/drawable/Drawable;)Ledu/android/openfiledialog/OpenFileDialog;
    .locals 0

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog;->folderIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOnlyFoldersFilter()Ledu/android/openfiledialog/OpenFileDialog;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->isOnlyFoldersFilter:Z

    new-instance v0, Ledu/android/openfiledialog/OpenFileDialog$3;

    invoke-direct {v0, p0}, Ledu/android/openfiledialog/OpenFileDialog$3;-><init>(Ledu/android/openfiledialog/OpenFileDialog;)V

    iput-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->filenameFilter:Ljava/io/FilenameFilter;

    return-object p0
.end method

.method public setOpenDialogListener(Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;)Ledu/android/openfiledialog/OpenFileDialog;
    .locals 0

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog;->listener:Ledu/android/openfiledialog/OpenFileDialog$OpenDialogListener;

    return-object p0
.end method

.method public setStartDirectory(Ljava/lang/String;)Ledu/android/openfiledialog/OpenFileDialog;
    .locals 0

    iput-object p1, p0, Ledu/android/openfiledialog/OpenFileDialog;->currentPath:Ljava/lang/String;

    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 4

    invoke-direct {p0}, Ledu/android/openfiledialog/OpenFileDialog;->changeTitle()V

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->files:Ljava/util/List;

    iget-object v1, p0, Ledu/android/openfiledialog/OpenFileDialog;->currentPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Ledu/android/openfiledialog/OpenFileDialog;->getFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ledu/android/openfiledialog/OpenFileDialog;->listView:Landroid/widget/ListView;

    new-instance v1, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;

    invoke-virtual {p0}, Ledu/android/openfiledialog/OpenFileDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ledu/android/openfiledialog/OpenFileDialog;->files:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ledu/android/openfiledialog/OpenFileDialog$FileAdapter;-><init>(Ledu/android/openfiledialog/OpenFileDialog;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
