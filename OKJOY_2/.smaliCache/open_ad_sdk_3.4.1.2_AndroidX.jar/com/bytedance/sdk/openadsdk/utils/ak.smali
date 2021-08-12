.class public Lcom/bytedance/sdk/openadsdk/utils/ak;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static a:F

.field private static b:I

.field private static c:F

.field private static d:I

.field private static e:I

.field private static f:Landroid/view/WindowManager;

.field private static g:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->a:F

    .line 63
    const/4 v1, -0x1

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->b:I

    .line 64
    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->c:F

    .line 65
    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->d:I

    .line 66
    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->e:I

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public static a(Landroid/content/Context;F)F
    .registers 2

    .line 128
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;)V

    .line 129
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->e(Landroid/content/Context;)F

    move-result p0

    .line 130
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    return p1
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .registers 7

    .line 1022
    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1023
    if-nez v1, :cond_8

    .line 1024
    return v0

    .line 1027
    :cond_8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1028
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1029
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3a

    .line 1030
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1031
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1032
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    goto :goto_41

    .line 1036
    :cond_3a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    :goto_41
    goto :goto_11

    .line 1040
    :cond_42
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1041
    nop

    .line 1042
    const/4 v2, 0x0

    move v3, v2

    .line 1043
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1044
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1045
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1046
    if-ge v3, v5, :cond_71

    .line 1047
    nop

    .line 1048
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v5

    .line 1051
    :cond_71
    goto :goto_4d

    .line 1052
    :cond_72
    if-nez v2, :cond_75

    .line 1053
    return v0

    .line 1055
    :cond_75
    int-to-float v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_89

    mul-int/2addr v2, p0

    int-to-float p0, v2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    div-float/2addr v1, p0

    .line 1056
    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v1, p0

    float-to-int p0, v1

    .line 1057
    return p0

    .line 1058
    :catchall_89
    move-exception p0

    .line 1061
    return v0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    .line 451
    const-string v0, "lock_scene"

    const-string v1, "app_scene"

    if-nez p0, :cond_b

    .line 452
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 455
    :cond_b
    :try_start_b
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_23

    .line 456
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->a()Z

    move-result v2

    .line 457
    if-eqz v2, :cond_1f

    move v2, v3

    goto :goto_20

    :cond_1f
    move v2, v4

    :goto_20
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 459
    :cond_23
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 460
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a()Z

    move-result v1

    if-nez v1, :cond_31

    move v1, v3

    goto :goto_32

    :cond_31
    move v1, v4

    .line 461
    :goto_32
    if-eqz v1, :cond_35

    goto :goto_36

    :cond_35
    move v3, v4

    :goto_36
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_3a

    .line 465
    :cond_39
    goto :goto_55

    .line 463
    :catchall_3a
    move-exception v0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShowScene error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 466
    :goto_55
    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4

    .line 630
    if-nez p0, :cond_3

    .line 631
    return-void

    .line 635
    :cond_3
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/16 v2, 0x13

    if-le v0, v1, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_1d

    .line 636
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 637
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_38

    .line 638
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_38

    .line 640
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 641
    const/16 v1, 0xf06

    .line 647
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 648
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_3a

    goto :goto_39

    .line 638
    :cond_38
    :goto_38
    nop

    .line 652
    :goto_39
    goto :goto_3e

    .line 650
    :catch_3a
    move-exception p0

    .line 651
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 653
    :goto_3e
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 83
    if-nez p0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    .line 84
    :goto_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->f:Landroid/view/WindowManager;

    .line 85
    if-nez v0, :cond_19

    .line 86
    return-void

    .line 88
    :cond_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 91
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->a:F

    .line 92
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->b:I

    .line 93
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->c:F

    .line 94
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->d:I

    .line 95
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->e:I

    .line 98
    :cond_3b
    if-eqz p0, :cond_71

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_66

    .line 100
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/ak;->d:I

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->e:I

    if-le p0, v0, :cond_71

    .line 101
    nop

    .line 102
    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->d:I

    .line 103
    sput p0, Lcom/bytedance/sdk/openadsdk/utils/ak;->e:I

    .line 104
    goto :goto_71

    .line 106
    :cond_66
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/ak;->d:I

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->e:I

    if-ge p0, v0, :cond_71

    .line 107
    nop

    .line 108
    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->d:I

    .line 109
    sput p0, Lcom/bytedance/sdk/openadsdk/utils/ak;->e:I

    .line 113
    :cond_71
    :goto_71
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .registers 16

    .line 958
    new-instance v8, Lcom/bytedance/sdk/openadsdk/utils/ak$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/ak$3;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    const/4 p0, 0x5

    invoke-static {v8, p0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 964
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .registers 2

    .line 270
    if-nez p0, :cond_3

    .line 271
    return-void

    .line 273
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 274
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .registers 3

    .line 263
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_13

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_13

    .line 266
    :cond_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    return-void

    .line 264
    :cond_13
    :goto_13
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .registers 7

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 217
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 219
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 220
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 221
    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p3

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 222
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p4

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 224
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/n;

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/n;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 226
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .registers 3

    .line 922
    if-nez p0, :cond_1b

    .line 923
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is null , can not set OnClickListener !!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnclickListener "

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void

    .line 926
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V
    .registers 3

    .line 930
    if-nez p0, :cond_1b

    .line 931
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is null , can not set OnTouchListener !!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnTouchListener "

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void

    .line 934
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 935
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 7

    .line 325
    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v0, p2, :cond_15

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v0, p3, :cond_15

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v0, p4, :cond_15

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v0, p5, :cond_15

    goto :goto_2a

    .line 329
    :cond_15
    const/4 v0, -0x3

    if-eq p2, v0, :cond_1a

    .line 330
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 331
    :cond_1a
    if-eq p3, v0, :cond_1e

    .line 332
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 333
    :cond_1e
    if-eq p4, v0, :cond_22

    .line 334
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 335
    :cond_22
    if-eq p5, v0, :cond_26

    .line 336
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 337
    :cond_26
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    return-void

    .line 328
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    .line 294
    if-eqz p0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    .line 297
    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-void

    .line 295
    :cond_d
    :goto_d
    return-void
.end method

.method public static a()Z
    .registers 2

    .line 443
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 444
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_13

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 445
    :catchall_13
    move-exception v0

    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method private static a(I)Z
    .registers 2

    .line 259
    if-eqz p0, :cond_c

    const/16 v0, 0x8

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static a(Landroid/webkit/WebView;)Z
    .registers 2

    .line 286
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 287
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 288
    const/4 p0, 0x1

    return p0

    .line 290
    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/View;)[I
    .registers 2

    .line 230
    nop

    .line 231
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 232
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 233
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_11

    .line 235
    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public static b(Landroid/content/Context;F)I
    .registers 3

    .line 134
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->e(Landroid/content/Context;)F

    move-result p0

    .line 136
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_e

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_e
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static b(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 4

    .line 939
    invoke-virtual {p0}, Landroid/webkit/WebView;->getLayerType()I

    move-result v0

    .line 940
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 942
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 943
    if-nez v1, :cond_13

    .line 945
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 947
    :cond_13
    invoke-virtual {p0, v0, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 948
    if-nez v1, :cond_19

    .line 949
    return-object v2

    .line 951
    :cond_19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    invoke-static {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 952
    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 995
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 996
    return-object v0

    .line 998
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 999
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1001
    mul-int v9, v7, v8

    new-array v10, v9, [I

    .line 1002
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1004
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v9, :cond_3e

    .line 1006
    aget v2, v10, v1

    .line 1007
    const/high16 v3, 0xff0000

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x10

    .line 1008
    const v4, 0xff00

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x8

    .line 1009
    and-int/lit16 v2, v2, 0xff

    .line 1010
    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 1011
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_3f

    .line 1005
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1013
    :cond_3e
    return-object p0

    .line 1014
    :catchall_3f
    move-exception p0

    .line 1017
    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .registers 7

    .line 58
    invoke-static/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    return-void
.end method

.method public static b(Landroid/view/View;IIII)V
    .registers 13

    .line 314
    if-nez p0, :cond_3

    .line 315
    return-void

    .line 316
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 317
    if-nez v0, :cond_a

    .line 318
    return-void

    .line 319
    :cond_a
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_19

    .line 320
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 322
    :cond_19
    return-void
.end method

.method private static b()Z
    .registers 2

    .line 78
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1c

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->b:I

    if-ltz v0, :cond_1c

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->c:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1c

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->d:I

    if-ltz v0, :cond_1c

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->e:I

    if-gez v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method public static b(Landroid/content/Context;)[I
    .registers 12

    .line 146
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_16

    .line 148
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->f:Landroid/view/WindowManager;

    .line 150
    :cond_16
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 151
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->f:Landroid/view/WindowManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_91

    .line 152
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 153
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 154
    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 156
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 157
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 160
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    const/16 v8, 0x11

    if-lt v6, v7, :cond_69

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_69

    .line 162
    :try_start_3b
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawWidth"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 163
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawHeight"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_67} :catch_68

    .line 165
    goto :goto_69

    .line 164
    :catch_68
    move-exception v6

    .line 167
    :cond_69
    :goto_69
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v8, :cond_8d

    .line 169
    :try_start_6d
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 170
    const-class v7, Landroid/view/Display;

    const-string v8, "getRealSize"

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Landroid/graphics/Point;

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v6, v8, v3

    invoke-virtual {v7, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget v5, v6, Landroid/graphics/Point;->x:I

    .line 172
    iget v4, v6, Landroid/graphics/Point;->y:I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8b} :catch_8c

    .line 174
    goto :goto_8d

    .line 173
    :catch_8c
    move-exception v1

    .line 175
    :cond_8d
    :goto_8d
    aput v5, v0, v3

    .line 176
    aput v4, v0, v2

    .line 181
    :cond_91
    aget v1, v0, v3

    if-lez v1, :cond_99

    aget v1, v0, v2

    if-gtz v1, :cond_a9

    .line 182
    :cond_99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 183
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v1, v0, v3

    .line 184
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput p0, v0, v2

    .line 187
    :cond_a9
    return-object v0
.end method

.method public static b(Landroid/view/View;)[I
    .registers 2

    .line 239
    nop

    .line 240
    if-eqz p0, :cond_a

    .line 241
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 242
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_b

    .line 240
    :cond_a
    const/4 v0, 0x0

    .line 244
    :goto_b
    return-object v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 1

    .line 191
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;)V

    .line 192
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/ak;->d:I

    return p0
.end method

.method public static c(Landroid/content/Context;F)I
    .registers 2

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 575
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static c(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 5

    .line 477
    nop

    .line 479
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object p0

    .line 480
    if-nez p0, :cond_9

    .line 481
    return-object v0

    .line 483
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    if-gtz v1, :cond_16

    goto :goto_2d

    .line 486
    :cond_16
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 488
    invoke-virtual {p0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2e

    .line 490
    goto :goto_2f

    .line 484
    :cond_2d
    :goto_2d
    return-object v0

    .line 489
    :catchall_2e
    move-exception p0

    .line 491
    :goto_2f
    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .registers 14

    .line 976
    if-eqz p4, :cond_47

    :try_start_2
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_47

    .line 980
    :cond_15
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 982
    const/16 p4, 0x32

    if-ge v5, p4, :cond_20

    if-nez p5, :cond_20

    .line 983
    return-void

    .line 985
    :cond_20
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_29

    .line 986
    return-void

    .line 987
    :catchall_29
    move-exception p0

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(\u5f00\u53d1\u8005\u53ef\u5ffd\u7565\u6b64\u68c0\u6d4b\u5f02\u5e38)checkWebViewIsTransparent->throwable ex>>>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UIUtils"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void

    .line 978
    :cond_47
    :goto_47
    return-void
.end method

.method public static c(Landroid/view/View;)[I
    .registers 4

    .line 249
    nop

    .line 250
    if-eqz p0, :cond_15

    .line 251
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    aput v2, v0, v1

    .line 253
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, v0, v1

    goto :goto_16

    .line 250
    :cond_15
    const/4 v0, 0x0

    .line 255
    :goto_16
    return-object v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 1

    .line 196
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;)V

    .line 197
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/ak;->e:I

    return p0
.end method

.method private static d(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 7

    .line 1066
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1067
    return-object v0

    .line 1070
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1072
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1070
    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->measure(II)V

    .line 1073
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v2

    .line 1074
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v3

    .line 1073
    invoke-virtual {p0, v1, v1, v2, v3}, Landroid/webkit/WebView;->layout(IIII)V

    .line 1075
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 1076
    invoke-virtual {p0}, Landroid/webkit/WebView;->buildDrawingCache()V

    .line 1078
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_54

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v1

    if-gtz v1, :cond_2f

    goto :goto_54

    .line 1081
    :cond_2f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    .line 1082
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1081
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1084
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1085
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1086
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1087
    const/4 v5, 0x0

    int-to-float v4, v4

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1088
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_55

    .line 1089
    return-object v1

    .line 1079
    :cond_54
    :goto_54
    return-object v0

    .line 1090
    :catchall_55
    move-exception p0

    .line 1093
    return-object v0
.end method

.method public static d(Landroid/view/View;)Z
    .registers 1

    .line 277
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static e(Landroid/content/Context;)F
    .registers 1

    .line 201
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;)V

    .line 202
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/ak;->a:F

    return p0
.end method

.method public static e(Landroid/view/View;)Z
    .registers 2

    .line 282
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static f(Landroid/content/Context;)I
    .registers 1

    .line 211
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;)V

    .line 212
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/ak;->b:I

    return p0
.end method

.method public static f(Landroid/view/View;)V
    .registers 4

    .line 539
    if-nez p0, :cond_3

    return-void

    .line 540
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_20

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 541
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/ak$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 549
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 550
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 551
    return-void

    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static g(Landroid/content/Context;)I
    .registers 4

    .line 581
    if-nez p0, :cond_6

    .line 582
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    .line 584
    :cond_6
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 585
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 586
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 587
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_21

    .line 588
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_24

    .line 590
    :cond_21
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 592
    :goto_24
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 593
    return p0
.end method

.method public static g(Landroid/view/View;)V
    .registers 3

    .line 559
    if-nez p0, :cond_3

    return-void

    .line 560
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 561
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 562
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 569
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 570
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 571
    return-void

    :array_24
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static h(Landroid/content/Context;)I
    .registers 4

    .line 598
    if-nez p0, :cond_6

    .line 599
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    .line 601
    :cond_6
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 602
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 603
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 604
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_21

    .line 605
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_24

    .line 607
    :cond_21
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 609
    :goto_24
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 610
    return p0
.end method

.method public static h(Landroid/view/View;)V
    .registers 5

    .line 695
    if-nez p0, :cond_3

    .line 696
    return-void

    .line 699
    :cond_3
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-lt v0, v1, :cond_24

    .line 700
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->g:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_24

    .line 701
    const/4 v0, 0x0

    .line 702
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 703
    if-eqz v1, :cond_1b

    .line 704
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 706
    :cond_1b
    if-eqz v0, :cond_24

    .line 707
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->g:F

    .line 711
    :cond_24
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ak;->g:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2b

    .line 712
    return-void

    .line 714
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->i(Landroid/content/Context;)F

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/ak;->g:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 716
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_4b

    .line 717
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 719
    :cond_4b
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_59

    .line 720
    move-object v2, v1

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 722
    :cond_59
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_67

    .line 723
    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 725
    :cond_67
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_6b

    .line 728
    goto :goto_6c

    .line 726
    :catchall_6b
    move-exception p0

    .line 729
    :goto_6c
    return-void
.end method

.method public static i(Landroid/content/Context;)F
    .registers 6

    .line 615
    if-nez p0, :cond_6

    .line 616
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    .line 618
    :cond_6
    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 620
    if-lez v1, :cond_28

    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v0, p0

    .line 623
    :cond_28
    return v0
.end method
