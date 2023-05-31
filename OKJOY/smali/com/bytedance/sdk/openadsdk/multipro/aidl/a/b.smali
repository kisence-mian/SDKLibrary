.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;
.source "AppDownloadListenerManagerImpl.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    if-nez v0, :cond_13

    .line 37
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    monitor-enter v1

    .line 38
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    if-nez v0, :cond_12

    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    .line 41
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 43
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    return-object v0

    .line 41
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Landroid/os/RemoteCallbackList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    if-eqz p1, :cond_2c

    .line 130
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_24

    move-result v2

    .line 131
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_2d

    .line 133
    :try_start_a
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    .line 134
    if-eqz v0, :cond_17

    .line 135
    check-cast v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_17} :catch_1b

    .line 131
    :cond_17
    :goto_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 137
    :catch_1b
    move-exception v0

    .line 138
    :try_start_1c
    const-string v3, "MultiProcess"

    const-string v4, "recycleRes1 throw Exception : "

    invoke-static {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_23} :catch_24

    goto :goto_17

    .line 145
    :catch_24
    move-exception v0

    .line 146
    const-string v1, "MultiProcess"

    const-string v2, "recycleRes2 throw Exception : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :cond_2c
    :goto_2c
    return-void

    .line 141
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 142
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_33} :catch_24

    goto :goto_2c
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 24

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    sget-object v4, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_57
    .catchall {:try_start_1 .. :try_end_3} :catchall_79

    if-nez v4, :cond_7

    .line 125
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 85
    :cond_7
    :try_start_7
    const-string v4, "recycleRes"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 86
    sget-object v4, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 87
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a(Landroid/os/RemoteCallbackList;)V

    .line 88
    const-string v4, "DMLibManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aidl executeMultiProcessAppDownloadCallBack recycle res, materialMd5:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "DMLibManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aidl executeMultiProcessAppDownloadCallBack recycle res, mListenerMap sizee:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_56} :catch_57
    .catchall {:try_start_7 .. :try_end_56} :catchall_79

    goto :goto_5

    .line 122
    :catch_57
    move-exception v4

    .line 123
    :try_start_58
    const-string v5, "MultiProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppDownloadListenerManagerImpl MultiProcess2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " throws Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_58 .. :try_end_78} :catchall_79

    goto :goto_5

    .line 81
    :catchall_79
    move-exception v4

    monitor-exit p0

    throw v4

    .line 92
    :cond_7c
    :try_start_7c
    sget-object v4, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 96
    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_8b} :catch_57
    .catchall {:try_start_7c .. :try_end_8b} :catchall_79

    move-result v13

    .line 98
    const/4 v5, 0x0

    move v12, v5

    :goto_8e
    if-ge v12, v13, :cond_134

    .line 100
    :try_start_90
    invoke-virtual {v4, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    .line 101
    if-eqz v5, :cond_a5

    .line 102
    const-string v6, "onIdle"

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 103
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onIdle()V

    .line 98
    :cond_a5
    :goto_a5
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto :goto_8e

    .line 104
    :cond_a9
    const-string v6, "onDownloadActive"

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 105
    invoke-interface/range {v5 .. v11}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_be} :catch_bf
    .catchall {:try_start_90 .. :try_end_be} :catchall_79

    goto :goto_a5

    .line 116
    :catch_bf
    move-exception v5

    .line 117
    :try_start_c0
    const-string v6, "MultiProcess"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppDownloadListenerManagerImpl MultiProcess1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " throws Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_e0} :catch_57
    .catchall {:try_start_c0 .. :try_end_e0} :catchall_79

    goto :goto_a5

    .line 106
    :cond_e1
    :try_start_e1
    const-string v6, "onDownloadPaused"

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f7

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 107
    invoke-interface/range {v5 .. v11}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    .line 108
    :cond_f7
    const-string v6, "onDownloadFailed"

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 109
    invoke-interface/range {v5 .. v11}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    .line 110
    :cond_10d
    const-string v6, "onDownloadFinished"

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 111
    move-wide/from16 v0, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    .line 112
    :cond_121
    const-string v6, "onInstalled"

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 113
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-interface {v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_132} :catch_bf
    .catchall {:try_start_e1 .. :try_end_132} :catchall_79

    goto/16 :goto_a5

    .line 120
    :cond_134
    :try_start_134
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_134 .. :try_end_137} :catch_57
    .catchall {:try_start_134 .. :try_end_137} :catchall_79

    goto/16 :goto_5
.end method


# virtual methods
.method public executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public registerTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 50
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 51
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aidl registerTTAppDownloadListener, materialMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aidl registerTTAppDownloadListener, mListenerMap size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    if-nez v0, :cond_1d

    .line 59
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aidl unregisterTTAppDownloadListener mListenerMap = null, materialMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_1c
    return-void

    .line 62
    :cond_1d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 63
    if-nez v0, :cond_40

    .line 64
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aidl unregisterTTAppDownloadListener cbs = null, materialMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 68
    :cond_40
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a(Landroid/os/RemoteCallbackList;)V

    .line 69
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aidl unregisterTTAppDownloadListener, materialMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aidl unregisterTTAppDownloadListener, mListenerMap size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method
