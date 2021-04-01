.class public final Lcom/mintegral/msdk/mtgbanner/common/util/c;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method private static a(Landroid/view/View;Landroid/view/ViewGroup;)I
    .registers 4

    .prologue
    .line 143
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p0, :cond_10

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_10
    return v0
.end method

.method public static a(Landroid/view/View;)Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 20
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 24
    const-string v0, "ViewUtils"

    const-string v1, "Banner Judge : Banner\'s not visible."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_f
    :goto_f
    return v3

    .line 29
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_28

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_28

    .line 31
    const-string v0, "ViewUtils"

    const-string v1, "Banner Judge : Banner\'s alpha must set up 50%."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 37
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4a

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4a

    .line 40
    const-string v0, "ViewUtils"

    const-string v1, "Banner Judge : Banner\'s container is not visible."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 46
    :cond_4a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 48
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v0

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    mul-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_ec

    move v0, v3

    .line 49
    :goto_6d
    if-eqz v1, :cond_ee

    if-eqz v0, :cond_ee

    move v0, v3

    .line 52
    :goto_72
    const-string v1, "ViewUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Banner Judge : totalViewVisible is "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz v0, :cond_f

    move-object v1, p0

    .line 56
    :goto_89
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_108

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 59
    invoke-static {v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/util/c;->a(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    :goto_9f
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_106

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 63
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_102

    .line 68
    invoke-static {p0, v1}, Lcom/mintegral/msdk/mtgbanner/common/util/c;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 69
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f3

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_f3

    .line 70
    check-cast v1, Landroid/view/ViewGroup;

    move v0, v4

    .line 72
    :goto_cd
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_102

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 75
    invoke-static {p0, v6}, Lcom/mintegral/msdk/mtgbanner/common/util/c;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 76
    invoke-static {v6}, Lcom/mintegral/msdk/mtgbanner/common/util/c;->b(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 77
    const-string v0, "ViewUtils"

    const-string v1, "Banner Judge : Banner Covered and Cover ViewGroup is not transparent."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_ec
    move v0, v4

    .line 48
    goto :goto_6d

    :cond_ee
    move v0, v4

    .line 49
    goto :goto_72

    .line 72
    :cond_f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 84
    :cond_f3
    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/util/c;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 85
    const-string v0, "ViewUtils"

    const-string v1, "Banner Judge : Banner Covered and Cover View is not transparent."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 60
    :cond_102
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_9f

    :cond_106
    move-object v1, v2

    .line 93
    goto :goto_89

    .line 95
    :cond_108
    const-string v0, "ViewUtils"

    const-string v1, "Banner Judge : Well done, banner is not covered."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 96
    goto/16 :goto_f
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    .prologue
    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 122
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 125
    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 129
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    .line 130
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 132
    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_49

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_48
    return v0

    :cond_49
    const/4 v0, 0x0

    goto :goto_48
.end method

.method private static b(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_12

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    .line 115
    :cond_11
    :goto_11
    return v0

    .line 108
    :cond_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2a

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_11

    .line 115
    :cond_2a
    const/4 v0, 0x1

    goto :goto_11
.end method
