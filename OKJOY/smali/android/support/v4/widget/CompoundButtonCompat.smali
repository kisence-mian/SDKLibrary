.class public final Landroid/support/v4/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_d

    .line 124
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 145
    :goto_c
    return-object v1

    .line 127
    :cond_d
    sget-boolean v1, Landroid/support/v4/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    if-nez v1, :cond_23

    .line 129
    :try_start_11
    const-class v1, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 130
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_21} :catch_30

    .line 134
    :goto_21
    sput-boolean v4, Landroid/support/v4/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    .line 137
    :cond_23
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_43

    .line 139
    :try_start_27
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_2f} :catch_39

    goto :goto_c

    .line 131
    :catch_30
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "CompoundButtonCompat"

    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 140
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_39
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "CompoundButtonCompat"

    const-string v3, "Failed to get button drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_43
    move-object v1, v2

    .line 145
    goto :goto_c
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 72
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 77
    .end local p0    # "button":Landroid/widget/CompoundButton;
    :goto_a
    return-object v0

    .line 74
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_b
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_16

    .line 75
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    .line 77
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 108
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 113
    .end local p0    # "button":Landroid/widget/CompoundButton;
    :goto_a
    return-object v0

    .line 110
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_b
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_16

    .line 111
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    .line 113
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 62
    .end local p0    # "button":Landroid/widget/CompoundButton;
    :cond_9
    :goto_9
    return-void

    .line 59
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_a
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    .line 60
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_9
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 98
    .end local p0    # "button":Landroid/widget/CompoundButton;
    :cond_9
    :goto_9
    return-void

    .line 95
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_a
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    .line 96
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_9
.end method
