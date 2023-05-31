.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;
.source "RewardAdVideoListenerManagerImpl.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    if-nez v0, :cond_13

    .line 38
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    monitor-enter v1

    .line 39
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    if-nez v0, :cond_12

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    .line 42
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 44
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    return-object v0

    .line 42
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 13

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->a:Ljava/util/Map;

    if-eqz v0, :cond_8c

    .line 64
    const-string v0, "recycleRes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 65
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    move-object v2, v0

    .line 70
    :goto_16
    if-eqz v2, :cond_8c

    .line 71
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_6d
    .catchall {:try_start_1 .. :try_end_1b} :catchall_9a

    move-result v3

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    if-ge v1, v3, :cond_dd

    .line 74
    :try_start_20
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    .line 75
    if-eqz v0, :cond_33

    .line 76
    const-string v4, "onAdShow"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 77
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->onAdShow()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_33} :catch_4d
    .catchall {:try_start_20 .. :try_end_33} :catchall_9a

    .line 72
    :cond_33
    :goto_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 67
    :cond_37
    :try_start_37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3f} :catch_6d
    .catchall {:try_start_37 .. :try_end_3f} :catchall_9a

    move-object v2, v0

    goto :goto_16

    .line 78
    :cond_41
    :try_start_41
    const-string v4, "onAdClose"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 79
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->onAdClose()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4c} :catch_4d
    .catchall {:try_start_41 .. :try_end_4c} :catchall_9a

    goto :goto_33

    .line 94
    :catch_4d
    move-exception v0

    .line 95
    :try_start_4e
    const-string v4, "MultiProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reward1 \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'  throws Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_6c} :catch_6d
    .catchall {:try_start_4e .. :try_end_6c} :catchall_9a

    goto :goto_33

    .line 105
    :catch_6d
    move-exception v0

    .line 106
    :try_start_6e
    const-string v1, "MultiProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reward2 \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'  throws Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_6e .. :try_end_8c} :catchall_9a

    .line 108
    :cond_8c
    :goto_8c
    monitor-exit p0

    return-void

    .line 80
    :cond_8e
    :try_start_8e
    const-string v4, "onVideoComplete"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 81
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->onVideoComplete()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_99} :catch_4d
    .catchall {:try_start_8e .. :try_end_99} :catchall_9a

    goto :goto_33

    .line 62
    :catchall_9a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_9d
    :try_start_9d
    const-string v4, "onVideoError"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 83
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->onVideoError()V

    goto :goto_33

    .line 84
    :cond_a9
    const-string v4, "onAdVideoBarClick"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 85
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->onAdVideoBarClick()V

    goto/16 :goto_33

    .line 86
    :cond_b6
    const-string v4, "onRewardVerify"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 87
    invoke-interface {v0, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->onRewardVerify(ZILjava/lang/String;)V

    goto/16 :goto_33

    .line 88
    :cond_c3
    const-string v4, "onSkippedVideo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 89
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->onSkippedVideo()V

    goto/16 :goto_33

    .line 90
    :cond_d0
    const-string v4, "recycleRes"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 91
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;->onDestroy()V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_db} :catch_4d
    .catchall {:try_start_9d .. :try_end_db} :catchall_9a

    goto/16 :goto_33

    .line 98
    :cond_dd
    :try_start_dd
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 100
    const-string v0, "recycleRes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 101
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_eb} :catch_6d
    .catchall {:try_start_dd .. :try_end_eb} :catchall_9a

    goto :goto_8c
.end method


# virtual methods
.method public executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public declared-synchronized registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 51
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 52
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 53
    monitor-exit p0

    return-void

    .line 50
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
