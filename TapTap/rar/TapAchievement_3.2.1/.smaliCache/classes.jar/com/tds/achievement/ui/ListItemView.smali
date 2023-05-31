.class Lcom/tds/achievement/ui/ListItemView;
.super Landroid/widget/FrameLayout;
.source "ListItemView.java"


# static fields
.field public static final ITEM_POSITION_BOTTOM_LEFT:I = 0x2

.field public static final ITEM_POSITION_BOTTOM_LEFT_RIGHT:I = 0x9

.field public static final ITEM_POSITION_BOTTOM_RIGHT:I = 0x3

.field public static final ITEM_POSITION_CENTER_BOTTOM:I = 0xb

.field public static final ITEM_POSITION_CENTER_LEFT:I = 0x4

.field public static final ITEM_POSITION_CENTER_RIGHT:I = 0x5

.field public static final ITEM_POSITION_CENTER_TOP:I = 0xa

.field public static final ITEM_POSITION_TOP_BOTTOM_LEFT:I = 0x6

.field public static final ITEM_POSITION_TOP_BOTTOM_RIGHT:I = 0x7

.field public static final ITEM_POSITION_TOP_LEFT:I = 0x0

.field public static final ITEM_POSITION_TOP_LEFT_RIGHT:I = 0x8

.field public static final ITEM_POSITION_TOP_RIGHT:I = 0x1


# instance fields
.field descText:Landroid/widget/TextView;

.field iconView:Lcom/tds/achievement/ui/ItemIconView;

.field titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/achievement/ui/ListItemView;->initLayout(Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLandscape"    # Z

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p2}, Lcom/tds/achievement/ui/ListItemView;->initLayout(Z)V

    .line 43
    return-void
.end method

.method private initLayout(Z)V
    .registers 16
    .param p1, "isLandscape"    # Z

    .line 46
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListItemView;->removeAllViews()V

    .line 47
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/tds/common/utils/UIUtils;->getWindowShortLength(Landroid/app/Activity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 49
    .local v0, "cardSize":I
    const/4 v2, -0x1

    if-eqz p1, :cond_1d

    .line 50
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/tds/achievement/ui/ListItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_25

    .line 52
    :cond_1d
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/tds/achievement/ui/ListItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    :goto_25
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v3, "cardRoot":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 58
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ic_achievement_card_bg"

    invoke-static {v5, v6}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 63
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    .local v5, "iconRoot":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    sget v7, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v8, 0x42d80000    # 108.0f

    .line 65
    invoke-static {v7, v8}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    invoke-direct {v6, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v6, "iconRootLp":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v7, v8}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    .line 67
    .local v7, "dp6":I
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 68
    sget v8, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v8, v9}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v8

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 69
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 70
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 71
    new-instance v8, Lcom/tds/achievement/ui/ItemIconView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/tds/achievement/ui/ItemIconView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/tds/achievement/ui/ListItemView;->iconView:Lcom/tds/achievement/ui/ItemIconView;

    .line 73
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v8, p0, Lcom/tds/achievement/ui/ListItemView;->iconView:Lcom/tds/achievement/ui/ItemIconView;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    .line 79
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v8, p0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    iget-object v8, p0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v8, "titleLP":Landroid/widget/LinearLayout$LayoutParams;
    sget v11, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v11, v9}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v11

    .line 85
    .local v11, "dp9":I
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 86
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 87
    sget v12, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v12, v13}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 88
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 89
    iget-object v12, p0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v12, p0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 91
    iget-object v12, p0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    .end local v8    # "titleLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "dp9":I
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    .line 96
    const v11, -0x666667

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v8, p0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v8

    .line 100
    .local v2, "descLP":Landroid/widget/LinearLayout$LayoutParams;
    sget v8, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v8, v9}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v8

    .line 101
    .local v8, "dp9":I
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 102
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 103
    sget v9, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v9, v10}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 104
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 105
    iget-object v4, p0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v4, p0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    iget-object v4, p0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 108
    iget-object v1, p0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 111
    .end local v2    # "descLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "dp9":I
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v1, p0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/tds/achievement/ui/ListItemView;->addView(Landroid/view/View;)V

    .line 116
    return-void
