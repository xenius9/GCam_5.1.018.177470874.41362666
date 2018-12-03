.class public Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;
.super Landroid/widget/RelativeLayout;
.source "ManualFocusLayout.java"


# instance fields
.field protected DISTANCE_AUTO:F

.field public buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field protected distancesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public idButtonAuto:I

.field public idButtonInfinity:I

.field public idButtonMacro:I

.field public idButtonPortrait:I

.field private initialized:Z

.field protected isButtonsInitialized:Z

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->buttons:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->isButtonsInitialized:Z

    const v0, 0x38d1b717    # 1.0E-4f

    iput v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->DISTANCE_AUTO:F

    const v0, 0x7f0e01f4

    iput v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonAuto:I

    const v0, 0x7f0e01f5

    iput v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonInfinity:I

    const v0, 0x7f0e01f6

    iput v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonMacro:I

    const v0, 0x7f0e01f7

    iput v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonPortrait:I

    iput-boolean p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->initialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->buttons:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->isButtonsInitialized:Z

    const p2, 0x38d1b717    # 1.0E-4f

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->DISTANCE_AUTO:F

    const p2, 0x7f0e01f4

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonAuto:I

    const p2, 0x7f0e01f5

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonInfinity:I

    const p2, 0x7f0e01f6

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonMacro:I

    const p2, 0x7f0e01f7

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonPortrait:I

    iput-boolean p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->initialized:Z

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->setRight(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->buttons:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->isButtonsInitialized:Z

    const p2, 0x38d1b717    # 1.0E-4f

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->DISTANCE_AUTO:F

    const p2, 0x7f0e01f4

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonAuto:I

    const p2, 0x7f0e01f5

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonInfinity:I

    const p2, 0x7f0e01f6

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonMacro:I

    const p2, 0x7f0e01f7

    iput p2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonPortrait:I

    iput-boolean p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->initialized:Z

    return-void
.end method

.method private initButtons()V
    .locals 10

    iget v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonAuto:I

    invoke-virtual {p0, v0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonMacro:I

    invoke-virtual {p0, v1}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonPortrait:I

    invoke-virtual {p0, v2}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget v3, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonInfinity:I

    invoke-virtual {p0, v3}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->initialized:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->buttons:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->buttons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->buttons:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->buttons:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->buttons:Ljava/util/List;

    new-instance v2, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout$$Lambda$0;-><init>(Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->activateButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "pref_checkbox_mf_enabled_macro"

    const-string v6, "false"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_checkbox_mf_enabled_portrait"

    const-string v7, "false"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "pref_checkbox_mf_enabled_infinity"

    const-string v8, "false"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v7

    :goto_0
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v5, :cond_2

    move v1, v8

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v6, :cond_3

    move v1, v8

    goto :goto_2

    :cond_3
    move v1, v7

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->activateButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private initSettingsStorage()V
    .locals 1

    invoke-virtual {p0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private loadDistances()V
    .locals 5

    iget-object v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonAuto:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->DISTANCE_AUTO:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonMacro:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_input_mf_enabled_auto_key"

    const-string v4, "14.29f"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonPortrait:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_input_mf_enabled_portrait_key"

    const-string v4, "2.21f"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->idButtonInfinity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_input_mf_enabled_infinity_key"

    const-string v3, "0f"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected activateButton(Landroid/widget/Button;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0, p1}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->getDistance(Landroid/widget/Button;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->setDistance(F)V

    return-void
.end method

.method protected disactivateButton(Landroid/widget/Button;)V
    .locals 0

    const p0, 0x22ffffff

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method protected getDistance(Landroid/widget/Button;)F
    .locals 0

    iget-object p0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->distancesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method final synthetic lambda$initButtons$0$ManualFocusLayout(Landroid/widget/Button;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout$1;

    invoke-direct {v0, p0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout$1;-><init>(Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->initSettingsStorage()V

    invoke-direct {p0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->loadDistances()V

    invoke-direct {p0}, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->initButtons()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->initialized:Z

    return-void
.end method

.method protected setDistance(F)V
    .locals 0

    sput p1, Ldeeznutz/lol;->focusDistance:F

    iget p0, p0, Lcom/example/mdmitriev/gcam_protoryping/ManualFocusLayout;->DISTANCE_AUTO:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sput p0, Ldeeznutz/lol;->focusMode:I

    return-void
.end method
