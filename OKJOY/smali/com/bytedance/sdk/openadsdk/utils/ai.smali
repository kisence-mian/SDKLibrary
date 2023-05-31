.class public Lcom/bytedance/sdk/openadsdk/utils/ai;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static a:F

.field private static b:I

.field private static c:F

.field private static d:I

.field private static e:I

.field private static f:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    .line 53
    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->a:F

    .line 54
    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->b:I

    .line 55
    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->c:F

    .line 56
    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    .line 57
    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;F)F
    .registers 4

    .prologue
    .line 117
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/content/Context;)F

    move-result v0

    .line 119
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 984
    :try_start_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 985
    if-nez v0, :cond_a

    move v0, v4

    .line 1023
    :goto_9
    return v0

    .line 989
    :cond_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 990
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 991
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 992
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 993
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 994
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1020
    :catch_3c
    move-exception v0

    move v0, v4

    .line 1023
    goto :goto_9

    .line 998
    :cond_3f
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1002
    :cond_48
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    .line 1005
    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1006
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1007
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1008
    if-ge v3, v1, :cond_8f

    .line 1010
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_73
    move v2, v0

    move v3, v1

    .line 1013
    goto :goto_51

    .line 1014
    :cond_76
    if-nez v2, :cond_7a

    move v0, v4

    .line 1015
    goto :goto_9

    .line 1017
    :cond_7a
    int-to-float v0, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_82} :catch_3c

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 1018
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1019
    goto/16 :goto_9

    :cond_8f
    move v0, v2

    move v1, v3

    goto :goto_73
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 695
    .line 696
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 698
    :try_start_7
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 700
    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 703
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 704
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 705
    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 706
    const-string v3, "getInt"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 708
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 709
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 710
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    .line 711
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_41} :catch_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_41} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_41} :catch_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_41} :catch_55
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_41} :catch_5b

    move-result v0

    .line 725
    :goto_42
    return v0

    .line 713
    :catch_43
    move-exception v0

    .line 714
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v0, v1

    .line 723
    goto :goto_42

    .line 715
    :catch_49
    move-exception v0

    .line 716
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    .line 723
    goto :goto_42

    .line 717
    :catch_4f
    move-exception v0

    .line 718
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    .line 723
    goto :goto_42

    .line 719
    :catch_55
    move-exception v0

    .line 720
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    .line 723
    goto :goto_42

    .line 721
    :catch_5b
    move-exception v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    :cond_5f
    move v0, v1

    goto :goto_42
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 1066
    if-nez p0, :cond_5

    move-object p0, v7

    .line 1092
    :cond_4
    :goto_4
    return-object p0

    .line 1069
    :cond_5
    if-lez p1, :cond_4

    if-lez p2, :cond_4

    .line 1074
    :try_start_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1075
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1076
    if-lez v3, :cond_4

    if-lez v4, :cond_4

    .line 1079
    if-ge p1, v3, :cond_4

    if-ge p2, v4, :cond_4

    .line 1082
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 1083
    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 1084
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1085
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1086
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_30

    move-result-object p0

    goto :goto_4

    .line 1089
    :catch_30
    move-exception v0

    move-object p0, v7

    .line 1092
    goto :goto_4
.end method

.method public static a(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 903
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 905
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 906
    if-nez v0, :cond_f

    .line 908
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 910
    :cond_f
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 911
    if-nez v0, :cond_17

    move-object v0, v1

    .line 915
    :goto_16
    return-object v0

    .line 914
    :cond_17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4

    .prologue
    const/16 v2, 0x13

    .line 604
    if-nez p0, :cond_5

    .line 627
    :cond_4
    :goto_4
    return-void

    .line 609
    :cond_5
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_22

    .line 610
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 611
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_4

    .line 624
    :catch_1d
    move-exception v0

    .line 625
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 612
    :cond_22
    :try_start_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 614
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 615
    const/16 v1, 0xf02

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 622
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3c} :catch_1d

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 72
    if-nez p0, :cond_18

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    .line 73
    :goto_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->f:Landroid/view/WindowManager;

    .line 74
    if-nez v1, :cond_1a

    .line 102
    :cond_17
    :goto_17
    return-void

    :cond_18
    move-object v1, p0

    .line 72
    goto :goto_7

    .line 77
    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 80
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->a:F

    .line 81
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->b:I

    .line 82
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->c:F

    .line 83
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    .line 84
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    .line 87
    :cond_3c
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a

    .line 89
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    if-le v0, v1, :cond_17

    .line 90
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    .line 91
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    .line 92
    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    goto :goto_17

    .line 95
    :cond_6a
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    if-ge v0, v1, :cond_17

    .line 96
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    .line 97
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    sput v1, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    .line 98
    sput v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    goto :goto_17
