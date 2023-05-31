.class Lcom/tds/achievement/ui/ListHeadView;
.super Landroid/widget/LinearLayout;
.source "ListHeadView.java"


# instance fields
.field allNumberTextView:Landroid/widget/TextView;

.field reachNumberTextView:Landroid/widget/TextView;

.field reachedContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/achievement/ui/ListHeadView;->initLayout(Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLandscape"    # Z

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p2}, Lcom/tds/achievement/ui/ListHeadView;->initLayout(Z)V

    .line 27
    return-void
.end method

.method private initLayout(Z)V
    .registers 18
    .param p1, "isLandscape"    # Z

    .line 30
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/tds/achievement/ui/ListHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 31
    .local v2, "context":Landroid/content/Context;
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    if-eqz v1, :cond_1a

    .line 32
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Lcom/tds/achievement/ui/ListHeadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {v0, v6}, Lcom/tds/achievement/ui/ListHeadView;->setOrientation(I)V

    goto :goto_25

    .line 36
    :cond_1a
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Lcom/tds/achievement/ui/ListHeadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {v0, v3}, Lcom/tds/achievement/ui/ListHeadView;->setOrientation(I)V

    .line 40
    :goto_25
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Lcom/tds/achievement/ui/ListHeadView;->setGravity(I)V

    .line 42
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v8, "headContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44
    if-eqz v1, :cond_38

    .line 45
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_3b

    .line 47
    :cond_38
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    :goto_3b
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v9, "logoView":Landroid/widget/ImageView;
    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v10, v11}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    .line 52
    .local v10, "logoViewSize":I
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    .local v11, "logoViewLP":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const-string v12, "ic_achievement_landing_icon"

    invoke-static {v2, v12}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    .local v12, "textContainer":Landroid/widget/LinearLayout;
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v13, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/16 v13, 0x50

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 60
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->reachNumberTextView:Landroid/widget/TextView;

    .line 61
    const/high16 v14, -0x1000000

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->reachNumberTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41f00000    # 30.0f

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    iget-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->reachNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->setSingleLine()V

    .line 64
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->allNumberTextView:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->allNumberTextView:Landroid/widget/TextView;

    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    iget-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->allNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->setSingleLine()V

    .line 69
    iget-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->reachNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->allNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    .line 76
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    const/high16 v7, 0x41000000    # 8.0f

    if-eqz v1, :cond_d9

    .line 78
    iget-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v13

    .line 82
    .local v4, "reachedContainerLP":Landroid/widget/LinearLayout$LayoutParams;
    sget v13, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v14, 0x42480000    # 50.0f

    invoke-static {v13, v14}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v13

    sget v14, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v14, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    invoke-virtual {v4, v13, v6, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    iget-object v7, v0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .end local v4    # "reachedContainerLP":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_f8

    .line 85
    :cond_d9
    iget-object v13, v0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v13

    .line 89
    .restart local v4    # "reachedContainerLP":Landroid/widget/LinearLayout$LayoutParams;
    sget v13, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v13, v15}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v13

    sget v14, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v14, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    invoke-virtual {v4, v6, v13, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    iget-object v7, v0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v4    # "reachedContainerLP":Landroid/widget/LinearLayout$LayoutParams;
    :goto_f8
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v4, "reachIcon":Landroid/widget/ImageView;
    sget v7, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v7, v13}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    .line 95
    .local v7, "reachIconSize":I
    const-string v13, "ic_achievement_reach"

    invoke-static {v2, v13}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v13, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v13

    .line 100
    .local v5, "textLP":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v13, Lcom/tds/achievement/ui/VerticalTextView;

    invoke-direct {v13, v2, v1}, Lcom/tds/achievement/ui/VerticalTextView;-><init>(Landroid/content/Context;Z)V

    .line 101
    .local v13, "textView":Lcom/tds/achievement/ui/VerticalTextView;
    const/high16 v14, 0x41200000    # 10.0f

    invoke-virtual {v13, v14}, Lcom/tds/achievement/ui/VerticalTextView;->setTextSize(F)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/tds/achievement/ui/ListHeadView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "tds_achievement_string_unlocked"

    invoke-static {v14, v15}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/tds/achievement/ui/VerticalTextView;->setCustomText(Ljava/lang/CharSequence;)V

    .line 104
    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v1, :cond_144

    .line 105
    sget v15, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v15, v14}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v14

    invoke-virtual {v5, v6, v14, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    invoke-virtual {v13, v3}, Lcom/tds/achievement/ui/VerticalTextView;->setEms(I)V

    goto :goto_14d

    .line 108
    :cond_144
    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v3, v14}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    invoke-virtual {v5, v3, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    :goto_14d
    invoke-virtual {v13, v5}, Lcom/tds/achievement/ui/VerticalTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/high16 v3, -0x1000000

    invoke-virtual {v13, v3}, Lcom/tds/achievement/ui/VerticalTextView;->setTextColor(I)V

    .line 112
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v3}, Lcom/tds/achievement/ui/VerticalTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v3, v0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    iget-object v3, v0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-virtual {v0, v8}, Lcom/tds/achievement/ui/ListHeadView;->addView(Landroid/view/View;)V

    .line 118
    iget-object v3, v0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/tds/achievement/ui/ListHeadView;->addView(Landroid/view/View;)V

    .line 119
    return-void
.end method


# virtual methods
.method public updateText(IIZ)V
    .registers 7
    .param p1, "reachNumber"    # I
    .param p2, "allNumber"    # I
    .param p3, "hasReachRecord"    # Z

    .line 122
    iget-object v0, p0, Lcom/tds/achievement/ui/ListHeadView;->reachNumberTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/tds/achievement/ui/ListHeadView;->allNumberTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    if-eqz p3, :cond_2a

    .line 125
    iget-object v0, p0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_31

    .line 127
    :cond_2a
    iget-object v0, p0, Lcom/tds/achievement/ui/ListHeadView;->reachedContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    :goto_31
    return-void
.end method
