.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;
    }
.end annotation


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_FONT_WEIGHT_UNSPECIFIED:I = -0x1


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mFontWeight:I

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/TextView;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 75
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 76
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 77
    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroidx/appcompat/widget/TintInfo;

    .line 554
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 555
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 557
    :cond_d
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Landroidx/appcompat/widget/AppCompatDrawableManager;
    .param p2, "drawableId"    # I

    .line 561
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 562
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_11

    .line 563
    new-instance v1, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v1}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 564
    .local v1, "tintInfo":Landroidx/appcompat/widget/TintInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 565
    iput-object v0, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 566
    return-object v1

    .line 568
    .end local v1    # "tintInfo":Landroidx/appcompat/widget/TintInfo;
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 13
    .param p1, "drawableLeft"    # Landroid/graphics/drawable/Drawable;
    .param p2, "drawableTop"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRight"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableBottom"    # Landroid/graphics/drawable/Drawable;
    .param p5, "drawableStart"    # Landroid/graphics/drawable/Drawable;
    .param p6, "drawableEnd"    # Landroid/graphics/drawable/Drawable;

    .line 685
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_32

    if-nez p5, :cond_e

    if-eqz p6, :cond_32

    .line 686
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 687
    .local v0, "existingRel":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p5, :cond_1a

    move-object v5, p5

    goto :goto_1c

    :cond_1a
    aget-object v5, v0, v5

    :goto_1c
    if-eqz p2, :cond_20

    move-object v3, p2

    goto :goto_22

    :cond_20
    aget-object v3, v0, v3

    :goto_22
    if-eqz p6, :cond_26

    move-object v4, p6

    goto :goto_28

    :cond_26
    aget-object v4, v0, v4

    :goto_28
    if-eqz p4, :cond_2c

    move-object v2, p4

    goto :goto_2e

    :cond_2c
    aget-object v2, v0, v2

    :goto_2e
    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "existingRel":[Landroid/graphics/drawable/Drawable;
    goto :goto_3b

    .line 693
    :cond_32
    if-nez p1, :cond_3c

    if-nez p2, :cond_3c

    if-nez p3, :cond_3c

    if-eqz p4, :cond_3b

    goto :goto_3c

    :cond_3b
    :goto_3b
    goto :goto_87

    .line 696
    :cond_3c
    :goto_3c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_64

    .line 697
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 698
    .restart local v0    # "existingRel":[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v5

    if-nez v1, :cond_4e

    aget-object v1, v0, v4

    if-eqz v1, :cond_64

    .line 699
    :cond_4e
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    aget-object v5, v0, v5

    if-eqz p2, :cond_56

    move-object v3, p2

    goto :goto_58

    :cond_56
    aget-object v3, v0, v3

    :goto_58
    aget-object v4, v0, v4

    if-eqz p4, :cond_5e

    move-object v2, p4

    goto :goto_60

    :cond_5e
    aget-object v2, v0, v2

    :goto_60
    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 705
    return-void

    .line 709
    .end local v0    # "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_64
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    .local v0, "existingAbs":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_70

    move-object v5, p1

    goto :goto_72

    :cond_70
    aget-object v5, v0, v5

    :goto_72
    if-eqz p2, :cond_76

    move-object v3, p2

    goto :goto_78

    :cond_76
    aget-object v3, v0, v3

    :goto_78
    if-eqz p3, :cond_7c

    move-object v4, p3

    goto :goto_7e

    :cond_7c
    aget-object v4, v0, v4

    :goto_7e
    if-eqz p4, :cond_82

    move-object v2, p4

    goto :goto_84

    :cond_82
    aget-object v2, v0, v2

    :goto_84
    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 717
    .end local v0    # "existingAbs":[Landroid/graphics/drawable/Drawable;
    :goto_87
    return-void
.end method

.method private setCompoundTints()V
    .registers 2

    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 674
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 675
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 676
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 677
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 678
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 679
    return-void
.end method

.method private setTextSizeInternal(IF)V
    .registers 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 602
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 603
    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroidx/appcompat/widget/TintTypedArray;

    .line 407
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_23

    .line 410
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 412
    if-eq v0, v2, :cond_23

    .line 413
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 417
    :cond_23
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_58

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 418
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_58

    .line 464
    :cond_35
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 466
    iput-boolean v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 467
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 468
    .local v0, "typefaceIndex":I
    packed-switch v0, :pswitch_data_de

    goto :goto_57

    .line 478
    :pswitch_49
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_57

    .line 474
    :pswitch_4e
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 475
    goto :goto_57

    .line 470
    :pswitch_53
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 482
    .end local v0    # "typefaceIndex":I
    :cond_57
    :goto_57
    return-void

    .line 419
    :cond_58
    :goto_58
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 420
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_66

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_68

    :cond_66
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 423
    .local v0, "fontFamilyId":I
    :goto_68
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 424
    .local v5, "fontWeight":I
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 425
    .local v6, "style":I
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v7

    if-nez v7, :cond_ad

    .line 426
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;

    invoke-direct {v7, p0, v5, v6}, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;II)V

    .line 430
    .local v7, "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :try_start_77
    iget v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v8, v7}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 431
    .local v8, "typeface":Landroid/graphics/Typeface;
    if-eqz v8, :cond_a0

    .line 432
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v1, :cond_9e

    iget v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v9, v2, :cond_9e

    .line 434
    nop

    .line 435
    invoke-static {v8, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    iget v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v11, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_96

    const/4 v11, 0x1

    goto :goto_97

    :cond_96
    const/4 v11, 0x0

    .line 434
    :goto_97
    invoke-static {v9, v10, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_a0

    .line 438
    :cond_9e
    iput-object v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 442
    :cond_a0
    :goto_a0
    iget-object v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v9, :cond_a6

    const/4 v9, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v9, 0x0

    :goto_a7
    iput-boolean v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_a9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_77 .. :try_end_a9} :catch_ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_77 .. :try_end_a9} :catch_aa

    .line 445
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    goto :goto_ad

    .line 443
    :catch_aa
    move-exception v8

    goto :goto_ad

    :catch_ac
    move-exception v8

    .line 447
    .end local v7    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_ad
    :goto_ad
    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v7, :cond_dc

    .line 449
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "fontFamilyName":Ljava/lang/String;
    if-eqz v7, :cond_dc

    .line 451
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v1, :cond_d4

    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v1, v2, :cond_d4

    .line 453
    nop

    .line 454
    invoke-static {v7, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_cd

    const/4 v3, 0x1

    .line 453
    :cond_cd
    invoke-static {v1, v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_dc

    .line 457
    :cond_d4
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 461
    .end local v7    # "fontFamilyName":Ljava/lang/String;
    :cond_dc
    :goto_dc
    return-void

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4e
        :pswitch_49
    .end packed-switch
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .registers 6

    .line 536
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_36

    .line 538
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 540
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 541
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 542
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 544
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_58

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_44

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_58

    .line 546
    :cond_44
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 547
    .restart local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 548
    aget-object v1, v0, v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 551
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_58
    return-void
.end method

.method autoSizeText()V
    .registers 2

    .line 592
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 593
    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .registers 2

    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .registers 2

    .line 633
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .registers 2

    .line 629
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .registers 2

    .line 625
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 646
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method isAutoSizeEnabled()Z
    .registers 2

    .line 598
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 39
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 81
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 82
    .local v10, "context":Landroid/content/Context;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v11

    .line 85
    .local v11, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v1, 0x0

    invoke-static {v10, v8, v0, v9, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v12, -0x1

    invoke-virtual {v0, v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v13

    .line 89
    .local v13, "ap":I
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 90
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 91
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 90
    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 93
    :cond_32
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 94
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 95
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 94
    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 97
    :cond_46
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 98
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 99
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 98
    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 101
    :cond_5a
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 102
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 103
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 102
    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 106
    :cond_6e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_9c

    .line 107
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 108
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 109
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 108
    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 111
    :cond_88
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 112
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 113
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 112
    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 117
    :cond_9c
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 122
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v14, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 124
    .local v14, "hasPwdTm":Z
    const/4 v2, 0x0

    .line 125
    .local v2, "allCaps":Z
    const/4 v3, 0x0

    .line 126
    .local v3, "allCapsSet":Z
    const/4 v4, 0x0

    .line 127
    .local v4, "textColor":Landroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .line 128
    .local v5, "textColorHint":Landroid/content/res/ColorStateList;
    const/4 v6, 0x0

    .line 129
    .local v6, "textColorLink":Landroid/content/res/ColorStateList;
    const/4 v15, 0x0

    .line 130
    .local v15, "fontVariation":Ljava/lang/String;
    const/16 v16, 0x0

    .line 133
    .local v16, "localeListString":Ljava/lang/String;
    if-eq v13, v12, :cond_125

    .line 134
    sget-object v12, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v10, v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 135
    if-nez v14, :cond_c9

    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_c9

    .line 136
    const/4 v3, 0x1

    .line 137
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 140
    :cond_c9
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-ge v1, v12, :cond_fd

    .line 144
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 145
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 147
    :cond_e0
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 148
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 151
    :cond_ee
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 152
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v6, v1

    .line 156
    :cond_fd
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 157
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    .line 159
    :cond_10d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v1, v12, :cond_122

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 160
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 161
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 163
    :cond_122
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 167
    :cond_125
    sget-object v1, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v1, v9, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 169
    if-nez v14, :cond_141

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 170
    const/4 v3, 0x1

    .line 171
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    move v12, v2

    move/from16 v21, v3

    goto :goto_144

    .line 173
    :cond_141
    move v12, v2

    move/from16 v21, v3

    .end local v2    # "allCaps":Z
    .end local v3    # "allCapsSet":Z
    .local v12, "allCaps":Z
    .local v21, "allCapsSet":Z
    :goto_144
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_180

    .line 176
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 177
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 179
    :cond_158
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 180
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 183
    :cond_166
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 184
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v35

    goto :goto_185

    .line 183
    :cond_17a
    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v35

    goto :goto_185

    .line 173
    :cond_180
    move-object/from16 v35, v6

    move-object v6, v4

    move-object/from16 v4, v35

    .line 188
    .local v4, "textColorLink":Landroid/content/res/ColorStateList;
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    :goto_185
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 189
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, v16

    goto :goto_198

    .line 188
    :cond_196
    move-object/from16 v3, v16

    .line 192
    .end local v16    # "localeListString":Ljava/lang/String;
    .local v3, "localeListString":Ljava/lang/String;
    :goto_198
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1ac

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 193
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1ac

    .line 194
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 197
    :cond_1ac
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1d3

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 198
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1d0

    .line 199
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_1cd

    .line 200
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v2, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    .end local v13    # "ap":I
    .local v16, "ap":I
    invoke-virtual {v1, v13, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1d5

    .line 199
    .end local v16    # "ap":I
    .restart local v13    # "ap":I
    :cond_1cd
    move/from16 v16, v13

    .end local v13    # "ap":I
    .restart local v16    # "ap":I
    goto :goto_1d5

    .line 198
    .end local v16    # "ap":I
    .restart local v13    # "ap":I
    :cond_1d0
    move/from16 v16, v13

    .end local v13    # "ap":I
    .restart local v16    # "ap":I
    goto :goto_1d5

    .line 197
    .end local v16    # "ap":I
    .restart local v13    # "ap":I
    :cond_1d3
    move/from16 v16, v13

    .line 204
    .end local v13    # "ap":I
    .restart local v16    # "ap":I
    :goto_1d5
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 205
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 207
    if-eqz v6, :cond_1e2

    .line 208
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    :cond_1e2
    if-eqz v5, :cond_1e9

    .line 211
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_1e9
    if-eqz v4, :cond_1f0

    .line 214
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 216
    :cond_1f0
    if-nez v14, :cond_1f7

    if-eqz v21, :cond_1f7

    .line 217
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 219
    :cond_1f7
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_20d

    .line 220
    iget v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    const/4 v13, -0x1

    if-ne v2, v13, :cond_208

    .line 221
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v13, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v2, v1, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_20d

    .line 223
    :cond_208
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    :cond_20d
    :goto_20d
    if-eqz v15, :cond_214

    .line 227
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 229
    :cond_214
    if-eqz v3, :cond_240

    .line 230
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_226

    .line 231
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_240

    .line 232
    :cond_226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_240

    .line 233
    const/16 v1, 0x2c

    .line 234
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "firstLanTag":Ljava/lang/String;
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 239
    .end local v1    # "firstLanTag":Ljava/lang/String;
    :cond_240
    :goto_240
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1, v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 241
    sget-boolean v1, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v1, :cond_2a1

    .line 243
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v1

    if-eqz v1, :cond_29a

    .line 245
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 246
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    .line 247
    .local v1, "autoSizeTextSizesInPx":[I
    array-length v2, v1

    if-lez v2, :cond_293

    .line 248
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v2

    int-to-float v2, v2

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_286

    .line 251
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v13, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 252
    invoke-virtual {v13}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v13

    move-object/from16 v18, v0

    .end local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .local v18, "a":Landroidx/appcompat/widget/TintTypedArray;
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 253
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    move-object/from16 v20, v3

    .end local v3    # "localeListString":Ljava/lang/String;
    .local v20, "localeListString":Ljava/lang/String;
    iget-object v3, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 254
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v3

    .line 251
    move-object/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v22, "textColorLink":Landroid/content/res/ColorStateList;
    invoke-virtual {v2, v13, v0, v3, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_2a7

    .line 257
    .end local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v3    # "localeListString":Ljava/lang/String;
    .restart local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_286
    move-object/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    const/4 v4, 0x0

    .end local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v3    # "localeListString":Ljava/lang/String;
    .end local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_2a7

    .line 247
    .end local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v3    # "localeListString":Ljava/lang/String;
    .restart local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_293
    move-object/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    .end local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v3    # "localeListString":Ljava/lang/String;
    .end local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_2a7

    .line 243
    .end local v1    # "autoSizeTextSizesInPx":[I
    .end local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v3    # "localeListString":Ljava/lang/String;
    .restart local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_29a
    move-object/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    .end local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v3    # "localeListString":Ljava/lang/String;
    .end local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_2a7

    .line 241
    .end local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v3    # "localeListString":Ljava/lang/String;
    .restart local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_2a1
    move-object/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    .line 265
    .end local v0    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v3    # "localeListString":Ljava/lang/String;
    .end local v4    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    :goto_2a7
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v10, v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v13

    .line 268
    .end local v18    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .local v13, "a":Landroidx/appcompat/widget/TintTypedArray;
    const/4 v0, 0x0

    .local v0, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 269
    .local v2, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 270
    .local v17, "drawableEnd":Landroid/graphics/drawable/Drawable;
    move-object/from16 v18, v0

    .end local v0    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v18, "drawableLeft":Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    move-object/from16 v23, v1

    const/4 v1, -0x1

    .end local v1    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .local v23, "drawableTop":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 272
    .local v0, "drawableLeftId":I
    if-eq v0, v1, :cond_2c5

    .line 273
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 275
    :cond_2c5
    move/from16 v24, v0

    .end local v0    # "drawableLeftId":I
    .local v24, "drawableLeftId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v13, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 277
    .local v0, "drawableTopId":I
    if-eq v0, v1, :cond_2d5

    .line 278
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v23, v19

    .line 280
    :cond_2d5
    move/from16 v25, v0

    .end local v0    # "drawableTopId":I
    .local v25, "drawableTopId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v13, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 282
    .local v0, "drawableRightId":I
    if-eq v0, v1, :cond_2e6

    .line 283
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_2e8

    .line 282
    :cond_2e6
    move-object/from16 v26, v2

    .line 285
    .end local v2    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v26, "drawableRight":Landroid/graphics/drawable/Drawable;
    :goto_2e8
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v13, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 287
    .local v2, "drawableBottomId":I
    if-eq v2, v1, :cond_2f7

    .line 288
    invoke-virtual {v11, v10, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_2f9

    .line 287
    :cond_2f7
    move-object/from16 v27, v3

    .line 290
    .end local v3    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .local v27, "drawableBottom":Landroid/graphics/drawable/Drawable;
    :goto_2f9
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v13, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 292
    .local v3, "drawableStartId":I
    if-eq v3, v1, :cond_308

    .line 293
    invoke-virtual {v11, v10, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v28, v4

    goto :goto_30a

    .line 292
    :cond_308
    move-object/from16 v28, v4

    .line 295
    .end local v4    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .local v28, "drawableStart":Landroid/graphics/drawable/Drawable;
    :goto_30a
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v13, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 297
    .local v4, "drawableEndId":I
    if-eq v4, v1, :cond_316

    .line 298
    invoke-virtual {v11, v10, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 300
    :cond_316
    move/from16 v29, v0

    .end local v0    # "drawableRightId":I
    .local v29, "drawableRightId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v30, v2

    .end local v2    # "drawableBottomId":I
    .local v30, "drawableBottomId":I
    move-object/from16 v2, v23

    move/from16 v31, v3

    .end local v3    # "drawableStartId":I
    .local v31, "drawableStartId":I
    move-object/from16 v3, v26

    move/from16 v32, v4

    .end local v4    # "drawableEndId":I
    .local v32, "drawableEndId":I
    move-object/from16 v4, v27

    move-object/from16 v33, v5

    .end local v5    # "textColorHint":Landroid/content/res/ColorStateList;
    .local v33, "textColorHint":Landroid/content/res/ColorStateList;
    move-object/from16 v5, v28

    move-object/from16 v34, v6

    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .local v34, "textColor":Landroid/content/res/ColorStateList;
    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 303
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_346

    .line 304
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 306
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 308
    .end local v0    # "tintList":Landroid/content/res/ColorStateList;
    :cond_346
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_35f

    .line 309
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 310
    const/4 v1, -0x1

    invoke-virtual {v13, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x0

    .line 309
    invoke-static {v0, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 311
    .local v0, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 314
    .end local v0    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_35f
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v1, -0x1

    invoke-virtual {v13, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 316
    .local v0, "firstBaselineToTopHeight":I
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v13, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 318
    .local v2, "lastBaselineToBottomHeight":I
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v13, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 321
    .local v3, "lineHeight":I
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 322
    if-eq v0, v1, :cond_37c

    .line 323
    iget-object v4, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 325
    :cond_37c
    if-eq v2, v1, :cond_383

    .line 326
    iget-object v4, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4, v2}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 328
    :cond_383
    if-eq v3, v1, :cond_38a

    .line 329
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 331
    :cond_38a
    return-void
.end method

.method onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 574
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_7

    .line 575
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 577
    :cond_7
    return-void
.end method

.method onSetCompoundDrawables()V
    .registers 1

    .line 532
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 533
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 485
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 487
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 492
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 494
    :cond_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v1, v3, :cond_33

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 495
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 498
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 499
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 500
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_33

    .line 501
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 505
    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    :cond_33
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 506
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_4a

    .line 507
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 511
    :cond_4a
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 513
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_68

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 514
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 515
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "fontVariation":Ljava/lang/String;
    if-eqz v1, :cond_68

    .line 518
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 521
    .end local v1    # "fontVariation":Ljava/lang/String;
    :cond_68
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 522
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_76

    .line 523
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 525
    :cond_76
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 347
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method setAllCaps(Z)V
    .registers 3
    .param p1, "allCaps"    # Z

    .line 528
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 529
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 616
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 621
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 3
    .param p1, "autoSizeTextType"    # I

    .line 606
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 607
    return-void
.end method

.method setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 650
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 651
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 653
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 655
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 656
    return-void
.end method

.method setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 665
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 667
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 668
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 669
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 670
    return-void
.end method

.method setTextSize(IF)V
    .registers 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 582
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_d

    .line 583
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 584
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    .line 587
    :cond_d
    return-void
.end method

.method public setTypefaceByCallback(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 337
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_b

    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 341
    :cond_b
    return-void
.end method
