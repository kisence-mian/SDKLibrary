.class public Landroidx/appcompat/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    new-instance v0, Landroidx/appcompat/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 3

    .line 110
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .registers 2

    .line 86
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .registers 7

    .line 56
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 57
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 58
    .local v1, "widthDp":I
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 59
    .local v2, "heightDp":I
    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 61
    .local v3, "smallest":I
    const/16 v4, 0x258

    if-gt v3, v4, :cond_3e

    if-gt v1, v4, :cond_3e

    const/16 v4, 0x2d0

    const/16 v5, 0x3c0

    if-le v1, v5, :cond_1e

    if-gt v2, v4, :cond_3e

    :cond_1e
    if-le v1, v4, :cond_23

    if-le v2, v5, :cond_23

    goto :goto_3e

    .line 65
    :cond_23
    const/16 v4, 0x1f4

    if-ge v1, v4, :cond_3c

    const/16 v4, 0x1e0

    const/16 v5, 0x280

    if-le v1, v5, :cond_2f

    if-gt v2, v4, :cond_3c

    :cond_2f
    if-le v1, v4, :cond_34

    if-le v2, v5, :cond_34

    goto :goto_3c

    .line 69
    :cond_34
    const/16 v4, 0x168

    if-lt v1, v4, :cond_3a

    .line 71
    const/4 v4, 0x3

    return v4

    .line 73
    :cond_3a
    const/4 v4, 0x2

    return v4

    .line 68
    :cond_3c
    :goto_3c
    const/4 v4, 0x4

    return v4

    .line 64
    :cond_3e
    :goto_3e
    const/4 v4, 0x5

    return v4
.end method

.method public getStackedTabMaxWidth()I
    .registers 3

    .line 115
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .registers 6

    .line 94
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v2, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 97
    .local v1, "height":I
    iget-object v2, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_28

    .line 100
    sget v3, Landroidx/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 100
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 103
    :cond_28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .registers 3

    .line 90
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showsOverflowMenuButton()Z
    .registers 4

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_8

    .line 79
    return v1

    .line 81
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
