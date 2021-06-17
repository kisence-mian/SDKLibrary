.class Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatCompoundButtonHelper$DirectSetButtonDrawableInterface;
    }
.end annotation


# instance fields
.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mSkipNextApply:Z

.field private final mView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/CompoundButton;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 39
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 41
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 53
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 54
    return-void
.end method


# virtual methods
.method applyButtonTint()V
    .registers 3

    .line 130
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3e

    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v1, :cond_3e

    .line 133
    :cond_10
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-eqz v1, :cond_21

    .line 136
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 138
    :cond_21
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v1, :cond_2a

    .line 139
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 143
    :cond_2a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 144
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 146
    :cond_39
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_3e
    return-void
.end method

.method getCompoundPaddingLeft(I)I
    .registers 4
    .param p1, "superValue"    # I

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_13

    .line 154
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 156
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 159
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_13
    return p1
.end method

.method getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 116
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 57
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 61
    .local v1, "buttonDrawableLoaded":Z
    :try_start_e
    sget v3, Landroidx/appcompat/R$styleable;->CompoundButton_buttonCompat:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 62
    sget v3, Landroidx/appcompat/R$styleable;->CompoundButton_buttonCompat:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_7e

    .line 63
    .local v3, "resourceId":I
    if-eqz v3, :cond_2e

    .line 65
    :try_start_1e
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 66
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_2b} :catch_2d
    .catchall {:try_start_1e .. :try_end_2b} :catchall_7e

    .line 67
    const/4 v1, 0x1

    .line 71
    goto :goto_2e

    .line 68
    :catch_2d
    move-exception v4

    .line 74
    .end local v3    # "resourceId":I
    :cond_2e
    :goto_2e
    if-nez v1, :cond_4d

    :try_start_30
    sget v3, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 75
    sget v3, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 77
    .local v2, "resourceId":I
    if-eqz v2, :cond_4d

    .line 78
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 79
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .end local v2    # "resourceId":I
    :cond_4d
    sget v2, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 83
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v3, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    .line 84
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 86
    :cond_60
    sget v2, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 87
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v3, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    const/4 v4, -0x1

    .line 89
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    .line 88
    invoke-static {v3, v4}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 87
    invoke-static {v2, v3}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_79
    .catchall {:try_start_30 .. :try_end_79} :catchall_7e

    .line 93
    .end local v1    # "buttonDrawableLoaded":Z
    :cond_79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    nop

    .line 95
    return-void

    .line 93
    :catchall_7e
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    throw v1
.end method

.method onSetButtonDrawable()V
    .registers 2

    .line 120
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    if-eqz v0, :cond_8

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 122
    return-void

    .line 125
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 126
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 127
    return-void
.end method

.method setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 98
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 102
    return-void
.end method

.method setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 109
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 113
    return-void
.end method
