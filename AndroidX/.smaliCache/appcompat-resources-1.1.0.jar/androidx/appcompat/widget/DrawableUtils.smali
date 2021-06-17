.class public Landroidx/appcompat/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "DrawableUtils"

.field private static final VECTOR_DRAWABLE_CLAZZ_NAME:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a0

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    .line 46
    new-array v0, v2, [I

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_26

    .line 59
    :try_start_1c
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_24} :catch_25

    .line 62
    goto :goto_26

    .line 60
    :catch_25
    move-exception v0

    .line 64
    :cond_26
    :goto_26
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_c

    .line 143
    return v2

    .line 144
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_15

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_15

    .line 147
    return v2

    .line 148
    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_20

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_20

    .line 149
    return v2

    .line 152
    :cond_20
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_44

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 155
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v1, :cond_43

    .line 156
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 158
    .local v1, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_35
    if-ge v5, v4, :cond_43

    aget-object v6, v3, v5

    .line 159
    .local v6, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 160
    return v2

    .line 158
    .end local v6    # "child":Landroid/graphics/drawable/Drawable;
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 164
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v1    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_43
    goto :goto_74

    :cond_44
    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_54

    .line 165
    move-object v0, p0

    check-cast v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 167
    invoke-interface {v0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 168
    :cond_54
    instance-of v0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_64

    .line 169
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    .line 171
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 172
    :cond_64
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_74

    .line 173
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 176
    :cond_74
    :goto_74
    const/4 v0, 0x1

    return v0
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_19

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 133
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_19
    return-void
.end method

.method private static fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 184
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 185
    .local v0, "originalState":[I
    if-eqz v0, :cond_10

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_10

    .line 190
    :cond_a
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_15

    .line 187
    :cond_10
    :goto_10
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 193
    :goto_15
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 194
    return-void
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 12
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_20

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 75
    .local v0, "insets":Landroid/graphics/Insets;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v1, "result":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Insets;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 77
    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 78
    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 79
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 80
    return-object v1

    .line 82
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "result":Landroid/graphics/Rect;
    :cond_20
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v0, :cond_b0

    .line 86
    :try_start_24
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object p0, v0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getOpticalInsets"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 89
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    .local v0, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "insets":Ljava/lang/Object;
    if-eqz v1, :cond_a7

    .line 94
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 96
    .local v3, "result":Landroid/graphics/Rect;
    sget-object v4, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_4b
    if-ge v6, v5, :cond_a6

    aget-object v7, v4, v6

    .line 97
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_b4

    :cond_5b
    goto :goto_83

    :sswitch_5c
    const-string v10, "right"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    const/4 v9, 0x2

    goto :goto_83

    :sswitch_66
    const-string v10, "left"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    const/4 v9, 0x0

    goto :goto_83

    :sswitch_70
    const-string v10, "top"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    const/4 v9, 0x1

    goto :goto_83

    :sswitch_7a
    const-string v10, "bottom"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    const/4 v9, 0x3

    :goto_83
    packed-switch v9, :pswitch_data_c6

    goto :goto_a3

    .line 108
    :pswitch_87
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_a3

    .line 105
    :pswitch_8e
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 106
    goto :goto_a3

    .line 102
    :pswitch_95
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 103
    goto :goto_a3

    .line 99
    :pswitch_9c
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->left:I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_a2} :catch_a8

    .line 100
    nop

    .line 96
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :goto_a3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 112
    :cond_a6
    return-object v3

    .line 117
    .end local v0    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .end local v1    # "insets":Ljava/lang/Object;
    .end local v3    # "result":Landroid/graphics/Rect;
    :cond_a7
    goto :goto_b0

    .line 114
    :catch_a8
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DrawableUtils"

    const-string v2, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b0
    :goto_b0
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-object v0

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x527265d5 -> :sswitch_7a
        0x1c155 -> :sswitch_70
        0x32a007 -> :sswitch_66
        0x677c21c -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_95
        :pswitch_8e
        :pswitch_87
    .end packed-switch
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 200
    sparse-switch p0, :sswitch_data_16

    .line 207
    return-object p1

    .line 206
    :sswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 205
    :sswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 204
    :sswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 203
    :sswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 202
    :sswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 201
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
