.class public Lcom/tapsdk/moment/notch/phone/VivoNotchScreen;
.super Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;
.source "VivoNotchScreen.java"


# instance fields
.field private mClass:Ljava/lang/Class;

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .registers 5
    .param p1, "window"    # Landroid/view/Window;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    return v1

    .line 40
    :cond_8
    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/notch/phone/VivoNotchScreen;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 41
    return v1

    .line 43
    :cond_f
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .registers 10
    .param p1, "window"    # Landroid/view/Window;

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    return v1

    .line 23
    :cond_8
    if-nez p1, :cond_b

    .line 24
    return v1

    .line 26
    :cond_b
    const/4 v0, 0x0

    .line 27
    .local v0, "isNotchScreen":Z
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 29
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    :try_start_14
    const-string v3, "android.util.FtFeature"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/tapsdk/moment/notch/phone/VivoNotchScreen;->mClass:Ljava/lang/Class;

    .line 30
    const-string v4, "isFeatureSupport"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/tapsdk/moment/notch/phone/VivoNotchScreen;->mMethod:Ljava/lang/reflect/Method;

    .line 31
    iget-object v4, p0, Lcom/tapsdk/moment/notch/phone/VivoNotchScreen;->mClass:Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_41} :catch_43

    move v0, v1

    .line 33
    goto :goto_44

    .line 32
    :catch_43
    move-exception v1

    .line 34
    :goto_44
    return v0
.end method
