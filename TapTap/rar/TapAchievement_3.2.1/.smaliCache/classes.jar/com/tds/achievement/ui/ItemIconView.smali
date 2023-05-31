.class Lcom/tds/achievement/ui/ItemIconView;
.super Landroid/widget/FrameLayout;
.source "ItemIconView.java"


# instance fields
.field crownImage:Landroid/widget/ImageView;

.field iconHexagonCoverImage:Landroid/widget/ImageView;

.field iconHighlightCoverImage:Landroid/widget/ImageView;

.field iconImage:Landroid/widget/ImageView;

.field isDetail:Z

.field leftRarityImage:Landroid/widget/ImageView;

.field levelImage:Landroid/widget/ImageView;

.field levelText:Landroid/widget/TextView;

.field progressCoverImage:Landroid/view/View;

.field progressImage:Landroid/widget/ImageView;

.field progressText:Landroid/widget/TextView;

.field rightRarityImage:Landroid/widget/ImageView;

.field ultraRareBgImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    .line 49
    invoke-direct {p0}, Lcom/tds/achievement/ui/ItemIconView;->initLayout()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDetail"    # Z

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    .line 43
    iput-boolean p2, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    .line 44
    invoke-direct {p0}, Lcom/tds/achievement/ui/ItemIconView;->initLayout()V

    .line 45
    return-void
.end method

.method private getProgressCoverDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 193
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 194
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const v1, -0x4c000001

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 195
    return-object v0
.end method

