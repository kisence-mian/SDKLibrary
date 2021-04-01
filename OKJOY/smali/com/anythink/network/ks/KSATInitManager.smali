.class public Lcom/anythink/network/ks/KSATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Lcom/anythink/network/ks/KSATInitManager;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Ljava/util/Map;
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
    .line 18
    const-class v0, Lcom/anythink/network/ks/KSATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/ks/KSATInitManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->e:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/anythink/network/ks/KSATInitManager;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/anythink/network/ks/KSATInitManager;->d:Lcom/anythink/network/ks/KSATInitManager;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/anythink/network/ks/KSATInitManager;

    invoke-direct {v0}, Lcom/anythink/network/ks/KSATInitManager;-><init>()V

    sput-object v0, Lcom/anythink/network/ks/KSATInitManager;->d:Lcom/anythink/network/ks/KSATInitManager;

    .line 41
    :cond_b
    sget-object v0, Lcom/anythink/network/ks/KSATInitManager;->d:Lcom/anythink/network/ks/KSATInitManager;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, "Kuaishou"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, "com.kwad.sdk.KsAdSDK"

    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .registers 7
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
    .line 46
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    const-string v1, "app_name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 50
    iget-object v2, p0, Lcom/anythink/network/ks/KSATInitManager;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/anythink/network/ks/KSATInitManager;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/anythink/network/ks/KSATInitManager;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/anythink/network/ks/KSATInitManager;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 51
    :cond_3c
    new-instance v2, Lcom/kwad/sdk/SdkConfig$Builder;

    invoke-direct {v2}, Lcom/kwad/sdk/SdkConfig$Builder;-><init>()V

    .line 52
    invoke-virtual {v2, v0}, Lcom/kwad/sdk/SdkConfig$Builder;->appId(Ljava/lang/String;)Lcom/kwad/sdk/SdkConfig$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Lcom/kwad/sdk/SdkConfig$Builder;->appName(Ljava/lang/String;)Lcom/kwad/sdk/SdkConfig$Builder;

    move-result-object v2

    .line 54
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/SdkConfig$Builder;->debug(Z)Lcom/kwad/sdk/SdkConfig$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/kwad/sdk/SdkConfig$Builder;->build()Lcom/kwad/sdk/SdkConfig;

    move-result-object v2

    .line 51
    invoke-static {p1, v2}, Lcom/kwad/sdk/KsAdSDK;->init(Landroid/content/Context;Lcom/kwad/sdk/SdkConfig;)V

    .line 57
    iput-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->b:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/anythink/network/ks/KSATInitManager;->c:Ljava/lang/String;

    .line 61
    :cond_5c
    return-void
.end method
