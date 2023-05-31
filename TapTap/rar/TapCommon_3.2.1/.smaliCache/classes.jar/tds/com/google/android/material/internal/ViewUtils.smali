.class public Ltds/com/google/android/material/internal/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;,
        Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 318
    if-eqz p0, :cond_9

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 321
    :cond_9
    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ltds/com/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILtds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 147
    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILtds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "listener"    # Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "paddingBottomSystemWindowInsets":Z
    const/4 v1, 0x0

    .line 167
    .local v1, "paddingLeftSystemWindowInsets":Z
    const/4 v2, 0x0

    .line 172
    .local v2, "paddingRightSystemWindowInsets":Z
    new-instance v3, Ltds/com/google/android/material/internal/ViewUtils$2;

    invoke-direct {v3, p4}, Ltds/com/google/android/material/internal/ViewUtils$2;-><init>(Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    invoke-static {p0, v3}, Ltds/com/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 205
    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 214
    new-instance v0, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

    .line 216
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 218
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;-><init>(IIII)V

    .line 222
    .local v0, "initialPadding":Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;
    new-instance v1, Ltds/com/google/android/material/internal/ViewUtils$3;

    invoke-direct {v1, p1, v0}, Ltds/com/google/android/material/internal/ViewUtils$3;-><init>(Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)V

    invoke-static {p0, v1}, Ltds/androidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Ltds/androidx/core/view/OnApplyWindowInsetsListener;)V

    .line 231
    invoke-static {p0}, Ltds/com/google/android/material/internal/ViewUtils;->requestApplyInsetsWhenAttached(Landroid/view/View;)V

    .line 232
    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)F
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, "r":Landroid/content/res/Resources;
    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 287
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 288
    return-object v0

    .line 291
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 293
    .local v2, "contentView":Landroid/view/ViewGroup;
    if-eqz v2, :cond_14

    .line 294
    return-object v2

    .line 301
    :cond_14
    if-eq v1, p0, :cond_1e

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1e

    .line 302
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 305
    :cond_1e
    return-object v0
.end method

.method public static getContentViewOverlay(Landroid/view/View;)Ltds/com/google/android/material/internal/ViewOverlayImpl;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 313
    invoke-static {p0}, Ltds/com/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Ltds/com/google/android/material/internal/ViewUtils;->getOverlay(Landroid/view/View;)Ltds/com/google/android/material/internal/ViewOverlayImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getOverlay(Landroid/view/View;)Ltds/com/google/android/material/internal/ViewOverlayImpl;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 275
    if-nez p0, :cond_4

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_10

    .line 279
    new-instance v0, Ltds/com/google/android/material/internal/ViewOverlayApi18;

    invoke-direct {v0, p0}, Ltds/com/google/android/material/internal/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 281
    :cond_10
    invoke-static {p0}, Ltds/com/google/android/material/internal/ViewOverlayApi14;->createFrom(Landroid/view/View;)Ltds/com/google/android/material/internal/ViewOverlayApi14;

    move-result-object v0

    return-object v0
.end method

.method public static getParentAbsoluteElevation(Landroid/view/View;)F
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "absoluteElevation":F
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 262
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_5
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_16

    .line 263
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Ltds/androidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    add-float/2addr v0, v2

    .line 264
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_5

    .line 266
    :cond_16
    return v0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 73
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 54
    sparse-switch p0, :sswitch_data_16

    .line 68
    return-object p1

    .line 66
    :sswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 64
    :sswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 62
    :sswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 60
    :sswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 58
    :sswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 56
    :sswitch_13
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :sswitch_data_16
    .sparse-switch
        0x3 -> :sswitch_13
        0x5 -> :sswitch_10
        0x9 -> :sswitch_d
        0xe -> :sswitch_a
        0xf -> :sswitch_7
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 325
    if-eqz p0, :cond_9

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p1}, Ltds/com/google/android/material/internal/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 328
    :cond_9
    return-void
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 4
    .param p0, "viewTreeObserver"    # Landroid/view/ViewTreeObserver;
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 333
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_d

    .line 335
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 337
    :goto_d
    return-void
.end method

.method public static requestApplyInsetsWhenAttached(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 236
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 238
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_12

    .line 241
    :cond_a
    new-instance v0, Ltds/com/google/android/material/internal/ViewUtils$4;

    invoke-direct {v0}, Ltds/com/google/android/material/internal/ViewUtils$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 253
    :goto_12
    return-void
.end method

.method public static requestFocusAndShowKeyboard(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 83
    new-instance v0, Ltds/com/google/android/material/internal/ViewUtils$1;

    invoke-direct {v0, p0}, Ltds/com/google/android/material/internal/ViewUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method
