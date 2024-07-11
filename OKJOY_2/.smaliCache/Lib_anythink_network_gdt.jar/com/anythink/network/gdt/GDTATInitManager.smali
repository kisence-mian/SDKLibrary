.class public Lcom/anythink/network/gdt/GDTATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lcom/anythink/network/gdt/GDTATInitManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/anythink/network/gdt/GDTATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/gdt/GDTATInitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInitManager;->b:Ljava/util/Map;

    .line 33
    return-void
.end method

.method protected static a(Landroid/content/Context;F)I
    .registers 3

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 116
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_11

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_11
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static a(Landroid/content/Context;I)I
    .registers 4

    .line 120
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 121
    return v0

    .line 122
    :cond_4
    const/4 v1, 0x2

    if-nez p1, :cond_23

    .line 124
    :try_start_7
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 125
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 126
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1e

    if-eqz p0, :cond_1c

    return v0

    .line 127
    :cond_1c
    nop

    .line 126
    return v1

    .line 129
    :catch_1e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    goto :goto_26

    .line 131
    :cond_23
    if-ne p1, v1, :cond_26

    .line 132
    return v1

    .line 134
    :cond_26
    :goto_26
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/anythink/network/gdt/GDTATInitManager;
    .registers 2

    const-class v0, Lcom/anythink/network/gdt/GDTATInitManager;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/anythink/network/gdt/GDTATInitManager;->a:Lcom/anythink/network/gdt/GDTATInitManager;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/anythink/network/gdt/GDTATInitManager;

    invoke-direct {v1}, Lcom/anythink/network/gdt/GDTATInitManager;-><init>()V

    sput-object v1, Lcom/anythink/network/gdt/GDTATInitManager;->a:Lcom/anythink/network/gdt/GDTATInitManager;

    .line 39
    :cond_e
    sget-object v1, Lcom/anythink/network/gdt/GDTATInitManager;->a:Lcom/anythink/network/gdt/GDTATInitManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInitManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInitManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public getActivityStatus()Ljava/util/List;
    .registers 3

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    const-string v1, "com.qq.e.ads.ADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "com.qq.e.ads.PortraitADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v1, "com.qq.e.ads.LandscapeADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v1, "com.qq.e.ads.RewardvideoPortraitADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v1, "com.qq.e.ads.RewardvideoLandscapeADActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 77
    const-string v0, "Tencent"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .line 87
    const-string v0, "com.qq.e.ads.ADActivity"

    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-static {}, Lcom/anythink/network/gdt/GDTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStatus()Ljava/util/List;
    .registers 3

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    const-string v1, "com.qq.e.comm.DownloadService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0
.end method

.method public declared-synchronized initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 52
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/gdt/GDTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 53
    monitor-exit p0

    return-void

    .line 51
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_1
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_20

    .line 59
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 62
    goto :goto_21

    .line 63
    :cond_20
    const/4 p1, 0x1

    .line 66
    :goto_21
    if-eqz p3, :cond_2d

    .line 67
    if-eqz p1, :cond_2a

    .line 68
    invoke-interface {p3}, Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;->onSuccess()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2f

    monitor-exit p0

    return-void

    .line 70
    :cond_2a
    :try_start_2a
    invoke-interface {p3}, Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;->onError()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2f

    .line 73
    :cond_2d
    monitor-exit p0

    return-void

    .line 57
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
