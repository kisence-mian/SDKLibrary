.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/appcompat/widget/SwitchCompat;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field mPositionAnimator:Landroid/animation/ObjectAnimator;

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

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 101
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/SwitchCompat$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 205
    sget v0, Landroidx/appcompat/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 219
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 116
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 118
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 121
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 122
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 123
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 124
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 138
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 181
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 221
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 223
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 224
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v2, Landroid/text/TextPaint;->density:F

    .line 226
    sget-object v2, Landroidx/appcompat/R$styleable;->SwitchCompat:[I

    invoke-static {p1, p2, v2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v2

    .line 228
    .local v2, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 229
    if-eqz v5, :cond_49

    .line 230
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 232
    :cond_49
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_track:I

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 233
    if-eqz v5, :cond_56

    .line 234
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 236
    :cond_56
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 237
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 238
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_showText:I

    invoke-virtual {v2, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 239
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {v2, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 241
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    invoke-virtual {v2, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 243
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    invoke-virtual {v2, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 245
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    invoke-virtual {v2, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 247
    sget v5, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTint:I

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 248
    .local v5, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_9a

    .line 249
    iput-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 250
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 252
    :cond_9a
    sget v6, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTintMode:I

    .line 253
    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v6

    .line 252
    invoke-static {v6, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 254
    .local v6, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v6, :cond_ad

    .line 255
    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 256
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 258
    :cond_ad
    iget-boolean v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v8, :cond_b5

    iget-boolean v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v8, :cond_b8

    .line 259
    :cond_b5
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 262
    :cond_b8
    sget v8, Landroidx/appcompat/R$styleable;->SwitchCompat_trackTint:I

    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 263
    .local v8, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_c4

    .line 264
    iput-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 265
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 267
    :cond_c4
    sget v9, Landroidx/appcompat/R$styleable;->SwitchCompat_trackTintMode:I

    .line 268
    invoke-virtual {v2, v9, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v7

    .line 267
    invoke-static {v7, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 269
    .local v0, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v7, v0, :cond_d6

    .line 270
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 271
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 273
    :cond_d6
    iget-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v3, :cond_de

    iget-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v3, :cond_e1

    .line 274
    :cond_de
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 277
    :cond_e1
    sget v3, Landroidx/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 279
    .local v1, "appearance":I
    if-eqz v1, :cond_ec

    .line 280
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 283
    :cond_ec
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v3, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 284
    invoke-virtual {v3, p2, p3}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 286
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 288
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 289
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    .line 290
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 293
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->refreshDrawableState()V

    .line 294
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v7

    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 295
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 7
    .param p1, "newCheckedState"    # Z

    .line 1028
    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1029
    .local v0, "targetPosition":F
    :goto_6
    sget-object v1, Landroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1030
    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1031
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_24

    .line 1032
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1034
    :cond_24
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1035
    return-void
.end method

.method private applyThumbTint()V
    .registers 3

    .line 698
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v1, :cond_3b

    .line 699
    :cond_c
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 701
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-eqz v1, :cond_1f

    .line 702
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 705
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2a

    .line 706
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 711
    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 712
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 715
    :cond_3b
    return-void
.end method

.method private applyTrackTint()V
    .registers 3

    .line 575
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v1, :cond_3b

    .line 576
    :cond_c
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 578
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-eqz v1, :cond_1f

    .line 579
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 582
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2a

    .line 583
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 588
    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 589
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 592
    :cond_3b
    return-void
.end method

.method private cancelPositionAnimator()V
    .registers 2

    .line 1038
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    .line 1039
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1041
    :cond_7
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 988
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 989
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 990
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 991
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 992
    return-void
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 1430
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

    .line 1044
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

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

    .line 1297
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1298
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    sub-float/2addr v0, v1

    .local v0, "thumbPosition":F
    goto :goto_e

    .line 1300
    .end local v0    # "thumbPosition":F
    :cond_c
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 1302
    .restart local v0    # "thumbPosition":F
    :goto_e
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getThumbScrollRange()I
    .registers 5

    .line 1306
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 1307
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1308
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1311
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 1312
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Rect;
    goto :goto_14

    .line 1314
    .end local v0    # "insets":Landroid/graphics/Rect;
    :cond_12
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 1317
    .restart local v0    # "insets":Landroid/graphics/Rect;
    :goto_14
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    return v2

    .line 1320
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 892
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 893
    return v1

    .line 897
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    .line 899
    .local v0, "thumbOffset":I
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 900
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 901
    .local v2, "thumbTop":I
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 902
    .local v4, "thumbLeft":I
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v3, v5

    .line 904
    .local v3, "thumbRight":I
    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    add-int/2addr v6, v5

    .line 905
    .local v6, "thumbBottom":I
    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_42

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_42

    int-to-float v5, v2

    cmpl-float v5, p2, v5

    if-lez v5, :cond_42

    int-to-float v5, v6

    cmpg-float v5, p2, v5

    if-gez v5, :cond_42

    const/4 v1, 0x1

    :cond_42
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 878
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_9

    .line 879
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p1

    .line 882
    .local v0, "transformed":Ljava/lang/CharSequence;
    :goto_a
    new-instance v9, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_1c

    .line 884
    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move v4, v1

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 882
    return-object v9
.end method

.method private setSwitchTypefaceByIndex(II)V
    .registers 4
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    goto :goto_e

    .line 354
    :pswitch_5
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_e

    .line 350
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 351
    goto :goto_e

    .line 346
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 347
    nop

    .line 358
    :goto_e
    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 359
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1000
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1005
    .local v1, "commitChange":Z
    :goto_13
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v3

    .line 1007
    .local v3, "oldState":Z
    if-eqz v1, :cond_49

    .line 1008
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1009
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 1010
    .local v4, "xvel":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_44

    .line 1011
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3d

    cmpg-float v5, v4, v6

    if-gez v5, :cond_42

    goto :goto_41

    :cond_3d
    cmpl-float v5, v4, v6

    if-lez v5, :cond_42

    :goto_41
    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .local v2, "newState":Z
    :goto_43
    goto :goto_48

    .line 1013
    .end local v2    # "newState":Z
    :cond_44
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v2

    .line 1015
    .end local v4    # "xvel":F
    .restart local v2    # "newState":Z
    :goto_48
    goto :goto_4a

    .line 1016
    .end local v2    # "newState":Z
    :cond_49
    move v2, v3

    .line 1019
    .restart local v2    # "newState":Z
    :goto_4a
    if-eq v2, v3, :cond_4f

    .line 1020
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->playSoundEffect(I)V

    .line 1023
    :cond_4f
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1024
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1025
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1137
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1138
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    .line 1139
    .local v1, "switchLeft":I
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 1140
    .local v2, "switchTop":I
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    .line 1141
    .local v3, "switchRight":I
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 1143
    .local v4, "switchBottom":I
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1146
    .local v5, "thumbInitialLeft":I
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_18

    .line 1147
    invoke-static {v6}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "thumbInsets":Landroid/graphics/Rect;
    goto :goto_1a

    .line 1149
    .end local v6    # "thumbInsets":Landroid/graphics/Rect;
    :cond_18
    sget-object v6, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 1153
    .restart local v6    # "thumbInsets":Landroid/graphics/Rect;
    :goto_1a
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5f

    .line 1154
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1157
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 1160
    move v7, v1

    .line 1161
    .local v7, "trackLeft":I
    move v8, v2

    .line 1162
    .local v8, "trackTop":I
    move v9, v3

    .line 1163
    .local v9, "trackRight":I
    move v10, v4

    .line 1164
    .local v10, "trackBottom":I
    if-eqz v6, :cond_5a

    .line 1165
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_36

    .line 1166
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 1168
    :cond_36
    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-le v11, v12, :cond_42

    .line 1169
    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 1171
    :cond_42
    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v12, :cond_4e

    .line 1172
    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 1174
    :cond_4e
    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_5a

    .line 1175
    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 1178
    :cond_5a
    iget-object v11, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1182
    .end local v7    # "trackLeft":I
    .end local v8    # "trackTop":I
    .end local v9    # "trackRight":I
    .end local v10    # "trackBottom":I
    :cond_5f
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7e

    .line 1183
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1185
    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v5, v7

    .line 1186
    .local v7, "thumbLeft":I
    iget v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 1187
    .local v8, "thumbRight":I
    iget-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1189
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1190
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_7e

    .line 1191
    invoke-static {v9, v7, v2, v8, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1197
    .end local v7    # "thumbLeft":I
    .end local v8    # "thumbRight":I
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    :cond_7e
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1198
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 1358
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1361
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 1362
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1365
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 1366
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1368
    :cond_17
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 6

    .line 1335
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1337
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 1338
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 1340
    .local v1, "changed":Z
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1341
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1342
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1345
    :cond_17
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1346
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1347
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1350
    :cond_26
    if-eqz v1, :cond_2b

    .line 1351
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 1353
    :cond_2b
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 1267
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1268
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 1270
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1271
    .local v0, "padding":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1272
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1274
    :cond_1f
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .line 1279
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1280
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 1282
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1283
    .local v0, "padding":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1284
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1286
    :cond_1f
    return v0
.end method

.method public getShowText()Z
    .registers 2

    .line 796
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    .line 737
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .registers 2

    .line 450
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    .line 425
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .line 765
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .line 746
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 634
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    .line 473
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 665
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 694
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 513
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 543
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 571
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1377
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1379
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1380
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1383
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 1384
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1387
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1388
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1389
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1391
    :cond_23
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 1326
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1327
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1328
    sget-object v1, Landroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    .line 1330
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1202
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1204
    iget-object v2, v0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1205
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, v0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1206
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_11

    .line 1207
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_14

    .line 1209
    :cond_11
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1212
    :goto_14
    iget v4, v0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 1213
    .local v4, "switchTop":I
    iget v5, v0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 1214
    .local v5, "switchBottom":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 1215
    .local v6, "switchInnerTop":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v5, v7

    .line 1217
    .local v7, "switchInnerBottom":I
    iget-object v8, v0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1218
    .local v8, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_51

    .line 1219
    iget-boolean v9, v0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    if-eqz v9, :cond_4e

    if-eqz v8, :cond_4e

    .line 1220
    invoke-static {v8}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1221
    .local v9, "insets":Landroid/graphics/Rect;
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1222
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->left:I

    .line 1223
    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->right:I

    .line 1225
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1226
    .local v10, "saveCount":I
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1227
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1228
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1229
    .end local v9    # "insets":Landroid/graphics/Rect;
    .end local v10    # "saveCount":I
    goto :goto_51

    .line 1230
    :cond_4e
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1234
    :cond_51
    :goto_51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1236
    .local v9, "saveCount":I
    if-eqz v8, :cond_5a

    .line 1237
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1240
    :cond_5a
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v10

    if-eqz v10, :cond_63

    iget-object v10, v0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    goto :goto_65

    :cond_63
    iget-object v10, v0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 1241
    .local v10, "switchText":Landroid/text/Layout;
    :goto_65
    if-eqz v10, :cond_a9

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v11

    .line 1243
    .local v11, "drawableState":[I
    iget-object v12, v0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_79

    .line 1244
    iget-object v13, v0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 1246
    :cond_79
    iget-object v12, v0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    iput-object v11, v12, Landroid/text/TextPaint;->drawableState:[I

    .line 1249
    if-eqz v8, :cond_89

    .line 1250
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 1251
    .local v12, "bounds":Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    .line 1252
    .end local v12    # "bounds":Landroid/graphics/Rect;
    .local v13, "cX":I
    goto :goto_8d

    .line 1253
    .end local v13    # "cX":I
    :cond_89
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SwitchCompat;->getWidth()I

    move-result v13

    .line 1256
    .restart local v13    # "cX":I
    :goto_8d
    div-int/lit8 v12, v13, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v12, v14

    .line 1257
    .local v12, "left":I
    add-int v14, v6, v7

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 1258
    .local v14, "top":I
    int-to-float v15, v12

    int-to-float v0, v14

    invoke-virtual {v1, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1259
    invoke-virtual {v10, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1262
    .end local v11    # "drawableState":[I
    .end local v12    # "left":I
    .end local v13    # "cX":I
    .end local v14    # "top":I
    :cond_a9
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1263
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1395
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1396
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1397
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1401
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1402
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1403
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_13

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 1404
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1405
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1406
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1407
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 1409
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_3c
    :goto_3c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1081
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, "opticalInsetLeft":I
    const/4 v1, 0x0

    .line 1085
    .local v1, "opticalInsetRight":I
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2f

    .line 1086
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1087
    .local v2, "trackPadding":Landroid/graphics/Rect;
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_13

    .line 1088
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_16

    .line 1090
    :cond_13
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1093
    :goto_16
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1094
    .local v3, "insets":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1095
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1100
    .end local v2    # "trackPadding":Landroid/graphics/Rect;
    .end local v3    # "insets":Landroid/graphics/Rect;
    :cond_2f
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1101
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 1102
    .local v2, "switchLeft":I
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .local v3, "switchRight":I
    goto :goto_51

    .line 1104
    .end local v2    # "switchLeft":I
    .end local v3    # "switchRight":I
    :cond_40
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v2, v1

    .line 1105
    .restart local v3    # "switchRight":I
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    sub-int v2, v3, v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 1110
    .restart local v2    # "switchLeft":I
    :goto_51
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_92

    .line 1113
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingTop()I

    move-result v5

    .line 1114
    .local v5, "switchTop":I
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    add-int/2addr v4, v5

    .line 1115
    .local v4, "switchBottom":I
    goto :goto_89

    .line 1124
    .end local v4    # "switchBottom":I
    .end local v5    # "switchTop":I
    :sswitch_62
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1125
    .restart local v4    # "switchBottom":I
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    sub-int v5, v4, v5

    .restart local v5    # "switchTop":I
    goto :goto_89

    .line 1118
    .end local v4    # "switchBottom":I
    .end local v5    # "switchTop":I
    :sswitch_70
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    .line 1120
    .local v4, "switchTop":I
    add-int/2addr v5, v4

    .line 1121
    .local v5, "switchBottom":I
    move v7, v5

    move v5, v4

    move v4, v7

    .line 1129
    .local v4, "switchBottom":I
    .local v5, "switchTop":I
    :goto_89
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    .line 1130
    iput v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 1131
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 1132
    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    .line 1133
    return-void

    :sswitch_data_92
    .sparse-switch
        0x10 -> :sswitch_70
        0x50 -> :sswitch_62
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 801
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    if-eqz v0, :cond_1c

    .line 802
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_10

    .line 803
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 806
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1c

    .line 807
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 811
    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 814
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_38

    .line 816
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 817
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 818
    .local v1, "thumbWidth":I
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "thumbHeight":I
    goto :goto_3a

    .line 820
    .end local v1    # "thumbWidth":I
    .end local v2    # "thumbHeight":I
    :cond_38
    const/4 v1, 0x0

    .line 821
    .restart local v1    # "thumbWidth":I
    const/4 v2, 0x0

    .line 825
    .restart local v2    # "thumbHeight":I
    :goto_3a
    iget-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    if-eqz v3, :cond_54

    .line 826
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .local v3, "maxTextWidth":I
    goto :goto_55

    .line 829
    .end local v3    # "maxTextWidth":I
    :cond_54
    const/4 v3, 0x0

    .line 832
    .restart local v3    # "maxTextWidth":I
    :goto_55
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    .line 835
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_69

    .line 836
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 837
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "trackHeight":I
    goto :goto_6d

    .line 839
    .end local v4    # "trackHeight":I
    :cond_69
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 840
    const/4 v4, 0x0

    .line 845
    .restart local v4    # "trackHeight":I
    :goto_6d
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 846
    .local v5, "paddingLeft":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 847
    .local v6, "paddingRight":I
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_85

    .line 848
    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v7

    .line 849
    .local v7, "inset":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 850
    iget v8, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 853
    .end local v7    # "inset":Landroid/graphics/Rect;
    :cond_85
    iget v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    iget v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 855
    .local v7, "switchWidth":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 856
    .local v8, "switchHeight":I
    iput v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 857
    iput v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    .line 859
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 861
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getMeasuredHeight()I

    move-result v9

    .line 862
    .local v9, "measuredHeight":I
    if-ge v9, v8, :cond_a9

    .line 863
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v8}, Landroidx/appcompat/widget/SwitchCompat;->setMeasuredDimension(II)V

    .line 865
    :cond_a9
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 869
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 871
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 872
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_e
    if-eqz v0, :cond_17

    .line 873
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 910
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 912
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_b2

    .line 925
    :pswitch_10
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    packed-switch v3, :pswitch_data_c4

    goto :goto_83

    .line 945
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 946
    .local v1, "x":F
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v3

    .line 947
    .local v3, "thumbScrollRange":I
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    sub-float v4, v1, v4

    .line 949
    .local v4, "thumbScrollOffset":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_2b

    .line 950
    int-to-float v7, v3

    div-float v7, v4, v7

    .local v7, "dPos":F
    goto :goto_34

    .line 954
    .end local v7    # "dPos":F
    :cond_2b
    cmpl-float v7, v4, v6

    if-lez v7, :cond_32

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_34

    :cond_32
    const/high16 v7, -0x40800000    # -1.0f

    .line 956
    .restart local v7    # "dPos":F
    :goto_34
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 957
    neg-float v7, v7

    .line 959
    :cond_3b
    iget v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    add-float/2addr v8, v7

    invoke-static {v8, v6, v5}, Landroidx/appcompat/widget/SwitchCompat;->constrain(FFF)F

    move-result v5

    .line 960
    .local v5, "newPos":F
    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4d

    .line 961
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 962
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 964
    :cond_4d
    return v2

    .line 931
    .end local v1    # "x":F
    .end local v3    # "thumbScrollRange":I
    .end local v4    # "thumbScrollOffset":F
    .end local v5    # "newPos":F
    .end local v7    # "dPos":F
    :pswitch_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 932
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 933
    .local v4, "y":F
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_74

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    sub-float v5, v4, v5

    .line 934
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_83

    .line 935
    :cond_74
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 936
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 937
    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 938
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    .line 939
    return v2

    .line 928
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_82
    nop

    .line 967
    :cond_83
    :goto_83
    goto :goto_b2

    .line 972
    :pswitch_84
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    if-ne v3, v1, :cond_8f

    .line 973
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    .line 975
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 976
    return v2

    .line 978
    :cond_8f
    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 979
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_b2

    .line 914
    :pswitch_98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 915
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 916
    .local v3, "y":F
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-direct {p0, v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 917
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 918
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 919
    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    .line 984
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

    .line 1064
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1068
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p1

    .line 1070
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1071
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    goto :goto_23

    .line 1074
    :cond_17
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1075
    if-eqz p1, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 1077
    :goto_23
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .line 1422
    nop

    .line 1423
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 1422
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1424
    return-void
.end method

.method public setShowText(Z)V
    .registers 3
    .param p1, "showText"    # Z

    .line 785
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    if-eq v0, p1, :cond_9

    .line 786
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 787
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 789
    :cond_9
    return-void
.end method

.method public setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z

    .line 727
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 728
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 729
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 437
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 438
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 439
    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 413
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 414
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 415
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 304
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 310
    .local v0, "appearance":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 311
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_11

    .line 312
    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_17

    .line 315
    :cond_11
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 318
    :goto_17
    sget v2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 319
    .local v2, "ts":I
    if-eqz v2, :cond_34

    .line 320
    int-to-float v4, v2

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_34

    .line 321
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 322
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 327
    :cond_34
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 328
    .local v4, "typefaceIndex":I
    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v0, v6, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v5

    .line 330
    .local v5, "styleIndex":I
    invoke-direct {p0, v4, v5}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypefaceByIndex(II)V

    .line 332
    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v6, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 333
    .local v3, "allCaps":Z
    if-eqz v3, :cond_58

    .line 334
    new-instance v6, Landroidx/appcompat/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/appcompat/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_5b

    .line 336
    :cond_58
    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 339
    :goto_5b
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 340
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 396
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 397
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    .line 398
    :cond_1e
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 400
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 401
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 403
    :cond_29
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 368
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_33

    .line 369
    if-nez p1, :cond_b

    .line 370
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_f

    .line 372
    :cond_b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 375
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 377
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 378
    .local v2, "typefaceStyle":I
    :goto_1a
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, p2

    .line 379
    .local v3, "need":I
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_24

    const/4 v1, 0x1

    :cond_24
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 380
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2f

    const/high16 v0, -0x41800000    # -0.25f

    :cond_2f
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 381
    .end local v2    # "typefaceStyle":I
    .end local v3    # "need":I
    goto :goto_40

    .line 382
    :cond_33
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 383
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 384
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 386
    :goto_40
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 774
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 775
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 776
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 755
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 756
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 757
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 603
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 604
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 606
    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 607
    if-eqz p1, :cond_f

    .line 608
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 610
    :cond_f
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 611
    return-void
.end method

.method setThumbPosition(F)V
    .registers 2
    .param p1, "position"    # F

    .line 1053
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 1054
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 1055
    return-void
.end method

.method public setThumbResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 622
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .line 461
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 462
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 463
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 652
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 655
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 656
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 680
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 683
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 684
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 484
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 485
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 487
    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    if-eqz p1, :cond_f

    .line 489
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 491
    :cond_f
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 492
    return-void
.end method

.method public setTrackResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 502
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 530
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 533
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 534
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 557
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 560
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 561
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 1059
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1060
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1372
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

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