.method private getProgressString(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 8
    .param p1, "progress"    # Ljava/lang/String;

    .line 253
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "%"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 255
    .local v1, "percentString":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 257
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 258
    return-object v0
.end method

.method private initLayout()V
    .registers 14

    .line 54
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->removeAllViews()V

    .line 55
    sget v0, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v1, 0x42d80000    # 108.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v0

    .line 56
    .local v0, "dp108":I
    sget v1, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v2, 0x43080000    # 136.0f

    invoke-static {v1, v2}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v1

    .line 58
    .local v1, "dp136":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    iget-boolean v4, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v4, :cond_1e

    const/high16 v4, 0x43320000    # 178.0f

    goto :goto_20

    :cond_1e
    const/high16 v4, 0x43160000    # 150.0f

    :goto_20
    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    iget-boolean v4, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v4, :cond_2a

    move v4, v1

    goto :goto_2b

    :cond_2a
    move v4, v0

    :goto_2b
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/tds/achievement/ui/ItemIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->iconImage:Landroid/widget/ImageView;

    .line 63
    sget v2, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    iget-boolean v3, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v3, :cond_45

    const/high16 v3, 0x42c80000    # 100.0f

    goto :goto_47

    :cond_45
    const/high16 v3, 0x42900000    # 72.0f

    :goto_47
    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v2

    .line 64
    .local v2, "iconRootSize":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v3, "iconLP":Landroid/widget/FrameLayout$LayoutParams;
    sget v4, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v4, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 66
    const/4 v4, 0x1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    iget-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->iconImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHighlightCoverImage:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHighlightCoverImage:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ic_achievement_icon_highlight_cover"

    invoke-static {v7, v8}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHexagonCoverImage:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHexagonCoverImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ic_achievement_icon_hexagon_cover"

    invoke-static {v7, v8}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->crownImage:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ic_achievement_full_crown"

    invoke-static {v7, v8}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    .line 87
    .local v6, "dp14":I
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v7, "crownImageLP":Landroid/widget/FrameLayout$LayoutParams;
    const v8, 0x800035

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    sget v9, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v10, 0x41500000    # 13.0f

    invoke-static {v9, v10}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 90
    sget v9, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v11, 0x423c0000    # 47.0f

    invoke-static {v9, v11}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 91
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->crownImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v9, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->progressCoverImage:Landroid/view/View;

    .line 95
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, 0x0

    invoke-direct {v9, v2, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v9, "progressCoverImageLP":Landroid/widget/FrameLayout$LayoutParams;
    sget v12, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v12, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 97
    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressCoverImage:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressCoverImage:Landroid/view/View;

    invoke-direct {p0}, Lcom/tds/achievement/ui/ItemIconView;->getProgressCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .end local v2    # "iconRootSize":I
    .end local v3    # "iconLP":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "dp14":I
    .end local v7    # "crownImageLP":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "progressCoverImageLP":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->progressImage:Landroid/widget/ImageView;

    .line 104
    sget v2, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v2

    .line 105
    .local v2, "dp34":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v3, "progressImageLP":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    sget v4, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v4, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressImage:Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ic_achievement_progress_bubble"

    invoke-static {v5, v6}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 119
    iget-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    .line 124
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v8, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v8, :cond_18d

    move v8, v1

    goto :goto_18e

    :cond_18d
    move v8, v0

    :goto_18e
    sget v9, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v12, 0x42340000    # 45.0f

    .line 125
    invoke-static {v9, v12}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v4, "ultraRareBgImageLP":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x51

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    sget v9, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    iget-boolean v12, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v12, :cond_1a5

    const/high16 v10, 0x41880000    # 17.0f

    :cond_1a5
    invoke-static {v9, v10}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 128
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-boolean v12, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v12, :cond_1bd

    const-string v12, "ic_achievement_leaves_detail"

    goto :goto_1bf

    :cond_1bd
    const-string v12, "ic_achievement_leaves"

    :goto_1bf
    invoke-static {v10, v12}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    .end local v4    # "ultraRareBgImageLP":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    .line 137
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v5, v9}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    invoke-direct {v4, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v4, "levelLP":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 140
    iget-boolean v5, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v5, :cond_1f8

    .line 141
    sget v5, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v5, v9}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 143
    :cond_1f8
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v4    # "levelLP":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    .local v4, "levelRoot":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v12, 0x41a00000    # 20.0f

    .line 150
    invoke-static {v10, v12}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    invoke-direct {v5, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v5, "levelRootLP":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    sget v8, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    iget-boolean v9, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    const/high16 v10, 0x41200000    # 10.0f

    if-eqz v9, :cond_220

    move v9, v10

    goto :goto_222

    :cond_220
    const/high16 v9, 0x40e00000    # 7.0f

    :goto_222
    invoke-static {v8, v9}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v8

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 153
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 156
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    .line 157
    sget v7, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v7, v8}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    .line 158
    .local v7, "dp18":I
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v8, "rarityLP":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 162
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->rightRarityImage:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->rightRarityImage:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    .line 167
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v6, v9, :cond_288

    .line 170
    iget-object v6, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    const v9, -0x42333333    # -0.1f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 172
    :cond_288
    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    .line 173
    .local v6, "dp2":I
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v11, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v9, p0, Lcom/tds/achievement/ui/ItemIconView;->rightRarityImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    .end local v5    # "levelRootLP":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "dp2":I
    .end local v7    # "dp18":I
    .end local v8    # "rarityLP":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 181
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 182
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 183
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHighlightCoverImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 184
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHexagonCoverImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 185
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->progressCoverImage:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 186
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->crownImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 187
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 188
    iget-object v5, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0, v4}, Lcom/tds/achievement/ui/ItemIconView;->addView(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method private setLevelInfo(I)V
    .registers 8
    .param p1, "level"    # I

    .line 263
    sget v0, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v0

    .line 266
    .local v0, "mTextViewWidth":I
    :goto_8
    iget-object v1, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 267
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tds_achievement_string_rarity_uncommon"

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 269
    .local v1, "textWidth":F
    int-to-float v2, v0

    cmpl-float v2, v1, v2

    const/4 v4, 0x0

    if-lez v2, :cond_32

    .line 270
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    .line 271
    .local v2, "textSize":I
    add-int/lit8 v2, v2, -0x2

    .line 272
    iget-object v3, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    .end local v1    # "textWidth":F
    .end local v2    # "textSize":I
    goto :goto_8

    .line 277
    :cond_32
    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_164

    .line 322
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->rightRarityImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_162

    .line 310
    :pswitch_5a
    iget-object v1, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    .line 312
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ic_achievement_level_ultra_rare"

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 311
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    iget-object v1, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    .line 314
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ic_achievement_rarity_ultrarare_left"

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 313
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v1, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    .line 316
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tds_achievement_string_rarity_ultra_rare"

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/tds/achievement/ui/ItemIconView;->rightRarityImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ic_achievement_rarity_ultrarare_right"

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v1, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    goto/16 :goto_162

    .line 300
    :pswitch_9d
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    .line 301
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_level_rare"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    .line 303
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_rarity_rare_left"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 302
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tds_achievement_string_rarity_rare"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->rightRarityImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_rarity_rare_right"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    goto/16 :goto_162

    .line 289
    :pswitch_e0
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    .line 290
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ic_achievement_level_uncommon"

    invoke-static {v4, v5}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    .line 292
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ic_achievement_rarity_uncommon_left"

    invoke-static {v4, v5}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 291
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    .line 294
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->rightRarityImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_rarity_uncommon_right"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    goto :goto_162

    .line 279
    :pswitch_120
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelImage:Landroid/widget/ImageView;

    .line 280
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_level_common"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->leftRarityImage:Landroid/widget/ImageView;

    .line 282
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_rarity_common_left"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 281
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->levelText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tds_achievement_string_rarity_common"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->rightRarityImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_rarity_common_right"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v2, p0, Lcom/tds/achievement/ui/ItemIconView;->ultraRareBgImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    nop

    .line 329
    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_120
        :pswitch_e0
        :pswitch_9d
        :pswitch_5a
    .end packed-switch
.end method


# virtual methods
.method public setData(Lcom/tds/achievement/TapAchievementBean;)V
    .registers 7
    .param p1, "source"    # Lcom/tds/achievement/TapAchievementBean;

    .line 199
    if-eqz p1, :cond_13c

    .line 200
    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 201
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHighlightCoverImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_icon_invisible"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/tds/achievement/ui/ItemIconView;->setLevelInfo(I)V

    goto :goto_5d

    .line 206
    :cond_2a
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHighlightCoverImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/widgets/image/TdsImage;->get(Landroid/content/Context;)Lcom/tds/common/widgets/image/TdsImage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getAchieveIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tds/common/widgets/image/TdsImage;->load(Ljava/lang/String;)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_icon_placeholder"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tds/common/widgets/image/LoadBuilder;->placeholder(I)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tds/achievement/ui/ItemIconView;->iconImage:Landroid/widget/ImageView;

    .line 209
    invoke-virtual {v0, v3}, Lcom/tds/common/widgets/image/LoadBuilder;->into(Landroid/widget/ImageView;)V

    .line 210
    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getStats()Lcom/tds/achievement/AchievementStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/AchievementStats;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tds/achievement/ui/ItemIconView;->setLevelInfo(I)V

    .line 212
    :goto_5d
    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->isFullAchievement()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 213
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->crownImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHexagonCoverImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_icon_hexagon_cover"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHexagonCoverImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_96

    .line 218
    :cond_7d
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->crownImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHexagonCoverImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ItemIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_icon_round_cover"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->iconHexagonCoverImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :goto_96
    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v0

    if-nez v0, :cond_ba

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getStep()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_ba

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v0

    if-lez v0, :cond_ba

    .line 225
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c4

    .line 228
    :cond_ba
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->progressImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    :goto_c4
    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 232
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->progressCoverImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d5

    .line 234
    :cond_d0
    iget-object v0, p0, Lcom/tds/achievement/ui/ItemIconView;->progressCoverImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :goto_d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getStep()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "progressStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/tds/achievement/ui/ItemIconView;->progressText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/tds/achievement/ui/ItemIconView;->getProgressString(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/tds/achievement/ui/ItemIconView;->progressCoverImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v2

    if-nez v2, :cond_11c

    .line 241
    sget v2, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    iget-boolean v3, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v3, :cond_113

    const/high16 v3, 0x42c80000    # 100.0f

    goto :goto_115

    :cond_113
    const/high16 v3, 0x42900000    # 72.0f

    :goto_115
    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_13c

    .line 244
    :cond_11c
    sget v2, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    iget-boolean v3, p0, Lcom/tds/achievement/ui/ItemIconView;->isDetail:Z

    if-eqz v3, :cond_125

    const/high16 v3, 0x42aa0000    # 85.0f

    goto :goto_127

    :cond_125
    const/high16 v3, 0x426c0000    # 59.0f

    .line 245
    :goto_127
    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v2

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getStep()I

    move-result v3

    .line 246
    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getStep()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 250
    .end local v0    # "progressStr":Ljava/lang/String;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_13c
    :goto_13c
    return-void
.end method
