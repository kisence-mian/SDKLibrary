.class public Landroidx/core/widget/ImageViewCompat;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0, "view"    # Landroid/widget/ImageView;

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 38
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 40
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/TintableImageSourceView;

    if-eqz v0, :cond_17

    move-object v0, p0

    check-cast v0, Landroidx/core/widget/TintableImageSourceView;

    .line 41
    invoke-interface {v0}, Landroidx/core/widget/TintableImageSourceView;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 40
    :goto_18
    return-object v0
.end method

.method public static getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "view"    # Landroid/widget/ImageView;

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 75
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 77
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/TintableImageSourceView;

    if-eqz v0, :cond_17

    move-object v0, p0

    check-cast v0, Landroidx/core/widget/TintableImageSourceView;

    .line 78
    invoke-interface {v0}, Landroidx/core/widget/TintableImageSourceView;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 77
    :goto_18
    return-object v0
.end method

.method public static setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2a

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_34

    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    .local v0, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 59
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 61
    :cond_26
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .end local v0    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_29
    goto :goto_34

    .line 64
    :cond_2a
    instance-of v0, p0, Landroidx/core/widget/TintableImageSourceView;

    if-eqz v0, :cond_34

    .line 65
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/TintableImageSourceView;

    invoke-interface {v0, p1}, Landroidx/core/widget/TintableImageSourceView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 67
    :cond_34
    :goto_34
    return-void
.end method

.method public static setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2a

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_34

    .line 94
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 97
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 99
    :cond_26
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .end local v0    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_29
    goto :goto_34

    .line 102
    :cond_2a
    instance-of v0, p0, Landroidx/core/widget/TintableImageSourceView;

    if-eqz v0, :cond_34

    .line 103
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/TintableImageSourceView;

    invoke-interface {v0, p1}, Landroidx/core/widget/TintableImageSourceView;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 105
    :cond_34
    :goto_34
    return-void
.end method
