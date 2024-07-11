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

.field private d:Z

.field private e:Ljava/util/Map;
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

    .line 29
    const-class v0, Lcom/anythink/network/toutiao/TTATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/toutiao/TTATInitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->e:Ljava/util/Map;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->c:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->d:Z

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInitManager;)Landroid/os/Handler;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInitManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInitManager;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/anythink/network/toutiao/TTATInitManager;
    .registers 2

    const-class v0, Lcom/anythink/network/toutiao/TTATInitManager;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/anythink/network/toutiao/TTATInitManager;->a:Lcom/anythink/network/toutiao/TTATInitManager;

    if-nez v1, :cond_e

    .line 45
    new-instance v1, Lcom/anythink/network/toutiao/TTATInitManager;

    invoke-direct {v1}, Lcom/anythink/network/toutiao/TTATInitManager;-><init>()V

    sput-object v1, Lcom/anythink/network/toutiao/TTATInitManager;->a:Lcom/anythink/network/toutiao/TTATInitManager;

    .line 47
    :cond_e
    sget-object v1, Lcom/anythink/network/toutiao/TTATInitManager;->a:Lcom/anythink/network/toutiao/TTATInitManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, "Pangle(Tiktok)"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .line 142
    const-string v0, "com.bytedance.sdk.openadsdk.TTAdSdk"

    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .registers 2

    .line 137
    invoke-static {}, Lcom/anythink/network/toutiao/TTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderStatus()Ljava/util/List;
    .registers 3

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    const-string v1, "com.bytedance.sdk.openadsdk.multipro.TTMultiProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "com.bytedance.sdk.openadsdk.TTFileProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
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

    .line 60
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/network/toutiao/TTATInitManager$a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 64
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/network/toutiao/TTATInitManager$a;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/network/toutiao/TTATInitManager$a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/anythink/network/toutiao/TTATInitManager$a;",
            ")V"
        }
    .end annotation

    .line 68
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    .line 70
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATInitManager;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_20

    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATInitManager;->b:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_20

    .line 116
    :cond_1a
    if-eqz p4, :cond_1f

    .line 117
    invoke-interface {p4}, Lcom/anythink/network/toutiao/TTATInitManager$a;->onFinish()V

    .line 120
    :cond_1f
    return-void

    .line 73
    :cond_20
    :goto_20
    iget-boolean p2, p0, Lcom/anythink/network/toutiao/TTATInitManager;->d:Z

    if-eqz p2, :cond_2c

    .line 74
    const/4 p2, 0x5

    new-array p2, p2, [I

    fill-array-data p2, :array_44

    move-object v4, p2

    goto :goto_34

    .line 79
    :cond_2c
    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p2, v0

    move-object v4, p2

    .line 85
    :goto_34
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATInitManager;->c:Landroid/os/Handler;

    new-instance v7, Lcom/anythink/network/toutiao/TTATInitManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/anythink/network/toutiao/TTATInitManager$1;-><init>(Lcom/anythink/network/toutiao/TTATInitManager;Landroid/content/Context;Ljava/lang/String;[ILcom/anythink/network/toutiao/TTATInitManager$a;Z)V

    invoke-virtual {p2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void

    :array_44
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public setIsOpenDirectDownload(Z)V
    .registers 2

    .line 123
    iput-boolean p1, p0, Lcom/anythink/network/toutiao/TTATInitManager;->d:Z

    .line 124
    return-void
.end method
