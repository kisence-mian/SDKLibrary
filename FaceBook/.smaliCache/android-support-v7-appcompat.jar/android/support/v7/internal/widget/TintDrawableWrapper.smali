.class Landroid/support/v7/internal/widget/TintDrawableWrapper;
.super Landroid/support/v7/internal/widget/DrawableWrapper;
.source "TintDrawableWrapper.java"


# instance fields
.field private mCurrentColor:I

.field private final mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mTintStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tintStateList"    # Landroid/content/res/ColorStateList;

    .line 36
    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tintStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iput-object p2, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintStateList:Landroid/content/res/ColorStateList;

    .line 43
    iput-object p3, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 44
    return-void
.end method

.method private updateTint([I)Z
    .registers 4
    .param p1, "state"    # [I

    .line 59
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1d

    .line 60
    iget v1, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mCurrentColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 61
    .local v0, "color":I
    iget v1, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mCurrentColor:I

    if-eq v0, v1, :cond_1d

    .line 62
    if-eqz v0, :cond_16

    .line 63
    iget-object v1, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/TintDrawableWrapper;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_19

    .line 65
    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/TintDrawableWrapper;->clearColorFilter()V

    .line 67
    :goto_19
    iput v0, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mCurrentColor:I

    .line 68
    const/4 v1, 0x1

    return v1

    .line 71
    .end local v0    # "color":I
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public isStateful()Z
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    invoke-super {p0}, Landroid/support/v7/internal/widget/DrawableWrapper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public setState([I)Z
    .registers 4
    .param p1, "stateSet"    # [I

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/DrawableWrapper;->setState([I)Z

    move-result v0

    .line 54
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/TintDrawableWrapper;->updateTint([I)Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    move v0, v1

    .line 55
    return v0
.end method
