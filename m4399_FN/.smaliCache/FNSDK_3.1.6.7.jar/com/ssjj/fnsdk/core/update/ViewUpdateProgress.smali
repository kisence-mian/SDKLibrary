.class public Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;
.super Lcom/ssjj/fnsdk/core/update/ViewBase;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/ViewBase;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->b()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->a:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->f:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->f:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->f:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b()V
    .registers 8

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->d:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->c:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->d:Landroid/view/View;

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->b:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->e:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->e:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 2

    iget v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->g:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setProgress(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    rsub-int/lit8 v2, v1, 0x64

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v4, v1

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->d:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const v12, -0x262627

    if-nez v1, :cond_63

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v12, v12}, [I

    move-result-object v12

    invoke-direct {v13, v14, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-array v11, v11, [F

    int-to-float v2, v2

    aput v2, v11, v10

    aput v2, v11, v9

    aput v2, v11, v8

    aput v2, v11, v7

    aput v2, v11, v6

    aput v2, v11, v5

    aput v2, v11, v4

    aput v2, v11, v3

    invoke-virtual {v13, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->e:Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f1

    :cond_63
    const/16 v13, 0x64

    if-ne v1, v13, :cond_96

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget v14, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    sget v15, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-array v11, v11, [F

    int-to-float v2, v2

    aput v2, v11, v10

    aput v2, v11, v9

    aput v2, v11, v8

    aput v2, v11, v7

    aput v2, v11, v6

    aput v2, v11, v5

    aput v2, v11, v4

    aput v2, v11, v3

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->d:Landroid/view/View;

    :goto_92
    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f1

    :cond_96
    iget v14, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->g:I

    if-eqz v14, :cond_9c

    if-ne v14, v13, :cond_f1

    :cond_9c
    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget v15, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    sget v12, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    filled-new-array {v15, v12}, [I

    move-result-object v12

    invoke-direct {v13, v14, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-array v12, v11, [F

    int-to-float v2, v2

    aput v2, v12, v10

    aput v2, v12, v9

    const/4 v14, 0x0

    aput v14, v12, v8

    aput v14, v12, v7

    aput v14, v12, v6

    aput v14, v12, v5

    aput v2, v12, v4

    aput v2, v12, v3

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v12, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->d:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v15, -0x262627

    filled-new-array {v15, v15}, [I

    move-result-object v15

    invoke-direct {v12, v13, v15}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-array v11, v11, [F

    aput v14, v11, v10

    aput v14, v11, v9

    aput v2, v11, v8

    aput v2, v11, v7

    aput v2, v11, v6

    aput v2, v11, v5

    aput v14, v11, v4

    aput v14, v11, v3

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->e:Landroid/view/View;

    goto :goto_92

    :cond_f1
    :goto_f1
    iput v1, v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->g:I

    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
