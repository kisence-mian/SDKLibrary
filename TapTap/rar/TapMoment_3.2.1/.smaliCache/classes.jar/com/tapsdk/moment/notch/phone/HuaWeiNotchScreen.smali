.class public Lcom/tapsdk/moment/notch/phone/HuaWeiNotchScreen;
.super Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;
.source "HuaWeiNotchScreen.java"


# static fields
.field private static final DISPLAY_NOTCH_STATUS:Ljava/lang/String; = "display_notch_status"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/tapsdk/moment/notch/phone/HuaWeiNotchScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapsdk/moment/notch/phone/HuaWeiNotchScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .registers 8
    .param p1, "window"    # Landroid/view/Window;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    return v1

    .line 37
    :cond_8
    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/notch/phone/HuaWeiNotchScreen;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 38
    return v1

    .line 40
    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    .line 42
    .local v0, "ret":[I
    :try_start_15
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 43
    .local v2, "cl":Ljava/lang/ClassLoader;
    const-string v3, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 44
    .local v3, "hwNotchSizeUtil":Ljava/lang/Class;
    const-string v4, "getNotchSize"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 45
    .local v4, "get":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_37

    move-object v0, v1

    .line 47
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "hwNotchSizeUtil":Ljava/lang/Class;
    .end local v4    # "get":Ljava/lang/reflect/Method;
    goto :goto_38

    .line 46
    :catch_37
    move-exception v1

    .line 48
    :goto_38
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1

    :array_3c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .registers 8
    .param p1, "window"    # Landroid/view/Window;

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    return v1

    .line 23
    :cond_8
    const/4 v0, 0x0

    .line 25
    .local v0, "isNotchScreen":Z
    :try_start_9
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 26
    .local v2, "cl":Ljava/lang/ClassLoader;
    const-string v3, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 27
    .local v3, "hwNotchSizeUtil":Ljava/lang/Class;
    const-string v4, "hasNotchInScreen"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 28
    .local v4, "get":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2d

    move v0, v1

    .line 30
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "hwNotchSizeUtil":Ljava/lang/Class;
    .end local v4    # "get":Ljava/lang/reflect/Method;
    goto :goto_2e

    .line 29
    :catch_2d
    move-exception v1

    .line 31
    :goto_2e
    return v0
.end method
