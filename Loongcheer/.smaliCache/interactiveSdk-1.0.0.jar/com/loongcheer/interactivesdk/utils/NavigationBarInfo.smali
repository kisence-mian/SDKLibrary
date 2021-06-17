.class public Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;
.super Ljava/lang/Object;
.source "NavigationBarInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationBarInfo"

.field public static final VIVO_FILLET:I = 0x8

.field public static final VIVO_NOTCH:I = 0x20


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adaptiveStartPage(Landroid/app/Activity;Landroid/widget/ImageView;Z)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bottom"    # Z

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 79
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 81
    .local v1, "height":F
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    .line 83
    .local v2, "width":F
    const v3, 0x3fe38e39

    .line 84
    .local v3, "standard":F
    div-float v4, v1, v2

    .line 85
    .local v4, "actual":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "heigth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NavigationBarInfo"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "standard = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actual = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public static getHeight(Landroid/app/Activity;)F
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 294
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "notchHight":F
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->isHuawei()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 297
    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getNotchSize(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v1, v2

    goto :goto_41

    .line 298
    :cond_1e
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->isXiaomi()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 299
    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getXiaomiNotchHight(Landroid/app/Activity;)I

    move-result v2

    int-to-float v1, v2

    goto :goto_41

    .line 300
    :cond_2a
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->isVivo()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 301
    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getXiaomiNotchHight(Landroid/app/Activity;)I

    move-result v2

    int-to-float v1, v2

    goto :goto_41

    .line 302
    :cond_36
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->isOppo()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 303
    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getXiaomiNotchHight(Landroid/app/Activity;)I

    move-result v2

    int-to-float v1, v2

    .line 306
    :cond_41
    :goto_41
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v1

    return v2

    .line 308
    .end local v1    # "notchHight":F
    :cond_4b
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    return v1
.end method

.method public static getInt(Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "result":I
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->isXiaomi()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3e

    .line 155
    :try_start_9
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 157
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v4, "android.os.SystemProperties"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 160
    .local v4, "SystemProperties":Ljava/lang/Class;
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 161
    .local v6, "paramTypes":[Ljava/lang/Class;
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 162
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 163
    const-string v7, "getInt"

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 165
    .local v7, "getInt":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    .line 166
    .local v5, "params":[Ljava/lang/Object;
    aput-object p0, v5, v2

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    .line 168
    invoke-virtual {v7, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_38} :catch_3a

    move v0, v8

    .line 172
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "SystemProperties":Ljava/lang/Class;
    .end local v5    # "params":[Ljava/lang/Object;
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    .end local v7    # "getInt":Ljava/lang/reflect/Method;
    goto :goto_3e

    .line 170
    :catch_3a
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    if-ne v0, v3, :cond_41

    const/4 v2, 0x1

    :cond_41
    return v2
.end method

.method private static getNavBarOverride()Ljava/lang/String;
    .registers 7

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "sNavBarOverride":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_37

    .line 65
    :try_start_7
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "c":Ljava/lang/Class;
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 67
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 68
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "qemu.hw.mainkeys"

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_2d

    move-object v0, v3

    .line 71
    .end local v1    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    goto :goto_37

    .line 69
    :catch_2d
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NavigationBarInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_37
    :goto_37
    return-object v0
.end method

.method private static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "result":I
    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->hasNavBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 28
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 29
    .local v2, "resourceId":I
    if-lez v2, :cond_1b

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "resourceId":I
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavigationBarHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBarInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return v0
.end method

.method public static getNotchSize(Landroid/content/Context;)[I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    .line 208
    .local v0, "ret":[I
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 210
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 212
    .local v2, "HwNotchSizeUtil":Ljava/lang/Class;
    const-string v3, "getNotchSize"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 214
    .local v3, "get":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_27
    .catchall {:try_start_6 .. :try_end_23} :catchall_25

    move-object v0, v4

    .line 222
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    return-object v0

    :catchall_25
    move-exception v1

    goto :goto_30

    .line 216
    :catch_27
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v2, "NavigationBarInfo"

    const-string v3, "getNotchSize Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    .line 222
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_30
    return-object v0

    nop

    :array_32
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "statusBarHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "resourceId":I
    if-lez v1, :cond_19

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 116
    :cond_19
    return v0
.end method

.method public static getXiaomiNotchHight(Landroid/app/Activity;)I
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "resourceId":I
    if-lez v0, :cond_19

    .line 287
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 289
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method private static hasNavBar(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "resourceId":I
    if-eqz v1, :cond_2c

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 46
    .local v2, "hasNav":Z
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getNavBarOverride()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "sNavBarOverride":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 48
    const/4 v2, 0x0

    goto :goto_2b

    .line 49
    :cond_22
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 50
    const/4 v2, 0x1

    .line 52
    :cond_2b
    :goto_2b
    return v2

    .line 54
    .end local v2    # "hasNav":Z
    .end local v3    # "sNavBarOverride":Ljava/lang/String;
    :cond_2c
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static hasNotchAtHuawei(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 181
    const-string v0, "NavigationBarInfo"

    const/4 v1, 0x0

    .line 183
    .local v1, "ret":Z
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 184
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    const-string v3, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 185
    .local v3, "HwNotchSizeUtil":Ljava/lang/Class;
    const-string v4, "hasNotchInScreen"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 186
    .local v4, "get":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_22} :catch_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_22} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_25
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    .line 194
    .end local v1    # "ret":Z
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v4    # "get":Ljava/lang/reflect/Method;
    .local v0, "ret":Z
    return v0

    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    :catchall_23
    move-exception v0

    goto :goto_3c

    .line 191
    :catch_25
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    :try_start_26
    const-string v3, "hasNotchAtHuawei Exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    .line 189
    :catch_2d
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "hasNotchAtHuawei NoSuchMethodException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    nop

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    return v1

    .line 187
    :catch_35
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "hasNotchAtHuawei ClassNotFoundException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_23

    .line 194
    nop

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_3c
    return v1
.end method

.method public static hasNotchAtOPPO(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNotchAtVivo(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 237
    const-string v0, "NavigationBarInfo"

    const/4 v1, 0x0

    .line 239
    .local v1, "ret":Z
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 240
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    const-string v3, "android.util.FtFeature"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 241
    .local v3, "FtFeature":Ljava/lang/Class;
    const-string v4, "isFeatureSupport"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 242
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_2f} :catch_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_2f} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_32
    .catchall {:try_start_3 .. :try_end_2f} :catchall_30

    .line 250
    .end local v1    # "ret":Z
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "FtFeature":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .local v0, "ret":Z
    return v0

    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    :catchall_30
    move-exception v0

    goto :goto_49

    .line 247
    :catch_32
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v3, "hasNotchAtVivo Exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    .line 245
    :catch_3a
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "hasNotchAtVivo NoSuchMethodException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    nop

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    return v1

    .line 243
    :catch_42
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "hasNotchAtVivo ClassNotFoundException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_30

    .line 250
    nop

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_49
    return v1
.end method

.method public static hasNotchScreen(Landroid/app/Activity;)Z
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 126
    const-string v0, "ro.miui.notch"

    invoke-static {v0, p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->getInt(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->hasNotchAtHuawei(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->hasNotchAtOPPO(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 127
    invoke-static {p0}, Lcom/loongcheer/interactivesdk/utils/NavigationBarInfo;->hasNotchAtVivo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 126
    :goto_1e
    return v0
.end method

.method public static hideNavigationBar(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_14

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "v":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 102
    .end local v0    # "v":Landroid/view/View;
    goto :goto_21

    .line 103
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1006

    .line 106
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 108
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "uiOptions":I
    :goto_21
    return-void
.end method

.method public static isHuawei()Z
    .registers 2

    .line 267
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOppo()Z
    .registers 2

    .line 271
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Oppo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVivo()Z
    .registers 2

    .line 275
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomi()Z
    .registers 2

    .line 263
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
