.class public abstract Lcom/facebook/FacebookButtonBase;
.super Landroid/widget/Button;
.source "FacebookButtonBase.java"


# instance fields
.field private analyticsButtonCreatedEventName:Ljava/lang/String;

.field private analyticsButtonTappedEventName:Ljava/lang/String;

.field private externalOnClickListener:Landroid/view/View$OnClickListener;

.field private internalOnClickListener:Landroid/view/View$OnClickListener;

.field private overrideCompoundPadding:Z

.field private overrideCompoundPaddingLeft:I

.field private overrideCompoundPaddingRight:I

.field private parentFragment:Lcom/facebook/internal/FragmentWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "analyticsButtonCreatedEventName"    # Ljava/lang/String;
    .param p6, "analyticsButtonTappedEventName"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    if-nez p4, :cond_b

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultStyleResource()I

    move-result v0

    goto :goto_c

    :cond_b
    move v0, p4

    :goto_c
    move p4, v0

    .line 65
    if-nez p4, :cond_12

    sget v0, Lcom/facebook/common/R$style;->com_facebook_button:I

    goto :goto_13

    :cond_12
    move v0, p4

    :goto_13
    move p4, v0

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    iput-object p5, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setClickable(Z)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setFocusable(Z)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/FacebookButtonBase;
    .param p1, "x1"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/FacebookButtonBase;->logButtonTapped(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/FacebookButtonBase;

    .line 46
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/FacebookButtonBase;

    .line 46
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private logButtonCreated(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 222
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 223
    .local v0, "logger":Lcom/facebook/appevents/AppEventsLogger;
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method private logButtonTapped(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 227
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 228
    .local v0, "logger":Lcom/facebook/appevents/AppEventsLogger;
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method private parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 237
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    return-void

    .line 241
    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 244
    .local v0, "attrsResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 250
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_18
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 251
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 252
    .local v3, "backgroundResource":I
    if-eqz v3, :cond_28

    .line 253
    invoke-virtual {p0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundResource(I)V

    goto :goto_2f

    .line 255
    :cond_28
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V

    .line 257
    .end local v3    # "backgroundResource":I
    :goto_2f
    goto :goto_39

    .line 259
    :cond_30
    sget v2, Lcom/facebook/common/R$color;->com_facebook_blue:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_3e

    .line 262
    :goto_39
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    throw v2
.end method

.method private parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 272
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    .line 279
    .local v0, "attrsResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 285
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 286
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x1

    .line 287
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v5, 0x2

    .line 288
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x3

    .line 289
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 285
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 290
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablePadding(I)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_33

    .line 293
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    nop

    .line 295
    return-void

    .line 293
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    throw v2

    :array_38
    .array-data 4
        0x101016f
        0x101016d
        0x1010170
        0x101016e
        0x1010171
    .end array-data
.end method

.method private parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 303
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    .line 309
    .local v0, "attrsResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 315
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 316
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x1

    .line 317
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/4 v5, 0x2

    .line 318
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v6, 0x3

    .line 319
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 315
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/facebook/FacebookButtonBase;->setPadding(IIII)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2b

    .line 321
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    nop

    .line 323
    return-void

    .line 321
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    throw v2

    :array_30
    .array-data 4
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
    .end array-data
.end method

.method private parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 331
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010098

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 334
    .local v1, "colorResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 340
    .local v2, "colorAttrs":Landroid/content/res/TypedArray;
    :try_start_11
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/FacebookButtonBase;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_70

    .line 342
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    nop

    .line 344
    new-array v4, v0, [I

    const v5, 0x10100af

    aput v5, v4, v3

    .line 347
    .local v4, "gravityResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, p2, v4, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 353
    .local v5, "gravityAttrs":Landroid/content/res/TypedArray;
    const/16 v6, 0x11

    :try_start_2d
    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/facebook/FacebookButtonBase;->setGravity(I)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_6b

    .line 355
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    nop

    .line 357
    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_76

    .line 362
    .local v6, "attrsResources":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, p2, v6, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 368
    .local v7, "a":Landroid/content/res/TypedArray;
    :try_start_46
    invoke-virtual {v7, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0, v3, v8}, Lcom/facebook/FacebookButtonBase;->setTextSize(IF)V

    .line 369
    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 370
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setText(Ljava/lang/CharSequence;)V
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_66

    .line 372
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    nop

    .line 374
    return-void

    .line 372
    :catchall_66
    move-exception v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    throw v0

    .line 355
    .end local v6    # "attrsResources":[I
    .end local v7    # "a":Landroid/content/res/TypedArray;
    :catchall_6b
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    throw v0

    .line 342
    .end local v4    # "gravityResources":[I
    .end local v5    # "gravityAttrs":Landroid/content/res/TypedArray;
    :catchall_70
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    throw v0

    nop

    :array_76
    .array-data 4
        0x1010095
        0x1010097
        0x101014f
    .end array-data
.end method

.method private setupOnClickListener()V
    .registers 2

    .line 379
    new-instance v0, Lcom/facebook/FacebookButtonBase$1;

    invoke-direct {v0, p0}, Lcom/facebook/FacebookButtonBase$1;-><init>(Lcom/facebook/FacebookButtonBase;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    return-void
.end method


# virtual methods
.method protected callExternalOnClickListener(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_7

    .line 213
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 215
    :cond_7
    return-void
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 208
    invoke-direct {p0}, Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V

    .line 209
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .registers 4

    .line 180
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    :goto_4
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_14

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_14

    .line 182
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    .line 185
    :cond_14
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1c

    .line 186
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 188
    :cond_1c
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unable to get Activity."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :goto_24
    throw v1

    :goto_25
    goto :goto_24
.end method

.method public getCompoundPaddingLeft()I
    .registers 2

    .line 167
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    goto :goto_b

    .line 169
    :cond_7
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    .line 167
    :goto_b
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    goto :goto_b

    .line 176
    :cond_7
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    .line 174
    :goto_b
    return v0
.end method

.method protected abstract getDefaultRequestCode()I
.end method

.method protected getDefaultStyleResource()I
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getNativeFragment()Landroid/app/Fragment;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 126
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultRequestCode()I

    move-result v0

    return v0
.end method

.method protected measureTextWidth(Ljava/lang/String;)I
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 131
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 132
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 133
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookButtonBase;->logButtonCreated(Landroid/content/Context;)V

    .line 135
    :cond_10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 139
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getGravity()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 140
    .local v0, "centered":Z
    :goto_c
    if-eqz v0, :cond_48

    .line 148
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v3

    .line 149
    .local v3, "compoundPaddingLeft":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result v4

    .line 150
    .local v4, "compoundPaddingRight":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundDrawablePadding()I

    move-result v5

    .line 151
    .local v5, "compoundDrawablePadding":I
    add-int v6, v3, v5

    .line 152
    .local v6, "textX":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v4

    .line 153
    .local v7, "textContentWidth":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/facebook/FacebookButtonBase;->measureTextWidth(Ljava/lang/String;)I

    move-result v8

    .line 154
    .local v8, "textWidth":I
    sub-int v9, v7, v8

    div-int/lit8 v9, v9, 0x2

    .line 155
    .local v9, "textPaddingWidth":I
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaddingLeft()I

    move-result v10

    sub-int v10, v3, v10

    div-int/lit8 v10, v10, 0x2

    .line 156
    .local v10, "imagePaddingWidth":I
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 157
    .local v11, "inset":I
    sub-int v12, v3, v11

    iput v12, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    .line 158
    add-int v12, v4, v11

    iput v12, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 159
    iput-boolean v1, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 161
    .end local v3    # "compoundPaddingLeft":I
    .end local v4    # "compoundPaddingRight":I
    .end local v5    # "compoundDrawablePadding":I
    .end local v6    # "textX":I
    .end local v7    # "textContentWidth":I
    .end local v8    # "textWidth":I
    .end local v9    # "textPaddingWidth":I
    .end local v10    # "imagePaddingWidth":I
    .end local v11    # "inset":I
    :cond_48
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iput-boolean v2, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 163
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 96
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 97
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 84
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 85
    return-void
.end method

.method protected setInternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 218
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    .line 219
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 117
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    .line 118
    return-void
.end method
