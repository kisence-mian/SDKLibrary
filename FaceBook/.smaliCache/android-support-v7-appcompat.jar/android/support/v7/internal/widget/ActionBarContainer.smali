.class public Landroid/support/v7/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-static {}, Landroid/support/v7/internal/VersionUtils;->isAtLeastL()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawableV21;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawableV21;-><init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    goto :goto_14

    :cond_f
    new-instance v0, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawable;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawable;-><init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 61
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    :goto_14
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 66
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundStacked:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 68
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mHeight:I

    .line 70
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getId()I

    move-result v2

    sget v3, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_49

    .line 71
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 72
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundSplit:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_49
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_56

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5f

    :goto_55
    goto :goto_60

    :cond_56
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5f

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5f

    goto :goto_55

    :cond_5f
    const/4 v4, 0x0

    :goto_60
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 78
    return-void
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 241
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 161
    :cond_16
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 164
    :cond_29
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 167
    :cond_3c
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 3

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 173
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 175
    :cond_10
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 176
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 178
    :cond_17
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 179
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 182
    :cond_1e
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 84
    sget v0, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 85
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 199
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 281
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 284
    .local v0, "tabContainer":Landroid/view/View;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 286
    .local v3, "hasTabs":Z
    :goto_13
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_35

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    .line 288
    .local v1, "containerHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 289
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 290
    .local v5, "tabHeight":I
    sub-int v6, v1, v5

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v7, v1, v7

    invoke-virtual {v0, p2, v6, p4, v7}, Landroid/view/View;->layout(IIII)V

    .line 294
    .end local v1    # "containerHeight":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "tabHeight":I
    :cond_35
    const/4 v1, 0x0

    .line 295
    .local v1, "needsInvalidate":Z
    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_4c

    .line 296
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c0

    .line 297
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    const/4 v1, 0x1

    goto/16 :goto_c0

    .line 301
    :cond_4c
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a4

    .line 302
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_76

    .line 303
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a3

    .line 305
    :cond_76
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    if-eqz v4, :cond_9e

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9e

    .line 307
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a3

    .line 310
    :cond_9e
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    :goto_a3
    const/4 v1, 0x1

    .line 314
    :cond_a4
    iput-boolean v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsStacked:Z

    .line 315
    if-eqz v3, :cond_c0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c0

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 318
    const/4 v1, 0x1

    .line 322
    :cond_c0
    :goto_c0
    if-eqz v1, :cond_c5

    .line 323
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 325
    :cond_c5
    return-void
.end method

.method public onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1c

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mHeight:I

    if-ltz v0, :cond_1c

    .line 253
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 256
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_24

    return-void

    .line 260
    :cond_24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 261
    .local v0, "mode":I
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_73

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_73

    .line 264
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 265
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .local v2, "topMarginForTabs":I
    goto :goto_57

    .line 266
    .end local v2    # "topMarginForTabs":I
    :cond_47
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 267
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v2

    .restart local v2    # "topMarginForTabs":I
    goto :goto_57

    .line 269
    .end local v2    # "topMarginForTabs":I
    :cond_56
    const/4 v2, 0x0

    .line 271
    .restart local v2    # "topMarginForTabs":I
    :goto_57
    if-ne v0, v1, :cond_5e

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_61

    :cond_5e
    const v1, 0x7fffffff

    .line 273
    .local v1, "maxHeight":I
    :goto_61
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-direct {p0, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 277
    .end local v1    # "maxHeight":I
    .end local v2    # "topMarginForTabs":I
    :cond_73
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 90
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_d
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 93
    if-eqz p1, :cond_33

    .line 94
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 95
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 96
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    :cond_33
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_47

    :goto_3d
    goto :goto_48

    :cond_3e
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_47

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_47

    goto :goto_3d

    :cond_47
    const/4 v1, 0x0

    :goto_48
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 102
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 103
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_d
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 129
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 130
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 131
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_28

    .line 132
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    :cond_28
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3c

    :goto_31
    const/4 v0, 0x1

    goto :goto_3c

    :cond_33
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3c

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3c

    goto :goto_31

    :cond_3c
    :goto_3c
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 138
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_d
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 111
    if-eqz p1, :cond_37

    .line 112
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    .line 114
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    :cond_37
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4b

    :goto_41
    goto :goto_4c

    :cond_42
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4b

    goto :goto_41

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 120
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 121
    return-void
.end method

.method public setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .registers 4
    .param p1, "tabView"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 212
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 214
    :cond_7
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 215
    if-eqz p1, :cond_1c

    .line 216
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 218
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 219
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 222
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    return-void
.end method

.method public setTransitioning(Z)V
    .registers 3
    .param p1, "isTransitioning"    # Z

    .line 192
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 193
    if-eqz p1, :cond_7

    const/high16 v0, 0x60000

    goto :goto_9

    :cond_7
    const/high16 v0, 0x40000

    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 195
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 144
    .local v1, "isVisible":Z
    :goto_9
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 145
    :cond_10
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 146
    :cond_17
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1e

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 147
    :cond_1e
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/support/v7/view/ActionMode$Callback;

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1e

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_1e

    :cond_10
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1e

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method
