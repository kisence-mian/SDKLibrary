.class public Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;
.super Ljava/lang/Object;
.source "TTAppDownloadListenerGroup.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    :cond_d
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 4

    .line 18
    if-eqz p1, :cond_27

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 20
    if-eqz v1, :cond_19

    if-ne v1, p1, :cond_19

    .line 22
    return-void

    .line 24
    :cond_19
    goto :goto_8

    .line 25
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    monitor-enter v0

    .line 26
    :try_start_1d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw p1

    .line 29
    :cond_27
    :goto_27
    return-void
.end method

.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    .line 68
    move-object v1, p0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    monitor-enter v2

    .line 69
    :try_start_4
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 72
    if-nez v4, :cond_1d

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_26

    .line 75
    :cond_1d
    move-wide v5, p1

    move-wide v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_26
    goto :goto_a

    .line 78
    :cond_27
    monitor-exit v2

    .line 79
    return-void

    .line 78
    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    .line 98
    move-object v1, p0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    monitor-enter v2

    .line 99
    :try_start_4
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 102
    if-nez v4, :cond_1d

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_26

    .line 105
    :cond_1d
    move-wide v5, p1

    move-wide v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_26
    goto :goto_a

    .line 108
    :cond_27
    monitor-exit v2

    .line 109
    return-void

    .line 108
    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 132
    if-nez v2, :cond_1b

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    .line 135
    :cond_1b
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_1e
    goto :goto_9

    .line 138
    :cond_1f
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    .line 83
    move-object v1, p0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    monitor-enter v2

    .line 84
    :try_start_4
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 87
    if-nez v4, :cond_1d

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_26

    .line 90
    :cond_1d
    move-wide v5, p1

    move-wide v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_26
    goto :goto_a

    .line 93
    :cond_27
    monitor-exit v2

    .line 94
    return-void

    .line 93
    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onIdle()V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 57
    if-nez v2, :cond_1b

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    .line 60
    :cond_1b
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onIdle()V

    .line 62
    :goto_1e
    goto :goto_9

    .line 63
    :cond_1f
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 117
    if-nez v2, :cond_1b

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    .line 120
    :cond_1b
    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_1e
    goto :goto_9

    .line 123
    :cond_1f
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method
