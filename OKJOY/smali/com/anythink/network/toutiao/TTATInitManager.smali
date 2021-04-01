.class public Lcom/anythink/network/toutiao/TTATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/toutiao/TTATInitManager$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lcom/anythink/network/toutiao/TTATInitManager;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/anythink/network/toutiao/TTATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/toutiao/TTATInitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->d:Ljava/util/Map;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->c:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInitManager;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInitManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInitManager;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/anythink/network/toutiao/TTATInitManager;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/anythink/network/toutiao/TTATInitManager;->a:Lcom/anythink/network/toutiao/TTATInitManager;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/anythink/network/toutiao/TTATInitManager;

    invoke-direct {v0}, Lcom/anythink/network/toutiao/TTATInitManager;-><init>()V

    sput-object v0, Lcom/anythink/network/toutiao/TTATInitManager;->a:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 39
    :cond_b
    sget-object v0, Lcom/anythink/network/toutiao/TTATInitManager;->a:Lcom/anythink/network/toutiao/TTATInitManager;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string v0, "Pangle(Tiktok)"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    const-string v0, "com.bytedance.sdk.openadsdk.TTAdSdk"

    return-object v0
.end method

.method public getPluginClassStatus()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    const-string v0, "android-gif-drawable-*.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "ndroid-query-full.*.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :try_start_13
    const-class v0, Lpl/droidsonroids/gif/GifDrawable;

    .line 119
    const-string v0, "android-gif-drawable-*.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_26

    .line 125
    :goto_1c
    :try_start_1c
    const-class v0, Lcom/androidquery/AQuery;

    .line 126
    const-string v0, "ndroid-query-full.*.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_25} :catch_2b

    .line 131
    :goto_25
    return-object v1

    .line 121
    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c

    .line 128
    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25
.end method

.method public getProviderStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const-string v1, "com.bytedance.sdk.openadsdk.multipro.TTMultiProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "com.bytedance.sdk.openadsdk.TTFileProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    .line 53
    return-void
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/network/toutiao/TTATInitManager$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/network/toutiao/TTATInitManager$a;)V

    .line 57
    return-void
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/network/toutiao/TTATInitManager$a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/anythink/network/toutiao/TTATInitManager$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 63
    :cond_18
    iget-object v6, p0, Lcom/anythink/network/toutiao/TTATInitManager;->c:Landroid/os/Handler;

    new-instance v0, Lcom/anythink/network/toutiao/TTATInitManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/toutiao/TTATInitManager$1;-><init>(Lcom/anythink/network/toutiao/TTATInitManager;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/network/toutiao/TTATInitManager$a;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :cond_26
    :goto_26
    return-void

    .line 89
    :cond_27
    if-eqz p4, :cond_26

    .line 90
    invoke-interface {p4}, Lcom/anythink/network/toutiao/TTATInitManager$a;->onFinish()V

    goto :goto_26
.end method