.end method

.method static synthetic a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 8

    .prologue
    .line 788
    if-eqz p3, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-nez v0, :cond_14

    .line 789
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ai$3;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ai$3;-><init>(Landroid/webkit/WebView;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p3, v0, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 812
    :cond_14
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 12

    .prologue
    .line 921
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ai$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/ai$4;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x5

    invoke-virtual {v6, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 927
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .registers 2

    .prologue
    .line 250
    if-nez p0, :cond_3

    .line 254
    :goto_2
    return-void

    .line 253
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method public static a(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 243
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_e

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 247
    :cond_e
    :goto_e
    return-void

    .line 246
    :cond_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method public static a(Landroid/view/View;IIII)V
    .registers 7

    .prologue
    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 206
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 208
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 209
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 210
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 211
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 213
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/m;

    invoke-direct {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/m;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 215
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 886
    if-nez p0, :cond_1b

    .line 887
    const-string v0, "OnclickListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null , can not set OnClickListener !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_1a
    return-void

    .line 890
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1a
.end method

.method public static a(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 894
    if-nez p0, :cond_1b

    .line 895
    const-string v0, "OnTouchListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null , can not set OnTouchListener !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :goto_1a
    return-void

    .line 898
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1a
.end method

.method private static a(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 8

    .prologue
    const/4 v1, -0x3

    .line 293
    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v0, p2, :cond_16

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v0, p3, :cond_16

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v0, p4, :cond_16

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v0, p5, :cond_16

    .line 306
    :cond_15
    :goto_15
    return-void

    .line 297
    :cond_16
    if-eq p2, v1, :cond_1a

    .line 298
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 299
    :cond_1a
    if-eq p3, v1, :cond_1e

    .line 300
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 301
    :cond_1e
    if-eq p4, v1, :cond_22

    .line 302
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 303
    :cond_22
    if-eq p5, v1, :cond_26

    .line 304
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 305
    :cond_26
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_15
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 262
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 266
    :cond_8
    :goto_8
    return-void

    .line 265
    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private static a()Z
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 67
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->a:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_19

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->b:I

    if-ltz v0, :cond_19

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->c:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_19

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    if-ltz v0, :cond_19

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    if-gez v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static a(I)Z
    .registers 2

    .prologue
    .line 239
    if-eqz p0, :cond_9

    const/16 v0, 0x8

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(Landroid/view/View;)[I
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 222
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 224
    :cond_f
    return-object v0
.end method

.method public static b(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 123
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;)V

    .line 124
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/content/Context;)F

    move-result v0

    .line 125
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_e
    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    if-nez p0, :cond_4

    .line 440
    :cond_3
    :goto_3
    return-object v0

    .line 412
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    if-lez p1, :cond_3

    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 421
    if-lt v1, p1, :cond_28

    .line 422
    const/16 v1, 0x2d0

    const/4 v2, 0x0

    :try_start_24
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_5f

    move-result-object v0

    .line 428
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 429
    if-lt v1, p1, :cond_37

    .line 430
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_36} :catch_61

    move-result-object v0

    .line 435
    :cond_37
    :goto_37
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 424
    :catch_5f
    move-exception v1

    goto :goto_28

    .line 432
    :catch_61
    move-exception v1

    goto :goto_37
.end method

.method static synthetic b(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 957
    if-nez p0, :cond_6

    move-object v0, v8

    .line 979
    :cond_5
    :goto_5
    return-object v0

    .line 960
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 961
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 963
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 964
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v9

    .line 967
    :goto_20
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 968
    aget v3, v1, v2

    .line 969
    const/high16 v4, 0xff0000

    and-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x10

    .line 970
    const v5, 0xff00

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x8

    .line 971
    and-int/lit16 v3, v3, 0xff

    .line 972
    invoke-static {v4, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 973
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3d} :catch_40

    .line 967
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 976
    :catch_40
    move-exception v0

    move-object v0, v8

    .line 979
    goto :goto_5
.end method

.method private static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 27

    .prologue
    .line 815
    const-string v4, "checkWebViewIsTransparent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWebViewIsTransparent start .....bitmap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",materialMeta="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    if-eqz p3, :cond_3a

    :try_start_28
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_3a

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_3a

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 882
    :cond_3a
    :goto_3a
    return-void

    .line 825
    :cond_3b
    const/4 v8, 0x0

    .line 826
    const/4 v9, 0x0

    .line 827
    const/4 v10, 0x0

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 830
    if-eqz v11, :cond_3a

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 832
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 833
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 835
    const/4 v6, 0x0

    .line 836
    const/4 v5, 0x0

    .line 839
    mul-int v4, v12, v13

    int-to-double v14, v4

    const-wide v16, 0x3fa999999999999aL    # 0.05

    mul-double v14, v14, v16

    double-to-long v14, v14

    .line 841
    mul-int v4, v12, v13

    int-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 843
    const/4 v4, 0x0

    move v7, v4

    :goto_7d
    if-ge v7, v13, :cond_3a

    .line 844
    const/4 v4, 0x0

    move/from16 v22, v4

    move v4, v6

    move/from16 v6, v22

    :goto_85
    if-ge v6, v12, :cond_134

    .line 845
    invoke-virtual {v11, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v18

    .line 846
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v19

    .line 847
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v20

    .line 848
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v21

    .line 849
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->alpha(I)I

    move-result v18

    .line 852
    move/from16 v0, v19

    if-ne v8, v0, :cond_a7

    move/from16 v0, v20

    if-ne v9, v0, :cond_a7

    move/from16 v0, v21

    if-eq v10, v0, :cond_a9

    .line 853
    :cond_a7
    add-int/lit8 v5, v5, 0x1

    .line 857
    :cond_a9
    if-nez v19, :cond_b3

    if-nez v20, :cond_b3

    if-nez v21, :cond_b3

    if-nez v18, :cond_b3

    .line 858
    add-int/lit8 v4, v4, 0x1

    .line 862
    :cond_b3
    int-to-long v0, v5

    move-wide/from16 v18, v0

    cmp-long v18, v18, v14

    if-lez v18, :cond_fd

    if-eq v4, v5, :cond_fd

    .line 863
    const-string v4, "checkWebViewIsTransparent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wwww-TAG="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",checkWebViewIsTransparent....\u4e0d\u6ee1\u8db3\u900f\u660e\u4e0d\u4e0a\u62a5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_dc} :catch_de

    goto/16 :goto_3a

    .line 878
    :catch_de
    move-exception v4

    .line 879
    const-string v5, "UIUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(\u5f00\u53d1\u8005\u53ef\u5ffd\u7565\u6b64\u68c0\u6d4b\u5f02\u5e38)checkWebViewIsTransparent->throwable ex>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 868
    :cond_fd
    int-to-long v0, v4

    move-wide/from16 v18, v0

    cmp-long v18, v18, v16

    if-ltz v18, :cond_130

    .line 869
    :try_start_104
    const-string v4, "checkWebViewIsTransparent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",checkWebViewIsTransparent....\u6ee1\u8db3\u900f\u660e\u4e0a\u62a5.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_12e} :catch_de

    goto/16 :goto_3a

    .line 844
    :cond_130
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_85

    .line 843
    :cond_134
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v4

    goto/16 :goto_7d
.end method

.method static synthetic b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static b(Landroid/view/View;IIII)V
    .registers 11

    .prologue
    .line 282
    if-nez p0, :cond_3

    .line 290
    :cond_2
    :goto_2
    return-void

    .line 284
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_2

    .line 287
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 288
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    goto :goto_2
.end method

.method public static b(Landroid/app/Activity;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 657
    const-string v1, "ro.miui.notch"

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    if-eq v1, v0, :cond_21

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->l(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 658
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 662
    :cond_21
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static b(Landroid/content/Context;)[I
    .registers 14

    .prologue
    const/16 v7, 0x11

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 135
    if-nez p0, :cond_8

    const/4 v0, 0x0

    .line 176
    :goto_7
    return-object v0

    .line 136
    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_1a

    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->f:Landroid/view/WindowManager;

    .line 139
    :cond_1a
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 140
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->f:Landroid/view/WindowManager;

    if-eqz v0, :cond_98

    .line 141
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->f:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 142
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 146
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v0, v5, :cond_bb

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_bb

    .line 151
    :try_start_3d
    const-class v0, Landroid/view/Display;

    const-string v5, "getRawWidth"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 152
    const-class v0, Landroid/view/Display;

    const-string v5, "getRawHeight"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_6c} :catch_b3

    move-result v0

    move v1, v2

    .line 156
    :goto_6e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_94

    .line 158
    :try_start_72
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 159
    const-class v5, Landroid/view/Display;

    const-string v6, "getRealSize"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/graphics/Point;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 161
    iget v0, v2, Landroid/graphics/Point;->y:I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_94} :catch_b9

    .line 164
    :cond_94
    :goto_94
    aput v1, v3, v10

    .line 165
    aput v0, v3, v11

    .line 170
    :cond_98
    aget v0, v3, v10

    if-lez v0, :cond_a0

    aget v0, v3, v11

    if-gtz v0, :cond_b0

    .line 171
    :cond_a0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 172
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v1, v3, v10

    .line 173
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v0, v3, v11

    :cond_b0
    move-object v0, v3

    .line 176
    goto/16 :goto_7

    .line 153
    :catch_b3
    move-exception v0

    move v0, v2

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_6e

    .line 162
    :catch_b9
    move-exception v2

    goto :goto_94

    :cond_bb
    move v0, v1

    move v1, v2

    goto :goto_6e
.end method

.method public static b(Landroid/view/View;)[I
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    if-eqz p0, :cond_14

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    aput v2, v0, v1

    .line 233
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v0, v1

    .line 235
    :cond_14
    return-object v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 180
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;)V

    .line 181
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->d:I

    return v0
.end method

.method public static c(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 549
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static c(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 451
    .line 453
    :try_start_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    .line 454
    if-nez v1, :cond_8

    .line 465
    :cond_7
    :goto_7
    return-object v0

    .line 457
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    if-lez v2, :cond_7

    .line 460
    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 462
    invoke-virtual {v1, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_7

    .line 463
    :catch_2b
    move-exception v1

    goto :goto_7
.end method

.method private static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    .prologue
    .line 939
    if-eqz p4, :cond_14

    :try_start_2
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 953
    :cond_14
    :goto_14
    return-void

    .line 943
    :cond_15
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 944
    const/16 v1, 0x32

    if-lt v0, v1, :cond_14

    .line 947
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_14

    .line 949
    :catch_21
    move-exception v0

    .line 950
    const-string v1, "UIUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(\u5f00\u53d1\u8005\u53ef\u5ffd\u7565\u6b64\u68c0\u6d4b\u5f02\u5e38)checkWebViewIsTransparent->throwable ex>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public static c(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 672
    .line 673
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_20

    .line 675
    :try_start_7
    const-string v1, "android.view.WindowInsets"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 676
    const-string v2, "getDisplayCutout"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 677
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_21

    move-result-object v1

    .line 678
    if-eqz v1, :cond_20

    .line 679
    const/4 v0, 0x1

    .line 685
    :cond_20
    :goto_20
    return v0

    .line 681
    :catch_21
    move-exception v1

    .line 682
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public static c(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 257
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static d(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 185
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;)V

    .line 186
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->e:I

    return v0
.end method

.method private static d(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1028
    if-nez p0, :cond_4

    .line 1055
    :cond_3
    :goto_3
    return-object v0

    .line 1032
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1034
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1032
    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->measure(II)V

    .line 1035
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v3

    .line 1036
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v4

    .line 1035
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebView;->layout(IIII)V

    .line 1037
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 1038
    invoke-virtual {p0}, Landroid/webkit/WebView;->buildDrawingCache()V

    .line 1040
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_3

    .line 1043
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    .line 1044
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1043
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1046
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1047
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1048
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1049
    const/4 v5, 0x0

    int-to-float v4, v4

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1050
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_57} :catch_59

    move-object v0, v1

    .line 1051
    goto :goto_3

    .line 1052
    :catch_59
    move-exception v1

    goto :goto_3
.end method

.method public static d(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 513
    if-nez p0, :cond_3

    .line 525
    :goto_2
    return-void

    .line 514
    :cond_3
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_20

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 515
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/ai$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ai$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 523
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 524
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 514
    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static e(Landroid/content/Context;)F
    .registers 2

    .prologue
    .line 190
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;)V

    .line 191
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->a:F

    return v0
.end method

.method public static e(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 533
    if-nez p0, :cond_3

    .line 545
    :goto_2
    return-void

    .line 534
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 535
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_24

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 536
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/ai$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/utils/ai$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 544
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 535
    :array_24
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static f(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 200
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;)V

    .line 201
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/ai;->b:I

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 555
    if-nez p0, :cond_6

    .line 556
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    .line 558
    :cond_6
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 559
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 560
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 561
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_23

    .line 562
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 566
    :goto_20
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 567
    return v0

    .line 564
    :cond_23
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_20
.end method

.method public static h(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 572
    if-nez p0, :cond_6

    .line 573
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    .line 575
    :cond_6
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 576
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 577
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 578
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_23

    .line 579
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 583
    :goto_20
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 584
    return v0

    .line 581
    :cond_23
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_20
.end method

.method public static i(Landroid/content/Context;)F
    .registers 6

    .prologue
    .line 589
    if-nez p0, :cond_6

    .line 590
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    .line 592
    :cond_6
    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 594
    if-lez v1, :cond_28

    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 597
    :cond_28
    return v0
.end method

.method public static j(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 734
    .line 736
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 737
    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 738
    const-string v2, "hasNotchInScreen"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 739
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_20} :catch_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_20} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_28
    .catchall {:try_start_1 .. :try_end_20} :catchall_2b

    move-result v0

    .line 744
    :goto_21
    return v0

    .line 740
    :catch_22
    move-exception v0

    move v0, v1

    .line 744
    goto :goto_21

    .line 741
    :catch_25
    move-exception v0

    move v0, v1

    .line 744
    goto :goto_21

    .line 742
    :catch_28
    move-exception v0

    move v0, v1

    .line 744
    goto :goto_21

    :catchall_2b
    move-exception v0

    move v0, v1

    goto :goto_21
.end method

.method public static k(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 757
    .line 759
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 760
    const-string v2, "android.util.FtFeature"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 761
    const-string v2, "isFeatureSupport"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 762
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2e} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_36
    .catchall {:try_start_1 .. :try_end_2e} :catchall_39

    move-result v0

    .line 767
    :goto_2f
    return v0

    .line 763
    :catch_30
    move-exception v0

    move v0, v1

    .line 767
    goto :goto_2f

    .line 764
    :catch_33
    move-exception v0

    move v0, v1

    .line 767
    goto :goto_2f

    .line 765
    :catch_36
    move-exception v0

    move v0, v1

    .line 767
    goto :goto_2f

    :catchall_39
    move-exception v0

    move v0, v1

    goto :goto_2f
.end method

.method public static l(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
