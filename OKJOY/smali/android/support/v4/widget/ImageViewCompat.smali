.class public Landroid/support/v4/widget/ImageViewCompat;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0, "view"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 38
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 41
    .end local p0    # "view":Landroid/widget/ImageView;
    :goto_a
    return-object v0

    .line 40
    .restart local p0    # "view":Landroid/widget/ImageView;
    :cond_b
    instance-of v0, p0, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_16

    check-cast p0, Landroid/support/v4/widget/TintableImageSourceView;

    .line 41
    .end local p0    # "view":Landroid/widget/ImageView;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    .restart local p0    # "view":Landroid/widget/ImageView;
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "view"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 77
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 80
    .end local p0    # "view":Landroid/widget/ImageView;
    :goto_a
    return-object v0

    .line 79
    .restart local p0    # "view":Landroid/widget/ImageView;
    :cond_b
    instance-of v0, p0, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_16

    check-cast p0, Landroid/support/v4/widget/TintableImageSourceView;

    .line 80
    .end local p0    # "view":Landroid/widget/ImageView;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    .restart local p0    # "view":Landroid/widget/ImageView;
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p0, "view"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x15

    .line 50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_35

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_32

    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    .local v1, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 58
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_33

    const/4 v0, 0x1

    .line 59
    .local v0, "hasTint":Z
    :goto_1e
    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 60
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 61
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 63
    :cond_2f
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .end local v0    # "hasTint":Z
    .end local v1    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    .end local p0    # "view":Landroid/widget/ImageView;
    :cond_32
    :goto_32
    return-void

    .line 58
    .restart local v1    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/widget/ImageView;
    :cond_33
    const/4 v0, 0x0

    goto :goto_1e

    .line 66
    .end local v1    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_35
    instance-of v2, p0, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v2, :cond_32

    .line 67
    check-cast p0, Landroid/support/v4/widget/TintableImageSourceView;

    .end local p0    # "view":Landroid/widget/ImageView;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_32
.end method

.method public static setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 6
    .param p0, "view"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x15

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_35

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 93
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_32

    .line 96
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    .local v1, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 98
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_33

    const/4 v0, 0x1

    .line 99
    .local v0, "hasTint":Z
    :goto_1e
    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 100
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 101
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 103
    :cond_2f
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .end local v0    # "hasTint":Z
    .end local v1    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    .end local p0    # "view":Landroid/widget/ImageView;
    :cond_32
    :goto_32
    return-void

    .line 98
    .restart local v1    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/widget/ImageView;
    :cond_33
    const/4 v0, 0x0

    goto :goto_1e

    .line 106
    .end local v1    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_35
    instance-of v2, p0, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v2, :cond_32

    .line 107
    check-cast p0, Landroid/support/v4/widget/TintableImageSourceView;

    .end local p0    # "view":Landroid/widget/ImageView;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_32
.end method
