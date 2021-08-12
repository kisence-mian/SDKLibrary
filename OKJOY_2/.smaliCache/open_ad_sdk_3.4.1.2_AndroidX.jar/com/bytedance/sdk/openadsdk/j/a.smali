.class Lcom/bytedance/sdk/openadsdk/j/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ADThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/j/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 51
    move-object v9, p0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    .line 52
    move-object v0, p1

    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 6

    .line 120
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->d()Z

    move-result p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a7

    .line 122
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    .line 123
    if-eqz p1, :cond_a7

    .line 125
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_a8

    :cond_22
    goto :goto_36

    :sswitch_23
    const-string v1, "aidl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    const/4 v0, 0x1

    goto :goto_36

    :sswitch_2d
    const-string v1, "io"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    move v0, v2

    :goto_36
    const-string p2, "execute: reduce "

    const-string v1, "ADThreadPoolExecutor"

    packed-switch v0, :pswitch_data_b2

    goto :goto_a7

    .line 139
    :pswitch_3e
    nop

    .line 140
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_a7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->getCorePoolSize()I

    move-result p1

    if-eqz p1, :cond_a7

    .line 142
    :try_start_4c
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/j/a;->setCorePoolSize(I)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/j/a;->setMaximumPoolSize(I)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_68} :catch_69

    .line 147
    goto :goto_a7

    .line 145
    :catch_69
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 127
    :pswitch_72
    nop

    .line 128
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_a7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->getCorePoolSize()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a7

    .line 130
    :try_start_82
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/j/a;->setCorePoolSize(I)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/j/a;->setMaximumPoolSize(I)V

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9e} :catch_9f

    goto :goto_a7

    .line 133
    :catch_9f
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_a7
    :goto_a7
    return-void

    :sswitch_data_a8
    .sparse-switch
        0xd26 -> :sswitch_2d
        0x2daeb0 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_72
        :pswitch_3e
    .end packed-switch
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 5

    .line 57
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/j/g;

    if-eqz v0, :cond_f

    .line 58
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/b;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/j/g;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/j/b;-><init>(Lcom/bytedance/sdk/openadsdk/j/g;Lcom/bytedance/sdk/openadsdk/j/a;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1c

    .line 60
    :cond_f
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/a$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/j/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/j/a;Ljava/lang/Runnable;)V

    .line 66
    new-instance p1, Lcom/bytedance/sdk/openadsdk/j/b;

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/j/b;-><init>(Lcom/bytedance/sdk/openadsdk/j/g;Lcom/bytedance/sdk/openadsdk/j/a;)V

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 69
    :goto_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->d()Z

    move-result p1

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c2

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    .line 71
    if-eqz p1, :cond_c2

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c4

    :cond_3a
    goto :goto_4e

    :sswitch_3b
    const-string v2, "aidl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x1

    goto :goto_4e

    :sswitch_45
    const-string v2, "io"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x0

    :goto_4e
    const-string v0, "execute: increase "

    const-string v2, "ADThreadPoolExecutor"

    packed-switch v1, :pswitch_data_ce

    goto :goto_c2

    .line 88
    :pswitch_56
    const/4 v1, 0x4

    .line 89
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lt p1, v1, :cond_c2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->getCorePoolSize()I

    move-result p1

    if-eq p1, v1, :cond_c2

    .line 91
    :try_start_63
    sget p1, Lcom/bytedance/sdk/openadsdk/j/e;->a:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/j/a;->setMaximumPoolSize(I)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/j/a;->setCorePoolSize(I)V

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_82} :catch_83

    .line 96
    goto :goto_c2

    .line 94
    :catch_83
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    .line 75
    :pswitch_8c
    const/16 v1, 0x8

    .line 76
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lt p1, v1, :cond_c2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->getCorePoolSize()I

    move-result p1

    if-eq p1, v1, :cond_c2

    .line 78
    :try_start_9a
    sget p1, Lcom/bytedance/sdk/openadsdk/j/e;->a:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/j/a;->setMaximumPoolSize(I)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/j/a;->setCorePoolSize(I)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b9} :catch_ba

    goto :goto_c2

    .line 81
    :catch_ba
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_c2
    :goto_c2
    return-void

    nop

    :sswitch_data_c4
    .sparse-switch
        0xd26 -> :sswitch_45
        0x2daeb0 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_56
    .end packed-switch
.end method

.method public shutdown()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    const-string v1, "io"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    const-string v1, "aidl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_19

    .line 181
    :cond_15
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 182
    return-void

    .line 179
    :cond_19
    :goto_19
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    const-string v1, "io"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->a:Ljava/lang/String;

    const-string v1, "aidl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1a

    .line 173
    :cond_15
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1a
    :goto_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
