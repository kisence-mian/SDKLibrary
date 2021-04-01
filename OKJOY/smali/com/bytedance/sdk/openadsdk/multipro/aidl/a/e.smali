.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;
.source "FullScreenVideoListenerManagerImpl.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    if-nez v0, :cond_13

    .line 33
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    monitor-enter v1

    .line 34
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    if-nez v0, :cond_12

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    .line 37
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 39
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    return-object v0

    .line 37
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a:Ljava/util/Map;

    if-eqz v0, :cond_8c

    .line 59
    const-string v0, "recycleRes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 60
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    move-object v2, v0

    .line 65
    :goto_16
    if-eqz v2, :cond_8c

    .line 66
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_6d
    .catchall {:try_start_1 .. :try_end_1b} :catchall_9a

    move-result v3

    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    if-ge v1, v3, :cond_c3

    .line 69
    :try_start_20
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;

    .line 70
    if-eqz v0, :cond_33

    .line 71
    const-string v4, "onAdShow"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 72
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;->onAdShow()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_33} :catch_4d
    .catchall {:try_start_20 .. :try_end_33} :catchall_9a

    .line 67
    :cond_33
    :goto_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 62
    :cond_37
    :try_start_37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3f} :catch_6d
    .catchall {:try_start_37 .. :try_end_3f} :catchall_9a

    move-object v2, v0

    goto :goto_16

    .line 73
    :cond_41
    :try_start_41
    const-string v4, "onAdClose"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 74
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;->onAdClose()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4c} :catch_4d
    .catchall {:try_start_41 .. :try_end_4c} :catchall_9a

    goto :goto_33

    .line 85
    :catch_4d
    move-exception v0

    .line 86
    :try_start_4e
    const-string v4, "MultiProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fullScreen2 method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " throws Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_6c} :catch_6d
    .catchall {:try_start_4e .. :try_end_6c} :catchall_9a

    goto :goto_33

    .line 96
    :catch_6d
    move-exception v0

    .line 97
    :try_start_6e
    const-string v1, "MultiProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullScreen1 method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " throws Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_6e .. :try_end_8c} :catchall_9a

    .line 99
    :cond_8c
    :goto_8c
    monitor-exit p0

    return-void

    .line 75
    :cond_8e
    :try_start_8e
    const-string v4, "onVideoComplete"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 76
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;->onVideoComplete()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_99} :catch_4d
    .catchall {:try_start_8e .. :try_end_99} :catchall_9a

    goto :goto_33

    .line 57
    :catchall_9a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_9d
    :try_start_9d
    const-string v4, "onSkippedVideo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 78
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;->onSkippedVideo()V

    goto :goto_33

    .line 79
    :cond_a9
    const-string v4, "onAdVideoBarClick"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 80
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;->onAdVideoBarClick()V

    goto/16 :goto_33

    .line 81
    :cond_b6
    const-string v4, "recycleRes"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 82
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;->onDestroy()V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_c1} :catch_4d
    .catchall {:try_start_9d .. :try_end_c1} :catchall_9a

    goto/16 :goto_33

    .line 89
    :cond_c3
    :try_start_c3
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 91
    const-string v0, "recycleRes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 92
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_d1} :catch_6d
    .catchall {:try_start_c3 .. :try_end_d1} :catchall_9a

    goto :goto_8c
.end method


# virtual methods
.method public executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public declared-synchronized registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 45
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 46
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 47
    monitor-exit p0

    return-void

    .line 44
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
