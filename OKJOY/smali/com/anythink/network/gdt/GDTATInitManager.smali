.class public Lcom/anythink/network/gdt/GDTATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lcom/anythink/network/gdt/GDTATInitManager;


# instance fields
.field private b:Ljava/util/Map;
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
    .line 16
    const-class v0, Lcom/anythink/network/gdt/GDTATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/gdt/GDTATInitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInitManager;->b:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/anythink/network/gdt/GDTATInitManager;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/anythink/network/gdt/GDTATInitManager;->a:Lcom/anythink/network/gdt/GDTATInitManager;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/anythink/network/gdt/GDTATInitManager;

    invoke-direct {v0}, Lcom/anythink/network/gdt/GDTATInitManager;-><init>()V

    sput-object v0, Lcom/anythink/network/gdt/GDTATInitManager;->a:Lcom/anythink/network/gdt/GDTATInitManager;

    .line 30
    :cond_b
    sget-object v0, Lcom/anythink/network/gdt/GDTATInitManager;->a:Lcom/anythink/network/gdt/GDTATInitManager;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInitManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInitManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public getActivityStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    const-string v1, "com.qq.e.ads.ADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "com.qq.e.ads.PortraitADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "com.qq.e.ads.LandscapeADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "com.qq.e.ads.RewardvideoPortraitADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "com.qq.e.ads.RewardvideoLandscapeADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string v0, "Tencent"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    const-string v0, "com.qq.e.ads.ADActivity"

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
    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    const-string v0, "ndroid-query-full.*.aar"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :try_start_c
    const-class v0, Lcom/androidquery/AQuery;

    .line 66
    const-string v0, "ndroid-query-full.*.aar"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 71
    :goto_15
    return-object v1

    .line 68
    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method

.method public getProviderStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    const-string v1, "com.anythink.network.gdt.GDTATFileProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-object v0
.end method

.method public getServiceStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    const-string v1, "com.qq.e.comm.DownloadService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .registers 3
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
    .line 44
    return-void
.end method
