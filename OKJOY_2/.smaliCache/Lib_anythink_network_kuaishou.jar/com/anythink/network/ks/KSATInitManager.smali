.class public Lcom/anythink/network/ks/KSATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/ks/KSATInitManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/anythink/network/ks/KSATInitManager;


# instance fields
.field private b:Ljava/lang/String;

.field private d:Landroid/os/Handler;

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

    .line 24
    const-class v0, Lcom/anythink/network/ks/KSATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/ks/KSATInitManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->e:Ljava/util/Map;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->d:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/ks/KSATInitManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/anythink/network/ks/KSATInitManager;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/anythink/network/ks/KSATInitManager;
    .registers 2

    const-class v0, Lcom/anythink/network/ks/KSATInitManager;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/anythink/network/ks/KSATInitManager;->c:Lcom/anythink/network/ks/KSATInitManager;

    if-nez v1, :cond_e

    .line 45
    new-instance v1, Lcom/anythink/network/ks/KSATInitManager;

    invoke-direct {v1}, Lcom/anythink/network/ks/KSATInitManager;-><init>()V

    sput-object v1, Lcom/anythink/network/ks/KSATInitManager;->c:Lcom/anythink/network/ks/KSATInitManager;

    .line 47
    :cond_e
    sget-object v1, Lcom/anythink/network/ks/KSATInitManager;->c:Lcom/anythink/network/ks/KSATInitManager;
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

    .line 40
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 88
    const-string v0, "Kuaishou"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .line 98
    const-string v0, "com.kwad.sdk.api.KsAdSDK"

    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .registers 2

    .line 93
    invoke-static {}, Lcom/anythink/network/ks/KSATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

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
    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/ks/KSATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/ks/KSATInitManager$a;)V
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

.method public declared-synchronized initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/ks/KSATInitManager$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/network/ks/KSATInitManager$a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_1
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 59
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->b:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_26

    .line 77
    :cond_20
    if-eqz p3, :cond_32

    .line 78
    invoke-interface {p3}, Lcom/anythink/network/ks/KSATInitManager$a;->onFinish()V

    goto :goto_32

    .line 61
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/network/ks/KSATInitManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/network/ks/KSATInitManager$1;-><init>(Lcom/anythink/network/ks/KSATInitManager;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/network/ks/KSATInitManager$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_34

    monitor-exit p0

    return-void

    .line 83
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 55
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method
