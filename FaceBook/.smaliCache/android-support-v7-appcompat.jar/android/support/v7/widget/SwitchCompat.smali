.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_APPEARANCE_ATTRS:[I

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/view/animation/Animation;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [I

    const v1, 0x1010098

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x1010095

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$attr;->textAllCaps:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->TEXT_APPEARANCE_ATTRS:[I

    .line 150
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 171
    sget v0, Landroid/support/v7/appcompat/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 187
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/text/TextPaint;->density:F

    .line 192
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat:[I

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, p3, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v2

    .line 194
    .local v2, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    sget v4, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    invoke-virtual {v2, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    sget v4, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_track:I

    invoke-virtual {v2, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    sget v4, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    invoke-virtual {v2, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 197
    sget v4, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    invoke-virtual {v2, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 198
    sget v4, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_showText:I

    invoke-virtual {v2, v4, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 199
    sget v1, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 201
    sget v1, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 203
    sget v1, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 205
    sget v1, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 207
    sget v1, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 209
    .local v1, "appearance":I
    if-eqz v1, :cond_80

    .line 210
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 213
    :cond_80
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    .line 215
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 217
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 218
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    .line 219
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 222
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V

    .line 223
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 224
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SwitchCompat;F)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/SwitchCompat;
    .param p1, "x1"    # F

    .line 71
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 8
    .param p1, "newCheckedState"    # Z

    .line 706
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 707
    .local v0, "startPosition":F
    if-eqz p1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 708
    .local v1, "targetPosition":F
    :goto_8
    sub-float v2, v1, v0

    .line 710
    .local v2, "diff":F
    new-instance v3, Landroid/support/v7/widget/SwitchCompat$1;

    invoke-direct {v3, p0, v0, v2}, Landroid/support/v7/widget/SwitchCompat$1;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    .line 716
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 717
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SwitchCompat;->startAnimation(Landroid/view/animation/Animation;)V

    .line 718
    return-void
.end method

.method private cancelPositionAnimator()V
    .registers 2

    .line 721
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 722
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    .line 725
    :cond_a
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 671
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 672
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 673
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 674
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 675
    return-void
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 1060
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method private getTargetCheckedState()Z
    .registers 3

    .line 728
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private getThumbOffset()I
    .registers 4

    .line 947
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 948
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    sub-float/2addr v0, v1

    .local v0, "thumbPosition":F
    goto :goto_e

    .line 950
    .end local v0    # "thumbPosition":F
    :cond_c
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 952
    .restart local v0    # "thumbPosition":F
    :goto_e
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getThumbScrollRange()I
    .registers 4

    .line 956
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 957
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 958
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 959
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    return v0

    .line 961
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 580
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    .line 582
    .local v0, "thumbOffset":I
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 583
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v1, v2

    .line 584
    .local v1, "thumbTop":I
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 585
    .local v3, "thumbLeft":I
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v2, v4

    .line 587
    .local v2, "thumbRight":I
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    add-int/2addr v5, v4

    .line 588
    .local v5, "thumbBottom":I
    int-to-float v4, v3

    cmpl-float v4, p1, v4

    if-lez v4, :cond_3d

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_3d

    int-to-float v4, v1

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3d

    int-to-float v4, v5

    cmpg-float v4, p2, v4

    if-gez v4, :cond_3d

    const/4 v4, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    return v4
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p1

    .line 570
    .local v0, "transformed":Ljava/lang/CharSequence;
    :goto_a
    new-instance v9, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v4, v1

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v9
.end method

.method private setThumbPosition(F)V
    .registers 2
    .param p1, "position"    # F

    .line 737
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 738
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 739
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 689
    .local v1, "commitChange":Z
    :goto_13
    if-eqz v1, :cond_44

    .line 690
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 691
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 692
    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3f

    .line 693
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_39

    cmpg-float v4, v3, v5

    if-gez v4, :cond_3e

    goto :goto_3d

    :cond_39
    cmpl-float v4, v3, v5

    if-lez v4, :cond_3e

    :goto_3d
    const/4 v0, 0x1

    .local v0, "newState":Z
    :cond_3e
    goto :goto_43

    .line 695
    .end local v0    # "newState":Z
    :cond_3f
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v0

    .line 697
    .end local v3    # "xvel":F
    .restart local v0    # "newState":Z
    :goto_43
    goto :goto_48

    .line 698
    .end local v0    # "newState":Z
    :cond_44
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    .line 701
    .restart local v0    # "newState":Z
    :goto_48
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 702
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 703
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 821
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 822
    .local v1, "switchLeft":I
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 823
    .local v2, "switchTop":I
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    .line 824
    .local v3, "switchRight":I
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 826
    .local v4, "switchBottom":I
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 829
    .local v5, "thumbInitialLeft":I
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_22

    .line 830
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 833
    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    .line 836
    move v6, v1

    .line 837
    .local v6, "trackLeft":I
    move v7, v2

    .line 838
    .local v7, "trackTop":I
    move v8, v3

    .line 839
    .local v8, "trackRight":I
    move v9, v4

    .line 840
    .local v9, "trackBottom":I
    iget-object v10, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 844
    .end local v6    # "trackLeft":I
    .end local v7    # "trackTop":I
    .end local v8    # "trackRight":I
    .end local v9    # "trackBottom":I
    :cond_22
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_41

    .line 845
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 847
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v5, v6

    .line 848
    .local v6, "thumbLeft":I
    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v7, v5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 849
    .local v7, "thumbRight":I
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v2, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 851
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 852
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_41

    .line 853
    invoke-static {v8, v6, v2, v7, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 859
    .end local v6    # "thumbLeft":I
    .end local v7    # "thumbRight":I
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_41
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 860
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 993
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 996
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 999
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 1000
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1002
    :cond_11
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 976
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 978
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 980
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 981
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 984
    :cond_e
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_15

    .line 985
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 988
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 989
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 917
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 918
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 920
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 921
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 922
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 924
    :cond_1f
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .line 929
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 930
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 932
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 933
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 934
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 936
    :cond_1f
    return v0
.end method

.method public getShowText()Z
    .registers 2

    .line 488
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .registers 2

    .line 342
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    .line 321
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .line 446
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    .line 361
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 3

    .line 1011
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2f

    .line 1012
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1014
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 1015
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1018
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 1019
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1022
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1024
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    .line 1028
    :cond_2f
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 967
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 968
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 969
    sget-object v1, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    .line 971
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 864
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 866
    iget-object v2, v0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 867
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, v0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 868
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_11

    .line 869
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_14

    .line 871
    :cond_11
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 874
    :goto_14
    iget v4, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 875
    .local v4, "switchTop":I
    iget v5, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 876
    .local v5, "switchBottom":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 877
    .local v6, "switchInnerTop":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v5, v7

    .line 879
    .local v7, "switchInnerBottom":I
    iget-object v8, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 880
    .local v8, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_26

    .line 881
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 884
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 886
    .local v9, "saveCount":I
    if-eqz v8, :cond_2f

    .line 887
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 890
    :cond_2f
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v10

    if-eqz v10, :cond_38

    iget-object v10, v0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    goto :goto_3a

    :cond_38
    iget-object v10, v0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 891
    .local v10, "switchText":Landroid/text/Layout;
    :goto_3a
    if-eqz v10, :cond_7e

    .line 892
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v11

    .line 893
    .local v11, "drawableState":[I
    iget-object v12, v0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_4e

    .line 894
    iget-object v13, v0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 896
    :cond_4e
    iget-object v12, v0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    iput-object v11, v12, Landroid/text/TextPaint;->drawableState:[I

    .line 899
    if-eqz v8, :cond_5e

    .line 900
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 901
    .local v12, "bounds":Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    .line 902
    .end local v12    # "bounds":Landroid/graphics/Rect;
    .local v13, "cX":I
    goto :goto_62

    .line 903
    .end local v13    # "cX":I
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v13

    .line 906
    .restart local v13    # "cX":I
    :goto_62
    div-int/lit8 v12, v13, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v12, v14

    .line 907
    .local v12, "left":I
    add-int v14, v6, v7

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 908
    .local v14, "top":I
    int-to-float v15, v12

    int-to-float v0, v14

    invoke-virtual {v1, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 909
    invoke-virtual {v10, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 912
    .end local v11    # "drawableState":[I
    .end local v12    # "left":I
    .end local v13    # "cX":I
    .end local v14    # "top":I
    :cond_7e
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 913
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1033
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1034
    const-class v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1035
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_46

    .line 1040
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1041
    const-class v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1042
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_1d

    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 1043
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1044
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1045
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46

    .line 1048
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    .end local v0    # "switchText":Ljava/lang/CharSequence;
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_46
    :goto_46
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 765
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "opticalInsetLeft":I
    const/4 v1, 0x0

    .line 769
    .local v1, "opticalInsetRight":I
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_18

    .line 770
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 771
    .local v2, "trackPadding":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_13

    .line 772
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_16

    .line 774
    :cond_13
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 777
    :goto_16
    const/4 v0, 0x0

    .line 778
    const/4 v1, 0x0

    .line 783
    .end local v2    # "trackPadding":Landroid/graphics/Rect;
    :cond_18
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 784
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 785
    .local v2, "switchLeft":I
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .local v3, "switchRight":I
    goto :goto_3a

    .line 787
    .end local v2    # "switchLeft":I
    .end local v3    # "switchRight":I
    :cond_29
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v2, v1

    .line 788
    .restart local v3    # "switchRight":I
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    sub-int v2, v3, v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 793
    .restart local v2    # "switchLeft":I
    :goto_3a
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_80

    .line 796
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v4

    .line 797
    .local v4, "switchTop":I
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    add-int v6, v4, v5

    .line 798
    .local v6, "switchBottom":I
    goto :goto_76

    .line 793
    .end local v4    # "switchTop":I
    .end local v6    # "switchBottom":I
    :sswitch_4d
    move v4, v5

    .line 807
    .local v4, "switchBottom":I
    .local v5, "switchTop":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 808
    .end local v4    # "switchBottom":I
    .restart local v6    # "switchBottom":I
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    sub-int v4, v6, v4

    .end local v5    # "switchTop":I
    .local v4, "switchTop":I
    goto :goto_76

    .line 793
    .end local v4    # "switchTop":I
    .end local v6    # "switchBottom":I
    :sswitch_5c
    move v4, v5

    .line 801
    .local v4, "switchBottom":I
    .restart local v5    # "switchTop":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    div-int/lit8 v8, v7, 0x2

    sub-int v5, v6, v8

    .line 803
    add-int v6, v5, v7

    .line 804
    .end local v4    # "switchBottom":I
    .restart local v6    # "switchBottom":I
    move v4, v5

    .line 812
    .end local v5    # "switchTop":I
    .local v4, "switchTop":I
    :goto_76
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 813
    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 814
    iput v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 815
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    .line 816
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        0x10 -> :sswitch_5c
        0x50 -> :sswitch_4d
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 493
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v0, :cond_1c

    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_10

    .line 495
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 498
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1c

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 503
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 506
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_38

    .line 508
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 509
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 510
    .local v1, "thumbWidth":I
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "thumbHeight":I
    goto :goto_3a

    .line 512
    .end local v1    # "thumbWidth":I
    .end local v2    # "thumbHeight":I
    :cond_38
    const/4 v1, 0x0

    .line 513
    .restart local v1    # "thumbWidth":I
    const/4 v2, 0x0

    .line 517
    .restart local v2    # "thumbHeight":I
    :goto_3a
    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v3, :cond_54

    .line 518
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .local v3, "maxTextWidth":I
    goto :goto_55

    .line 521
    .end local v3    # "maxTextWidth":I
    :cond_54
    const/4 v3, 0x0

    .line 524
    .restart local v3    # "maxTextWidth":I
    :goto_55
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    .line 527
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_69

    .line 528
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 529
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "trackHeight":I
    goto :goto_6d

    .line 531
    .end local v4    # "trackHeight":I
    :cond_69
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 532
    const/4 v4, 0x0

    .line 537
    .restart local v4    # "trackHeight":I
    :goto_6d
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 538
    .local v5, "paddingLeft":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 540
    .local v6, "paddingRight":I
    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 542
    .local v7, "switchWidth":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 543
    .local v8, "switchHeight":I
    iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    .line 544
    iput v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    .line 546
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 548
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I

    move-result v9

    .line 549
    .local v9, "measuredHeight":I
    if-ge v9, v8, :cond_95

    .line 550
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v10

    invoke-virtual {p0, v10, v8}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V

    .line 552
    :cond_95
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 557
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 559
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 560
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_e
    if-eqz v0, :cond_17

    .line 561
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 594
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 595
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_b2

    .line 608
    :pswitch_10
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    packed-switch v3, :pswitch_data_c4

    goto :goto_83

    .line 628
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 629
    .local v1, "x":F
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v3

    .line 630
    .local v3, "thumbScrollRange":I
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float v4, v1, v4

    .line 632
    .local v4, "thumbScrollOffset":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_2b

    .line 633
    int-to-float v7, v3

    div-float v7, v4, v7

    .local v7, "dPos":F
    goto :goto_34

    .line 637
    .end local v7    # "dPos":F
    :cond_2b
    cmpl-float v7, v4, v6

    if-lez v7, :cond_32

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_34

    :cond_32
    const/high16 v7, -0x40800000    # -1.0f

    .line 639
    .restart local v7    # "dPos":F
    :goto_34
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 640
    neg-float v7, v7

    .line 642
    :cond_3b
    iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    add-float/2addr v8, v7

    invoke-static {v8, v6, v5}, Landroid/support/v7/widget/SwitchCompat;->constrain(FFF)F

    move-result v5

    .line 643
    .local v5, "newPos":F
    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4d

    .line 644
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 645
    invoke-direct {p0, v5}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 647
    :cond_4d
    return v2

    .line 614
    .end local v1    # "x":F
    .end local v3    # "thumbScrollRange":I
    .end local v4    # "thumbScrollOffset":F
    .end local v5    # "newPos":F
    .end local v7    # "dPos":F
    :pswitch_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 615
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 616
    .local v4, "y":F
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_74

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_83

    .line 618
    :cond_74
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 619
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 620
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 621
    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    .line 622
    return v2

    .line 611
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_82
    nop

    .line 650
    :cond_83
    :goto_83
    goto :goto_b2

    .line 655
    :pswitch_84
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    if-ne v3, v1, :cond_8f

    .line 656
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    .line 658
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 659
    return v2

    .line 661
    :cond_8f
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 662
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_b2

    .line 597
    :pswitch_98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 598
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 599
    .local v3, "y":F
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-direct {p0, v1, v3}, Landroid/support/v7/widget/SwitchCompat;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 600
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 601
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 602
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    .line 667
    .end local v1    # "x":F
    .end local v3    # "y":F
    :cond_b2
    :goto_b2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_98
        :pswitch_84
        :pswitch_10
        :pswitch_84
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_82
        :pswitch_4e
        :pswitch_16
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 748
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 752
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result p1

    .line 754
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 755
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    goto :goto_1d

    .line 758
    :cond_11
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 759
    if-eqz p1, :cond_19

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 761
    :goto_1d
    return-void
.end method

.method public setShowText(Z)V
    .registers 3
    .param p1, "showText"    # Z

    .line 478
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eq v0, p1, :cond_9

    .line 479
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 480
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 482
    :cond_9
    return-void
.end method

.method public setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z

    .line 431
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 432
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 433
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 331
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 333
    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 311
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 313
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 231
    sget-object v0, Landroid/support/v7/widget/SwitchCompat;->TEXT_APPEARANCE_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 237
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_10

    .line 238
    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_16

    .line 241
    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 244
    :goto_16
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 245
    .local v3, "ts":I
    if-eqz v3, :cond_31

    .line 246
    int-to-float v4, v3

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_31

    .line 247
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 248
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 252
    :cond_31
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 253
    .local v1, "allCaps":Z
    if-eqz v1, :cond_44

    .line 254
    new-instance v4, Landroid/support/v7/internal/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/internal/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_47

    .line 256
    :cond_44
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 259
    :goto_47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 303
    :cond_13
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_33

    .line 270
    if-nez p1, :cond_b

    .line 271
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_f

    .line 273
    :cond_b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 276
    :goto_f
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 278
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 279
    .local v2, "typefaceStyle":I
    :goto_1a
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, p2

    .line 280
    .local v3, "need":I
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_24

    const/4 v1, 0x1

    :cond_24
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 281
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2f

    const/high16 v0, -0x41800000    # -0.25f

    :cond_2f
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 282
    .end local v2    # "typefaceStyle":I
    .end local v3    # "need":I
    goto :goto_40

    .line 283
    :cond_33
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 284
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 285
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 287
    :goto_40
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 468
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 469
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 470
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 453
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 454
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 455
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 399
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 401
    return-void
.end method

.method public setThumbResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 351
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 353
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 370
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 371
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 372
    return-void
.end method

.method public setTrackResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 743
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 744
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1006
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
