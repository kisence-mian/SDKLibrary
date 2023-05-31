.class Lcom/tds/achievement/ui/ListPlaceHolderView;
.super Landroid/widget/FrameLayout;
.source "ListPlaceHolderView.java"


# instance fields
.field private isLandscape:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/achievement/ui/ListPlaceHolderView;->initLayout(Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLandscape"    # Z

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p2}, Lcom/tds/achievement/ui/ListPlaceHolderView;->initLayout(Z)V

    .line 25
    iput-boolean p2, p0, Lcom/tds/achievement/ui/ListPlaceHolderView;->isLandscape:Z

    .line 26
    return-void
.end method

.method private initLayout(Z)V
    .registers 11
    .param p1, "isLandscape"    # Z

    .line 29
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListPlaceHolderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/tds/common/utils/UIUtils;->getWindowShortLength(Landroid/app/Activity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    div-int/lit8 v0, v0, 0x2

    .line 31
    .local v0, "cardSize":I
    const/4 v1, -0x1

    if-eqz p1, :cond_1a

    .line 32
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/tds/achievement/ui/ListPlaceHolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    .line 34
    :cond_1a
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/tds/achievement/ui/ListPlaceHolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :goto_22
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListPlaceHolderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    .local v2, "cardImage":Landroid/view/View;
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 40
    .local v3, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const v4, -0x50506

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 41
    sget v4, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v4

    .line 45
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/tds/achievement/ui/ListPlaceHolderView;->addView(Landroid/view/View;)V

    .line 49
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "cardImage":Landroid/view/View;
    .end local v3    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListPlaceHolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, "iconImage":Landroid/view/View;
    sget v2, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v2

    .line 51
    .local v2, "dp72":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v3, "iconImageLP":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x41a80000    # 21.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    nop

    .line 57
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListPlaceHolderView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "ic_achievement_card_placeholder_icon"

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 56
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/tds/achievement/ui/ListPlaceHolderView;->addView(Landroid/view/View;)V

    .line 63
    .end local v1    # "iconImage":Landroid/view/View;
    .end local v2    # "dp72":I
    .end local v3    # "iconImageLP":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListPlaceHolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-static {v3, v6}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    .line 65
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    invoke-direct {v2, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v2, "iconImageLP":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v6, 0x42e40000    # 114.0f

    invoke-static {v3, v6}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 70
    .local v3, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const v6, -0xd0d0e

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 71
    sget v8, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v8, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/tds/achievement/ui/ListPlaceHolderView;->addView(Landroid/view/View;)V

    .line 77
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "iconImageLP":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListPlaceHolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v8, 0x42780000    # 62.0f

    invoke-static {v3, v8}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    sget v8, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    .line 79
    invoke-static {v8, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    invoke-direct {v2, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    .restart local v2    # "iconImageLP":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v4, 0x43050000    # 133.0f

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 84
    .restart local v3    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 85
    sget v4, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v4, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 86
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/tds/achievement/ui/ListPlaceHolderView;->addView(Landroid/view/View;)V

    .line 89
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "iconImageLP":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    return-void
.end method


# virtual methods
.method public setPosition(I)V
    .registers 18
    .param p1, "itemPosition"    # I

    .line 92
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 93
    .local v2, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const v3, -0xd0d0e

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 94
    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    .line 95
    .local v3, "dp10":I
    sget v4, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    .line 96
    .local v4, "dp3":I
    sget v5, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v5, v6}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    .line 97
    .local v5, "dp6":I
    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-ne v1, v13, :cond_51

    .line 98
    invoke-virtual {v0, v4, v5, v5, v5}, Lcom/tds/achievement/ui/ListPlaceHolderView;->setPadding(IIII)V

    .line 99
    new-array v12, v12, [F

    aput v15, v12, v14

    aput v15, v12, v11

    int-to-float v11, v3

    aput v11, v12, v10

    int-to-float v10, v3

    aput v10, v12, v9

    int-to-float v9, v3

    aput v9, v12, v8

    int-to-float v8, v3

    aput v8, v12, v7

    aput v15, v12, v6

    aput v15, v12, v13

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_96

    .line 100
    :cond_51
    const/16 v13, 0x9

    if-ne v1, v13, :cond_73

    .line 101
    invoke-virtual {v0, v5, v14, v5, v5}, Lcom/tds/achievement/ui/ListPlaceHolderView;->setPadding(IIII)V

    .line 102
    new-array v12, v12, [F

    aput v15, v12, v14

    aput v15, v12, v11

    aput v15, v12, v10

    aput v15, v12, v9

    int-to-float v9, v3

    aput v9, v12, v8

    int-to-float v8, v3

    aput v8, v12, v7

    int-to-float v7, v3

    aput v7, v12, v6

    int-to-float v6, v3

    const/4 v7, 0x7

    aput v6, v12, v7

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_96

    .line 104
    :cond_73
    iget-boolean v13, v0, Lcom/tds/achievement/ui/ListPlaceHolderView;->isLandscape:Z

    if-eqz v13, :cond_7b

    .line 105
    invoke-virtual {v0, v4, v14, v5, v5}, Lcom/tds/achievement/ui/ListPlaceHolderView;->setPadding(IIII)V

    goto :goto_96

    .line 107
    :cond_7b
    invoke-virtual {v0, v4, v14, v5, v5}, Lcom/tds/achievement/ui/ListPlaceHolderView;->setPadding(IIII)V

    .line 108
    new-array v12, v12, [F

    aput v15, v12, v14

    aput v15, v12, v11

    aput v15, v12, v10

    aput v15, v12, v9

    int-to-float v9, v3

    aput v9, v12, v8

    int-to-float v8, v3

    aput v8, v12, v7

    aput v15, v12, v6

    const/4 v6, 0x7

    aput v15, v12, v6

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 111
    :goto_96
    invoke-virtual {v0, v2}, Lcom/tds/achievement/ui/ListPlaceHolderView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-void
.end method
