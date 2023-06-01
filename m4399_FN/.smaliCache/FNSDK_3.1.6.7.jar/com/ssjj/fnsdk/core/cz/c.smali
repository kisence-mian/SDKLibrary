.class Lcom/ssjj/fnsdk/core/cz/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic d:J

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic g:Lcom/ssjj/fnsdk/core/SsjjFNParams;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;JLjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 9

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cz/c;->c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-wide p4, p0, Lcom/ssjj/fnsdk/core/cz/c;->d:J

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/cz/c;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/cz/c;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/cz/c;->g:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/c;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_4
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/cz/c;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/cz/c;->c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    new-instance v7, Lcom/ssjj/fnsdk/core/cz/d;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/cz/c;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/ssjj/fnsdk/core/cz/c;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {v7, p0, v8, v9, v2}, Lcom/ssjj/fnsdk/core/cz/d;-><init>(Lcom/ssjj/fnsdk/core/cz/c;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djCheckOrder(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :try_start_1c
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_24
    const-wide/16 v4, 0x7d0

    :try_start_26
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-wide v6, p0, Lcom/ssjj/fnsdk/core/cz/c;->d:J

    const v2, 0x50013

    cmp-long v8, v4, v6

    if-lez v8, :cond_4a

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/c;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_4a
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iget-object v4, v4, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/cz/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x50010

    if-eq v4, v5, :cond_4

    :goto_5f
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    const-string v1, "check order loop end"

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_94

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    const-string v1, "check order time out !"

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/c;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v1, "\u67e5\u4e0d\u5230\u8be5\u8ba2\u5355!"

    if-eqz v0, :cond_8d

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/c;->g:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_94

    :cond_8d
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/c;->g:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-static {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/c;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
