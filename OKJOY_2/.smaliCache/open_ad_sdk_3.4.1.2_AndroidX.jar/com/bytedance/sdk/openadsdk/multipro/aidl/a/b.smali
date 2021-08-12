.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;
.source "AppDownloadListenerManagerImpl.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

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

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;
    .registers 2

    .line 36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    if-nez v0, :cond_17

    .line 37
    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    monitor-enter v0

    .line 38
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    if-nez v1, :cond_12

    .line 39
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    .line 41
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 43
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    return-object v0
.end method

.method private a(Landroid/os/RemoteCallbackList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 132
    const-string v0, "MultiProcess"

    if-eqz p1, :cond_30

    .line 133
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_29

    .line 134
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_22

    .line 136
    :try_start_b
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    .line 137
    if-eqz v3, :cond_18

    .line 138
    check-cast v3, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    .line 142
    :cond_18
    goto :goto_1f

    .line 140
    :catchall_19
    move-exception v3

    .line 141
    :try_start_1a
    const-string v4, "recycleRes1 throw Exception : "

    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 144
    :cond_22
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 145
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    .line 146
    goto :goto_30

    .line 148
    :catchall_29
    move-exception p1

    .line 149
    const-string v1, "recycleRes2 throw Exception : "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 150
    :cond_30
    :goto_30
    nop

    .line 151
    :goto_31
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    monitor-enter p0

    .line 84
    :try_start_a
    sget-object v3, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_112

    if-nez v3, :cond_10

    .line 85
    monitor-exit p0

    return-void

    .line 88
    :cond_10
    :try_start_10
    const-string v3, "recycleRes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 89
    sget-object v3, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 90
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a(Landroid/os/RemoteCallbackList;)V

    .line 91
    const-string v3, "DMLibManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aidl executeMultiProcessAppDownloadCallBack recycle res, materialMd5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "DMLibManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aidl executeMultiProcessAppDownloadCallBack recycle res, mListenerMap sizee:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_112

    .line 93
    monitor-exit p0

    return-void

    .line 95
    :cond_5b
    :try_start_5b
    sget-object v3, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/RemoteCallbackList;

    .line 99
    if-eqz v12, :cond_111

    .line 100
    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_112

    .line 101
    const/4 v0, 0x0

    move v14, v0

    :goto_6c
    if-ge v14, v13, :cond_10e

    .line 103
    :try_start_6e
    invoke-virtual {v12, v14}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    .line 104
    if-eqz v3, :cond_e6

    .line 105
    const-string v0, "onIdle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 106
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onIdle()V

    move-wide/from16 v4, p3

    goto/16 :goto_e8

    .line 107
    :cond_86
    const-string v0, "onDownloadActive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 108
    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v4, p3

    goto :goto_e8

    .line 109
    :cond_9c
    const-string v0, "onDownloadPaused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 110
    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v4, p3

    goto :goto_e8

    .line 111
    :cond_b2
    const-string v0, "onDownloadFailed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 112
    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v4, p3

    goto :goto_e8

    .line 113
    :cond_c8
    const-string v0, "onDownloadFinished"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_ce
    .catchall {:try_start_6e .. :try_end_ce} :catchall_e9

    if-eqz v0, :cond_d6

    .line 114
    move-wide/from16 v4, p3

    :try_start_d2
    invoke-interface {v3, v4, v5, v10, v11}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    .line 115
    :cond_d6
    move-wide/from16 v4, p3

    const-string v0, "onInstalled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 116
    invoke-interface {v3, v10, v11}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_e4

    goto :goto_e8

    .line 119
    :catchall_e4
    move-exception v0

    goto :goto_ec

    .line 104
    :cond_e6
    move-wide/from16 v4, p3

    .line 121
    :cond_e8
    :goto_e8
    goto :goto_10a

    .line 119
    :catchall_e9
    move-exception v0

    move-wide/from16 v4, p3

    .line 120
    :goto_ec
    :try_start_ec
    const-string v3, "MultiProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppDownloadListenerManagerImpl MultiProcess1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " throws Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :goto_10a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6c

    .line 123
    :cond_10e
    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_111
    .catchall {:try_start_ec .. :try_end_111} :catchall_112

    .line 127
    :cond_111
    goto :goto_131

    .line 125
    :catchall_112
    move-exception v0

    .line 126
    :try_start_113
    const-string v3, "MultiProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppDownloadListenerManagerImpl MultiProcess2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " throws Exception :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_131
    .catchall {:try_start_113 .. :try_end_131} :catchall_133

    .line 128
    :goto_131
    monitor-exit p0

    return-void

    .line 83
    :catchall_133
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public registerTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 50
    if-nez v0, :cond_f

    .line 51
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 53
    :cond_f
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 54
    sget-object p2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aidl registerTTAppDownloadListener, materialMd5:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DMLibManager"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aidl registerTTAppDownloadListener, mListenerMap size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    sget-object p2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    const-string v0, "DMLibManager"

    if-nez p2, :cond_1d

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aidl unregisterTTAppDownloadListener mListenerMap = null, materialMd5:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 65
    :cond_1d
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RemoteCallbackList;

    .line 66
    if-nez p2, :cond_3c

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aidl unregisterTTAppDownloadListener cbs = null, materialMd5:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 71
    :cond_3c
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a(Landroid/os/RemoteCallbackList;)V

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aidl unregisterTTAppDownloadListener, materialMd5:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "aidl unregisterTTAppDownloadListener, mListenerMap size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
