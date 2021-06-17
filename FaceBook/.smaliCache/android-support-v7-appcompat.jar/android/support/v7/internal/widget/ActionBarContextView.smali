.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

.field private mCustomView:Landroid/view/View;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 87
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 90
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_height:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 93
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode_backgroundSplit:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 96
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 100
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 101
    return-void
.end method

.method private finishAnimation()V
    .registers 3

    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 275
    .local v0, "a":Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    if-eqz v0, :cond_a

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 277
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 279
    :cond_a
    return-void
.end method

.method private initTitle()V
    .registers 7

    .line 183
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_53

    .line 184
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 186
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 187
    sget v2, Landroid/support/v7/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 188
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v2, Landroid/support/v7/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 189
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v1, :cond_44

    .line 190
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 192
    :cond_44
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_53

    .line 193
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 197
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_53
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 201
    .local v0, "hasTitle":Z
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 202
    .local v1, "hasSubtitle":Z
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_7a

    const/4 v5, 0x0

    goto :goto_7c

    :cond_7a
    const/16 v5, 0x8

    :goto_7c
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_88

    if-eqz v1, :cond_86

    goto :goto_88

    :cond_86
    const/16 v3, 0x8

    :cond_88
    :goto_88
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_98

    .line 205
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 207
    :cond_98
    return-void
.end method

