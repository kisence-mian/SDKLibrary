.class Lcom/bytedance/applog/b/j;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 26
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 27
    iput-object p1, p0, Lcom/bytedance/applog/b/j;->e:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 32
    iget-object v0, p0, Lcom/bytedance/applog/b/j;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 33
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 35
    sparse-switch v1, :sswitch_data_7a

    .line 61
    const-string v0, "mdpi"

    .line 64
    :goto_13
    const-string v2, "density_dpi"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v1, "display_density"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/applog/b/j;->a()[I

    move-result-object v0

    .line 67
    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    sget-boolean v1, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v1, :cond_6a

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :cond_6a
    return v4

    .line 37
    :sswitch_6b
    const-string v0, "ldpi"

    goto :goto_13

    .line 40
    :sswitch_6e
    const-string v0, "hdpi"

    goto :goto_13

    .line 46
    :sswitch_71
    const-string v0, "xhdpi"

    goto :goto_13

    .line 54
    :sswitch_74
    const-string v0, "xxhdpi"

    goto :goto_13

    .line 58
    :sswitch_77
    const-string v0, "xxxhdpi"

    goto :goto_13

    .line 35
    :sswitch_data_7a
    .sparse-switch
        0x78 -> :sswitch_6b
        0xf0 -> :sswitch_6e
        0x104 -> :sswitch_71
        0x118 -> :sswitch_71
        0x12c -> :sswitch_71
        0x140 -> :sswitch_71
        0x154 -> :sswitch_74
        0x168 -> :sswitch_74
        0x190 -> :sswitch_74
        0x1a4 -> :sswitch_74
        0x1b8 -> :sswitch_74
        0x1e0 -> :sswitch_74
        0x230 -> :sswitch_77
        0x280 -> :sswitch_77
    .end sparse-switch
.end method

.method public a()[I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/applog/b/j;->e:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 77
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 78
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 83
    :try_start_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2a

    .line 84
    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_1f} :catch_76

    .line 87
    :try_start_1f
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_21} :catch_7d

    .line 109
    :goto_21
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    return-object v3

    .line 89
    :cond_2a
    :try_start_2a
    const-class v0, Landroid/view/Display;

    const-string v2, "getRawHeight"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 90
    const-class v0, Landroid/view/Display;

    const-string v2, "getRawWidth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_3f} :catch_76

    move-result-object v0

    .line 93
    const/4 v2, 0x0

    :try_start_41
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_4c} :catch_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_41 .. :try_end_4c} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_41 .. :try_end_4c} :catch_6d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_41 .. :try_end_4c} :catch_76

    move-result v2

    .line 94
    const/4 v0, 0x0

    :try_start_4e
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_59} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_59} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4e .. :try_end_59} :catch_84
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4e .. :try_end_59} :catch_7d

    move-result v0

    goto :goto_21

    .line 95
    :catch_5b
    move-exception v0

    move-object v2, v0

    move v0, v1

    .line 97
    :goto_5e
    :try_start_5e
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v2, v0

    move v0, v1

    .line 104
    goto :goto_21

    .line 98
    :catch_64
    move-exception v0

    move-object v2, v0

    move v0, v1

    .line 100
    :goto_67
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v2, v0

    move v0, v1

    .line 104
    goto :goto_21

    .line 101
    :catch_6d
    move-exception v0

    move-object v2, v0

    move v0, v1

    .line 103
    :goto_70
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_73
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5e .. :try_end_73} :catch_7f

    move v2, v0

    move v0, v1

    goto :goto_21

    .line 106
    :catch_76
    move-exception v0

    move v2, v1

    .line 107
    :goto_78
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    goto :goto_21

    .line 106
    :catch_7d
    move-exception v0

    goto :goto_78

    :catch_7f
    move-exception v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    goto :goto_78

    .line 101
    :catch_84
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    goto :goto_70

    .line 98
    :catch_89
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    goto :goto_67

    .line 95
    :catch_8e
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    goto :goto_5e
.end method