.end method


# virtual methods
.method public setSourceBean(Lcom/tds/achievement/TapAchievementBean;I)V
    .registers 20
    .param p1, "source"    # Lcom/tds/achievement/TapAchievementBean;
    .param p2, "positionType"    # I

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v2

    .line 120
    .local v2, "padding":I
    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    .line 121
    .local v3, "padding6":I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 122
    .local v4, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const v5, -0xd0d0e

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 124
    sget v5, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    .line 125
    .local v5, "dp10":I
    const/16 v6, 0x8

    new-array v7, v6, [F

    fill-array-data v7, :array_198

    .line 126
    .local v7, "radii":[F
    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    packed-switch p2, :pswitch_data_17c

    goto/16 :goto_130

    .line 153
    :pswitch_3d
    invoke-virtual {v0, v15, v15, v15, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 154
    goto/16 :goto_130

    .line 150
    :pswitch_42
    invoke-virtual {v0, v15, v3, v15, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 151
    goto/16 :goto_130

    .line 168
    :pswitch_47
    invoke-virtual {v0, v2, v15, v2, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 169
    new-array v6, v6, [F

    aput v16, v6, v15

    aput v16, v6, v13

    aput v16, v6, v14

    aput v16, v6, v12

    int-to-float v12, v5

    aput v12, v6, v11

    int-to-float v11, v5

    aput v11, v6, v10

    int-to-float v10, v5

    aput v10, v6, v9

    int-to-float v9, v5

    aput v9, v6, v8

    move-object v7, v6

    goto/16 :goto_130

    .line 164
    :pswitch_63
    mul-int/lit8 v8, v2, 0x2

    invoke-virtual {v0, v2, v8, v2, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 165
    new-array v6, v6, [F

    int-to-float v8, v5

    aput v8, v6, v15

    int-to-float v8, v5

    aput v8, v6, v13

    int-to-float v8, v5

    aput v8, v6, v14

    int-to-float v8, v5

    aput v8, v6, v12

    aput v16, v6, v11

    aput v16, v6, v10

    aput v16, v6, v9

    const/4 v8, 0x7

    aput v16, v6, v8

    move-object v7, v6

    .line 166
    goto/16 :goto_130

    .line 160
    :pswitch_82
    mul-int/lit8 v8, v2, 0x2

    invoke-virtual {v0, v15, v8, v2, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 161
    new-array v6, v6, [F

    aput v16, v6, v15

    aput v16, v6, v13

    int-to-float v8, v5

    aput v8, v6, v14

    int-to-float v8, v5

    aput v8, v6, v12

    int-to-float v8, v5

    aput v8, v6, v11

    int-to-float v8, v5

    aput v8, v6, v10

    aput v16, v6, v9

    const/4 v8, 0x7

    aput v16, v6, v8

    move-object v7, v6

    .line 162
    goto/16 :goto_130

    .line 156
    :pswitch_a1
    mul-int/lit8 v8, v2, 0x2

    invoke-virtual {v0, v2, v8, v15, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 157
    new-array v6, v6, [F

    int-to-float v8, v5

    aput v8, v6, v15

    int-to-float v8, v5

    aput v8, v6, v13

    aput v16, v6, v14

    aput v16, v6, v12

    aput v16, v6, v11

    aput v16, v6, v10

    int-to-float v8, v5

    aput v8, v6, v9

    int-to-float v8, v5

    const/4 v9, 0x7

    aput v8, v6, v9

    move-object v7, v6

    .line 158
    goto/16 :goto_130

    .line 147
    :pswitch_c0
    invoke-virtual {v0, v15, v15, v2, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 148
    goto :goto_130

    .line 144
    :pswitch_c4
    invoke-virtual {v0, v2, v15, v15, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 145
    goto :goto_130

    .line 140
    :pswitch_c8
    invoke-virtual {v0, v15, v15, v2, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 141
    new-array v6, v6, [F

    aput v16, v6, v15

    aput v16, v6, v13

    aput v16, v6, v14

    aput v16, v6, v12

    int-to-float v8, v5

    aput v8, v6, v11

    int-to-float v8, v5

    aput v8, v6, v10

    aput v16, v6, v9

    const/4 v8, 0x7

    aput v16, v6, v8

    move-object v7, v6

    .line 142
    goto :goto_130

    .line 136
    :pswitch_e2
    invoke-virtual {v0, v2, v15, v15, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 137
    new-array v6, v6, [F

    aput v16, v6, v15

    aput v16, v6, v13

    aput v16, v6, v14

    aput v16, v6, v12

    aput v16, v6, v11

    aput v16, v6, v10

    int-to-float v8, v5

    aput v8, v6, v9

    int-to-float v8, v5

    const/4 v9, 0x7

    aput v8, v6, v9

    move-object v7, v6

    .line 138
    goto :goto_130

    .line 132
    :pswitch_fc
    invoke-virtual {v0, v15, v3, v2, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 133
    new-array v6, v6, [F

    aput v16, v6, v15

    aput v16, v6, v13

    int-to-float v8, v5

    aput v8, v6, v14

    int-to-float v8, v5

    aput v8, v6, v12

    aput v16, v6, v11

    aput v16, v6, v10

    aput v16, v6, v9

    const/4 v8, 0x7

    aput v16, v6, v8

    move-object v7, v6

    .line 134
    goto :goto_130

    .line 128
    :pswitch_116
    invoke-virtual {v0, v2, v3, v15, v15}, Lcom/tds/achievement/ui/ListItemView;->setPadding(IIII)V

    .line 129
    new-array v6, v6, [F

    int-to-float v8, v5

    aput v8, v6, v15

    int-to-float v8, v5

    aput v8, v6, v13

    aput v16, v6, v14

    aput v16, v6, v12

    aput v16, v6, v11

    aput v16, v6, v10

    aput v16, v6, v9

    const/4 v8, 0x7

    aput v16, v6, v8

    move-object v7, v6

    .line 130
    nop

    .line 173
    :goto_130
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 174
    invoke-virtual {v0, v4}, Lcom/tds/achievement/ui/ListItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    if-eqz v1, :cond_17a

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v6

    if-nez v6, :cond_163

    invoke-virtual/range {p1 .. p1}, Lcom/tds/achievement/TapAchievementBean;->isVisible()Z

    move-result v6

    if-nez v6, :cond_163

    .line 177
    iget-object v6, v0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "tds_achievement_string_invisible_title"

    invoke-static {v8, v9}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v6, v0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/tds/achievement/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "tds_achievement_string_invisible_subtitle"

    invoke-static {v8, v9}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_175

    .line 182
    :cond_163
    iget-object v6, v0, Lcom/tds/achievement/ui/ListItemView;->titleText:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/tds/achievement/TapAchievementBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v6, v0, Lcom/tds/achievement/ui/ListItemView;->descText:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/tds/achievement/TapAchievementBean;->getSubTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_175
    iget-object v6, v0, Lcom/tds/achievement/ui/ListItemView;->iconView:Lcom/tds/achievement/ui/ItemIconView;

    invoke-virtual {v6, v1}, Lcom/tds/achievement/ui/ItemIconView;->setData(Lcom/tds/achievement/TapAchievementBean;)V

    .line 187
    :cond_17a
    return-void

    nop

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_116
        :pswitch_fc
        :pswitch_e2
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_a1
        :pswitch_82
        :pswitch_63
        :pswitch_47
        :pswitch_42
        :pswitch_3d
    .end packed-switch

    :array_198
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
