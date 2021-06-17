.class public Lcom/umeng/vt/diff/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# static fields
.field private static final UM_VISUAL_IMPRINT:Ljava/lang/String; = "utm-visual"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private download()V
    .registers 6

    .line 97
    :try_start_0
    const-string v0, "com.umeng.vt.vismode.config.ConfigTools"

    invoke-static {v0}, Lcom/umeng/vt/diff/util/ClassLoadUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_27

    .line 99
    const-string v1, "download"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_27

    .line 101
    const-string v3, "getInstance"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 106
    :cond_27
    goto :goto_2c

    .line 104
    :catch_28
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :goto_2c
    return-void
.end method

.method private storeConfig(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    :try_start_0
    const-string v0, "com.umeng.vt.vismode.config.ConfigTools"

    invoke-static {v0}, Lcom/umeng/vt/diff/util/ClassLoadUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2e

    .line 81
    const-string v1, "storeConfig"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2e

    .line 83
    const-string v3, "getInstance"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 88
    :cond_2e
    goto :goto_33

    .line 86
    :catch_2f
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    :goto_33
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2

    .line 28
    if-nez p1, :cond_3

    .line 29
    return-void

    .line 31
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/umeng/vt/diff/Channel;->loadConfig(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/umeng/vt/diff/Channel;->registerListener(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public loadConfig(Landroid/content/Context;)V
    .registers 4

    .line 43
    const-string v0, "utm-visual"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 46
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v1, "data-track"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-direct {p0, p1}, Lcom/umeng/vt/diff/Channel;->storeConfig(Ljava/util/Map;)V

    .line 53
    :cond_24
    return-void
.end method

.method public registerListener(Landroid/content/Context;)V
    .registers 4

    .line 60
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v0

    new-instance v1, Lcom/umeng/vt/diff/Channel$1;

    invoke-direct {v1, p0, p1}, Lcom/umeng/vt/diff/Channel$1;-><init>(Lcom/umeng/vt/diff/Channel;Landroid/content/Context;)V

    const-string p1, "utm-visual"

    invoke-virtual {v0, p1, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 69
    return-void
.end method