.method private makeInAnimation()Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .registers 11

    .line 409
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 411
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 412
    .local v0, "buttonAnimator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 413
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 414
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 416
    new-instance v2, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 417
    .local v2, "set":Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 419
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_6a

    .line 420
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 421
    .local v3, "count":I
    if-lez v3, :cond_6a

    .line 422
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_48
    if-ltz v4, :cond_6a

    .line 423
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 424
    .local v6, "child":Landroid/view/View;
    invoke-static {v6, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 425
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 426
    .local v7, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 427
    invoke-virtual {v2, v7}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 422
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 432
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_6a
    return-object v2
.end method

.method private makeOutAnimation()Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .registers 9

    .line 436
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 439
    .local v0, "buttonAnimator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 440
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 441
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 443
    new-instance v1, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 444
    .local v1, "set":Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 446
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_63

    .line 447
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 448
    .local v2, "count":I
    if-lez v2, :cond_63

    .line 449
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    if-gez v3, :cond_63

    .line 450
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 451
    .local v4, "child":Landroid/view/View;
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 452
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 453
    .local v5, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 454
    invoke-virtual {v1, v5}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 449
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 459
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_63
    return-object v1
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .registers 2
    .param p1, "x0"    # I

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .registers 2

    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .registers 3

    .line 258
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 260
    return-void

    .line 262
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_e

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    .line 264
    return-void

    .line 267
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 268
    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 269
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->makeOutAnimation()Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 270
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 271
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .registers 1

    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 320
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 325
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 2

    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .registers 2

    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 303
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 305
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public initForMode(Landroid/support/v7/view/ActionMode;)V
    .registers 9
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .line 210
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_19

    .line 211
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 212
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 213
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_25

    .line 214
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_25

    .line 215
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_26

    .line 214
    :cond_25
    :goto_25
    nop

    .line 218
    :goto_26
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_mode_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "closeButton":Landroid/view/View;
    new-instance v1, Landroid/support/v7/internal/widget/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 226
    .local v1, "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v2, :cond_45

    .line 227
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 229
    :cond_45
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 230
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 232
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 234
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_7e

    .line 235
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 236
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 237
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_be

    .line 241
    :cond_7e
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v6, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 244
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v6, 0x7fffffff

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 246
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 249
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 250
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :goto_be
    iput-boolean v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 255
    return-void
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .registers 2

    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 311
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 313
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .registers 2

    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .registers 2

    .line 544
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .registers 3

    .line 282
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 283
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 284
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 285
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 288
    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 290
    return-void
.end method

.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 514
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 506
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    .line 509
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 510
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 502
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 105
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 106
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_11

    .line 107
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 110
    :cond_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_30

    .line 524
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2d

    .line 526
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 531
    :cond_2d
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 534
    :cond_30
    :goto_30
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 464
    move-object v6, p0

    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    .line 465
    .local v7, "isLayoutRtl":Z
    if-eqz v7, :cond_f

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    .line 466
    .local v0, "x":I
    :goto_13
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v8

    .line 467
    .local v8, "y":I
    sub-int v1, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 469
    .local v9, "contentHeight":I
    iget-object v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/16 v10, 0x8

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_70

    .line 470
    iget-object v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 471
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v7, :cond_3e

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_40

    :cond_3e
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_40
    move v12, v1

    .line 472
    .local v12, "startMargin":I
    if-eqz v7, :cond_46

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_48

    :cond_46
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_48
    move v13, v1

    .line 473
    .local v13, "endMargin":I
    invoke-static {v0, v12, v7}, Landroid/support/v7/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v14

    .line 474
    .end local v0    # "x":I
    .local v14, "x":I
    iget-object v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    move v2, v14

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    .line 475
    invoke-static {v14, v13, v7}, Landroid/support/v7/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v0

    .line 477
    .end local v14    # "x":I
    .restart local v0    # "x":I
    iget-boolean v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v1, :cond_70

    .line 478
    const/4 v1, 0x1

    iput v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 479
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->makeInAnimation()Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v1

    iput-object v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 480
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 481
    const/4 v1, 0x0

    iput-boolean v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 485
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "startMargin":I
    .end local v13    # "endMargin":I
    :cond_70
    move v11, v0

    .end local v0    # "x":I
    .local v11, "x":I
    iget-object v0, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8b

    iget-object v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_8b

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_8b

    .line 486
    iget-object v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    .line 489
    :cond_8b
    iget-object v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_99

    .line 490
    move-object v0, p0

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    .line 493
    :cond_99
    if-eqz v7, :cond_a0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    goto :goto_a7

    :cond_a0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_a7
    move v10, v0

    .line 495
    .end local v11    # "x":I
    .local v10, "x":I
    iget-object v0, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_b9

    .line 496
    iget-object v1, v6, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    xor-int/lit8 v5, v7, 0x1

    move-object v0, p0

    move v2, v10

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v10, v0

    .line 498
    :cond_b9
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 330
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 331
    .local v1, "widthMode":I
    const-string v2, " can only be used "

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_125

    .line 336
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 337
    .local v4, "heightMode":I
    if-eqz v4, :cond_fe

    .line 342
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 344
    .local v2, "contentWidth":I
    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    if-lez v5, :cond_1d

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    goto :goto_21

    :cond_1d
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 347
    .local v5, "maxHeight":I
    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 348
    .local v6, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 349
    .local v7, "availableWidth":I
    sub-int v8, v5, v6

    .line 350
    .local v8, "height":I
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 352
    .local v10, "childSpecHeight":I
    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/4 v12, 0x0

    if-eqz v11, :cond_54

    .line 353
    invoke-virtual {v0, v11, v7, v10, v12}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 354
    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 355
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    sub-int/2addr v7, v13

    .line 358
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_54
    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v11, :cond_66

    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v11}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, v0, :cond_66

    .line 359
    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v11, v7, v10, v12}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 363
    :cond_66
    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_98

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v13, :cond_98

    .line 364
    iget-boolean v13, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v13, :cond_94

    .line 365
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 366
    .local v11, "titleWidthSpec":I
    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 367
    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    .line 368
    .local v13, "titleWidth":I
    if-gt v13, v7, :cond_85

    const/4 v14, 0x1

    goto :goto_86

    :cond_85
    const/4 v14, 0x0

    .line 369
    .local v14, "titleFits":Z
    :goto_86
    if-eqz v14, :cond_89

    .line 370
    sub-int/2addr v7, v13

    .line 372
    :cond_89
    iget-object v15, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_8e

    goto :goto_90

    :cond_8e
    const/16 v12, 0x8

    :goto_90
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    .end local v11    # "titleWidthSpec":I
    .end local v13    # "titleWidth":I
    .end local v14    # "titleFits":Z
    goto :goto_98

    .line 374
    :cond_94
    invoke-virtual {v0, v11, v7, v10, v12}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 378
    :cond_98
    :goto_98
    iget-object v11, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v11, :cond_d9

    .line 379
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 380
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_a8

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_aa

    :cond_a8
    const/high16 v12, -0x80000000

    .line 382
    .local v12, "customWidthMode":I
    :goto_aa
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v14, :cond_b5

    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_b6

    :cond_b5
    move v14, v7

    .line 384
    .local v14, "customWidth":I
    :goto_b6
    iget v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v15, v13, :cond_bb

    goto :goto_bd

    :cond_bb
    const/high16 v3, -0x80000000

    .line 386
    .local v3, "customHeightMode":I
    :goto_bd
    iget v9, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v9, :cond_c8

    iget v9, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_c9

    :cond_c8
    move v9, v8

    .line 388
    .local v9, "customHeight":I
    :goto_c9
    iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .local v16, "widthMode":I
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v13, v15, v1}, Landroid/view/View;->measure(II)V

    goto :goto_db

    .line 378
    .end local v3    # "customHeightMode":I
    .end local v9    # "customHeight":I
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "customWidthMode":I
    .end local v14    # "customWidth":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_d9
    move/from16 v16, v1

    .line 392
    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    :goto_db
    iget v1, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    if-gtz v1, :cond_fa

    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    .line 395
    .local v3, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e5
    if-ge v9, v3, :cond_f6

    .line 396
    invoke-virtual {v0, v9}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 397
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    .line 398
    .local v12, "paddedViewHeight":I
    if-le v12, v1, :cond_f3

    .line 399
    move v1, v12

    .line 395
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "paddedViewHeight":I
    :cond_f3
    add-int/lit8 v9, v9, 0x1

    goto :goto_e5

    .line 402
    .end local v9    # "i":I
    :cond_f6
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 403
    .end local v1    # "measuredHeight":I
    .end local v3    # "count":I
    goto :goto_fd

    .line 404
    :cond_fa
    invoke-virtual {v0, v2, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 406
    :goto_fd
    return-void

    .line 338
    .end local v2    # "contentWidth":I
    .end local v5    # "maxHeight":I
    .end local v6    # "verticalPadding":I
    .end local v7    # "availableWidth":I
    .end local v8    # "height":I
    .end local v10    # "childSpecHeight":I
    .end local v16    # "widthMode":I
    .local v1, "widthMode":I
    :cond_fe
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    .end local v4    # "heightMode":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_125
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_14d

    :goto_14c
    throw v1

    :goto_14d
    goto :goto_14c
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .registers 1

    .line 45
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 146
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 147
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 150
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 151
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 153
    :cond_7
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 154
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    .line 155
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 158
    :cond_13
    if-eqz p1, :cond_18

    .line 159
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 161
    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 162
    return-void
.end method

.method public setSplitToolbar(Z)V
    .registers 7
    .param p1, "split"    # Z

    .line 114
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_82

    .line 115
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7f

    .line 117
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 119
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_36

    .line 120
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 121
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 123
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_30

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 124
    :cond_30
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    goto :goto_7f

    .line 127
    :cond_36
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 130
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 132
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 135
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 137
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_78

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_78
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_7f
    :goto_7f
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 143
    :cond_82
    return-void
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/ViewGroup;

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 170
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 171
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initTitle()V

    .line 172
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 165
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 166
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initTitle()V

    .line 167
    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3
    .param p1, "titleOptional"    # Z

    .line 537
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_7

    .line 538
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 540
    :cond_7
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 541
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 294
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 295
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 297
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
