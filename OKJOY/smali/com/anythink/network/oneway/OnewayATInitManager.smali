.class public Lcom/anythink/network/oneway/OnewayATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/anythink/network/oneway/OnewayATInitManager;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/anythink/network/oneway/OnewayATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/oneway/OnewayATInitManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/anythink/network/oneway/OnewayATInitManager;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/anythink/network/oneway/OnewayATInitManager;->c:Lcom/anythink/network/oneway/OnewayATInitManager;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/anythink/network/oneway/OnewayATInitManager;

    invoke-direct {v0}, Lcom/anythink/network/oneway/OnewayATInitManager;-><init>()V

    sput-object v0, Lcom/anythink/network/oneway/OnewayATInitManager;->c:Lcom/anythink/network/oneway/OnewayATInitManager;

    .line 32
    :cond_b
    sget-object v0, Lcom/anythink/network/oneway/OnewayATInitManager;->c:Lcom/anythink/network/oneway/OnewayATInitManager;

    return-object v0
.end method


# virtual methods
.method public getActivityStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    const-string v1, "mobi.oneway.export.AdShowActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "Oneway"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string v0, "mobi.oneway.export.Ad.OnewaySdk"

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
    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    const-string v0, "core-*.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "virtualapk-core-*.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :try_start_13
    const-string v0, "mobi.oneway.common.provider.OwCommonFileProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 67
    const-string v0, "core-*.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1f} :catch_29

    .line 73
    :goto_1f
    :try_start_1f
    const-class v0, Lcom/didi/virtualapk/PluginManager;

    .line 74
    const-string v0, "virtualapk-core-*.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_28} :catch_2e

    .line 79
    :goto_28
    return-object v1

    .line 69
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f

    .line 76
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28
.end method

.method public getProviderStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    const-string v1, "mobi.oneway.export.OWProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
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
    .line 39
    const-string v0, "publisher_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInitManager;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInitManager;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 42
    :cond_18
    invoke-static {p1, v0}, Lmobi/oneway/export/Ad/OnewaySdk;->configure(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v1

    invoke-static {v1}, Lmobi/oneway/export/Ad/OnewaySdk;->setDebugMode(Z)V

    .line 44
    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInitManager;->b:Ljava/lang/String;

    .line 46
    :cond_24
    return-void
.end method
