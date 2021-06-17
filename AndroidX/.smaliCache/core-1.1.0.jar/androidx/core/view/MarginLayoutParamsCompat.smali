.class public final Landroidx/core/view/MarginLayoutParamsCompat;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 128
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v0

    .local v0, "result":I
    goto :goto_c

    .line 130
    .end local v0    # "result":I
    :cond_b
    const/4 v0, 0x0

    .line 133
    .restart local v0    # "result":I
    :goto_c
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 137
    const/4 v0, 0x0

    .line 139
    :cond_12
    return v0
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    return v0

    .line 64
    :cond_b
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    return v0

    .line 45
    :cond_b
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public static isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .registers 3
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 113
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    return v0

    .line 115
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "layoutDirection"    # I

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_9

    .line 162
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 164
    :cond_9
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "layoutDirection"    # I

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_9

    .line 151
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 153
    :cond_9
    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "marginEnd"    # I

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 100
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_c

    .line 102
    :cond_a
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 104
    :goto_c
    return-void
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "marginStart"    # I

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 81
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_c

    .line 83
    :cond_a
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 85
    :goto_c
    return-void
.end method
