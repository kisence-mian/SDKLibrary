.class Lcom/tds/achievement/ui/DetailDialog;
.super Ljava/lang/Object;
.source "DetailDialog.java"


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;Landroid/util/Pair;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "source"    # Lcom/tds/achievement/TapAchievementBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tds/achievement/TapAchievementBean;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p3, "status":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/tds/achievement/ui/DetailDialog;->initLayout(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;Landroid/util/Pair;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/tds/achievement/ui/DetailDialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/DetailDialog;

    .line 29
    iget-object v0, p0, Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static fixHoloDialogBlueLine(Landroid/app/Dialog;)V
    .registers 5
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 318
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 319
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:id/titleDivider"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 321
    .local v1, "dividerID":I
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 322
    .local v2, "divider":Landroid/view/View;
    if-eqz v2, :cond_19

    .line 323
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 327
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dividerID":I
    .end local v2    # "divider":Landroid/view/View;
    :cond_19
    goto :goto_1e

    .line 325
    :catch_1a
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method private initLayout(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;Landroid/util/Pair;)V
    .registers 24
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "source"    # Lcom/tds/achievement/TapAchievementBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tds/achievement/TapAchievementBean;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p3, "status":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v3, "root":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43
    .local v4, "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    sget v5, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 44
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v8, "headRoot":Landroid/widget/LinearLayout;
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    .line 53
    const/high16 v11, 0x42880000    # 68.0f

    invoke-static {v10, v11}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    invoke-direct {v9, v5, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 57
    .local v9, "headBG":Landroid/graphics/drawable/GradientDrawable;
    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v10, v6}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    .line 58
    .local v6, "dp16":I
    const/16 v10, 0x8

    new-array v10, v10, [F

    int-to-float v11, v6

    const/4 v12, 0x0

    aput v11, v10, v12

    int-to-float v11, v6

    aput v11, v10, v7

    int-to-float v11, v6

    const/4 v13, 0x2

    aput v11, v10, v13

    int-to-float v11, v6

    const/4 v14, 0x3

    aput v11, v10, v14

    const/4 v11, 0x4

    const/4 v14, 0x0

    aput v14, v10, v11

    const/4 v15, 0x5

    aput v14, v10, v15

    const/4 v15, 0x6

    aput v14, v10, v15

    const/4 v15, 0x7

    aput v14, v10, v15

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 59
    const v10, -0x50506

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    new-instance v10, Lcom/tds/common/widgets/image/TdsRoundImageView;

    invoke-direct {v10, v1}, Lcom/tds/common/widgets/image/TdsRoundImageView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v10, "iconImage":Lcom/tds/common/widgets/image/TdsRoundImageView;
    sget v14, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v15, 0x42400000    # 48.0f

    invoke-static {v14, v15}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v14

    .line 64
    .local v14, "iconSize":I
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v15, "iconImageLP":Landroid/widget/LinearLayout$LayoutParams;
    sget v11, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v11, v13}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v11

    .line 66
    .local v11, "dp10":I
    invoke-virtual {v15, v11, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    invoke-virtual {v10, v15}, Lcom/tds/common/widgets/image/TdsRoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    sget v13, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v13, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/tds/common/widgets/image/TdsRoundImageView;->setCornerRadius(I)V

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/tds/common/utils/UIUtils;->getPackageIconDrawable(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/tds/common/widgets/image/TdsRoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    .end local v10    # "iconImage":Lcom/tds/common/widgets/image/TdsRoundImageView;
    .end local v11    # "dp10":I
    .end local v14    # "iconSize":I
    .end local v15    # "iconImageLP":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v10, "titleRoot":Landroid/widget/LinearLayout;
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, -0x1

    invoke-direct {v11, v12, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 77
    .local v11, "titleRootLP":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v14, 0x10

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v14, "nameText":Landroid/widget/TextView;
    const/high16 v15, -0x1000000

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    invoke-static/range {p1 .. p1}, Lcom/tds/common/utils/UIUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v15, "statusText":Landroid/widget/TextView;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v13, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v13, "subTitleLP":Landroid/widget/LinearLayout$LayoutParams;
    sget v5, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v5, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 91
    const v5, -0x666667

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    const-string v5, "tds_achievement_string_dialog_status"

    invoke-static {v1, v5}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v4

    const/4 v7, 0x2

    .end local v4    # "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    .local v19, "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v7, v4, v12

    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/16 v18, 0x1

    aput-object v7, v4, v18

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    .end local v10    # "titleRoot":Landroid/widget/LinearLayout;
    .end local v11    # "titleRootLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "subTitleLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "nameText":Landroid/widget/TextView;
    .end local v15    # "statusText":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v4, "closeImage":Landroid/widget/ImageView;
    const-string v5, "ic_achievement_close"

    invoke-static {v1, v5}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    sget v5, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v5, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    .line 103
    .local v5, "dp11":I
    sget v7, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v7, v10}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    .line 104
    .local v7, "dp12":I
    invoke-virtual {v4, v7, v5, v7, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 105
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    sget v11, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v13, 0x42300000    # 44.0f

    invoke-static {v11, v13}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v11

    sget v13, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    .line 106
    const/high16 v14, 0x42280000    # 42.0f

    invoke-static {v13, v14}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v13

    invoke-direct {v10, v11, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v10, Lcom/tds/achievement/ui/DetailDialog$1;

    invoke-direct {v10, v0}, Lcom/tds/achievement/ui/DetailDialog$1;-><init>(Lcom/tds/achievement/ui/DetailDialog;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    .end local v4    # "closeImage":Landroid/widget/ImageView;
    .end local v5    # "dp11":I
    .end local v7    # "dp12":I
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    .end local v6    # "dp16":I
    .end local v8    # "headRoot":Landroid/widget/LinearLayout;
    .end local v9    # "headBG":Landroid/graphics/drawable/GradientDrawable;
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 122
    .local v4, "divider":Landroid/view/View;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    .line 123
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    const v5, -0x111112

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    .end local v4    # "divider":Landroid/view/View;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v4, "scrollContainer":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v5, "scrollLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 134
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v6, "scrollView":Landroid/widget/ScrollView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v6, v12}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 141
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 143
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .local v7, "scrollLinearLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 145
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 146
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .local v8, "iconRoot":Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v9, v11

    .line 153
    .local v9, "iconRootLP":Landroid/widget/LinearLayout$LayoutParams;
    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v11, 0x41300000    # 11.0f

    invoke-static {v10, v11}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 154
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 157
    new-instance v11, Lcom/tds/achievement/ui/ItemIconView;

    invoke-direct {v11, v1, v10}, Lcom/tds/achievement/ui/ItemIconView;-><init>(Landroid/content/Context;Z)V

    move-object v10, v11

    .line 158
    .local v10, "iconView":Lcom/tds/achievement/ui/ItemIconView;
    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Lcom/tds/achievement/ui/ItemIconView;->setData(Lcom/tds/achievement/TapAchievementBean;)V

    .line 160
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    .end local v8    # "iconRoot":Landroid/widget/LinearLayout;
    .end local v9    # "iconRootLP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "iconView":Lcom/tds/achievement/ui/ItemIconView;
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 166
    .local v8, "percentText":Landroid/widget/TextView;
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v9, "percentTextLP":Landroid/widget/LinearLayout$LayoutParams;
    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v13, 0x41880000    # 17.0f

    invoke-static {v10, v13}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 172
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->getStats()Lcom/tds/achievement/AchievementStats;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tds/achievement/AchievementStats;->getRarity()F

    move-result v10

    float-to-double v13, v10

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v10, v13, v16

    if-gez v10, :cond_232

    .line 174
    nop

    .line 175
    const-string v10, "tds_achievement_string_dialog_percent_low"

    invoke-static {v1, v10}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_254

    .line 177
    :cond_232
    nop

    .line 178
    const-string v10, "tds_achievement_string_dialog_percent"

    invoke-static {v1, v10}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->getStats()Lcom/tds/achievement/AchievementStats;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tds/achievement/AchievementStats;->getRarity()F

    move-result v13

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v13, v15

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v14, v12

    .line 178
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 177
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_254
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v10

    if-nez v10, :cond_267

    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->isVisible()Z

    move-result v10

    if-nez v10, :cond_267

    .line 183
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    .end local v8    # "percentText":Landroid/widget/TextView;
    .end local v9    # "percentTextLP":Landroid/widget/LinearLayout$LayoutParams;
    :cond_267
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 189
    .local v8, "titleText":Landroid/widget/TextView;
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 193
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v10, v13}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    .line 197
    .local v10, "dp20":I
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 198
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 200
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    const/16 v13, 0x11

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v14

    if-nez v14, :cond_2ae

    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->isVisible()Z

    move-result v14

    if-nez v14, :cond_2ae

    .line 203
    nop

    .line 204
    const-string v14, "tds_achievement_string_invisible_title"

    invoke-static {v1, v14}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b5

    .line 206
    :cond_2ae
    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_2b5
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    .end local v8    # "titleText":Landroid/widget/TextView;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "dp20":I
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 213
    .local v8, "subTitleText":Landroid/widget/TextView;
    const v9, -0x666667

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 216
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v10, v14}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 220
    sget v10, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static {v10, v14}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    .line 221
    .local v10, "dp10":I
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 222
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 223
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 224
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v14

    if-nez v14, :cond_303

    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->isVisible()Z

    move-result v14

    if-nez v14, :cond_303

    .line 227
    nop

    .line 228
    const-string v14, "tds_achievement_string_invisible_subtitle"

    invoke-static {v1, v14}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30a

    .line 230
    :cond_303
    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->getSubTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_30a
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    .end local v8    # "subTitleText":Landroid/widget/TextView;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "dp10":I
    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 236
    .end local v7    # "scrollLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 239
    .end local v6    # "scrollView":Landroid/widget/ScrollView;
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 240
    .local v6, "gradientView":Landroid/view/View;
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 241
    .local v7, "bg":Landroid/graphics/drawable/GradientDrawable;
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 242
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_41e

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 243
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 244
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    sget v9, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    .line 245
    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v9, v10}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v9

    const/4 v10, -0x1

    invoke-direct {v8, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x50

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 251
    .end local v6    # "gradientView":Landroid/view/View;
    .end local v7    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    .end local v4    # "scrollContainer":Landroid/widget/FrameLayout;
    .end local v5    # "scrollLp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 256
    .local v4, "dateText":Landroid/widget/TextView;
    const v5, -0x373738

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 261
    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 262
    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 263
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v6

    if-eqz v6, :cond_3d0

    .line 267
    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getPreferredLanguageString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "zh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_395

    .line 268
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v8, "yyyy.MM.dd"

    invoke-direct {v6, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_39e

    .line 270
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_395
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "MMM d, yyyy"

    invoke-direct {v6, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 272
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_39e
    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/tds/achievement/TapAchievementBean;->getReachedTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "dateStr":Ljava/lang/String;
    const-string v8, "tds_achievement_string_dialog_earned_date"

    invoke-static {v1, v8}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v12

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "dateStr":Ljava/lang/String;
    :cond_3d0
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    .end local v4    # "dateText":Landroid/widget/TextView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 281
    .local v4, "dialogRoot":Landroid/widget/FrameLayout;
    invoke-static/range {p1 .. p1}, Lcom/tds/common/utils/UIUtils;->getWindowShortLength(Landroid/app/Activity;)I

    move-result v5

    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    sub-int/2addr v5, v6

    .line 282
    .local v5, "rootSize":I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 283
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 284
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 287
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;

    .line 289
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 290
    iget-object v7, v0, Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v7, v0, Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 292
    iget-object v7, v0, Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;

    invoke-static {v7}, Lcom/tds/achievement/ui/DetailDialog;->fixHoloDialogBlueLine(Landroid/app/Dialog;)V

    .line 293
    return-void

    :array_41e
    .array-data 4
        0xffffff
        -0x1
    .end array-data
.end method


# virtual methods
.method public getWindow()Landroid/view/Window;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 303
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0

    .line 305
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public isShowing()Z
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 310
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    .line 312
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    .line 297
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 299
    :cond_7
    return-void
.end method
