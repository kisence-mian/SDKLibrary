.class public Lcom/bytedance/embedapplog/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bytedance/embedapplog/d/a;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/bytedance/embedapplog/a/e;


# instance fields
.field public a:Landroid/app/Application;

.field private c:Lcom/bytedance/embedapplog/a/a;

.field private d:Z

.field private e:Lcom/bytedance/embedapplog/b/h;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bytedance/embedapplog/d/b;

.field private h:Lcom/bytedance/embedapplog/b/i;

.field private i:Landroid/os/Handler;

.field private j:Lcom/bytedance/embedapplog/a/k;

.field private k:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    if-eqz v0, :cond_a

    .line 71
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/a/e;->b([Ljava/lang/String;)V

    .line 73
    :cond_a
    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/d/a;)V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 315
    sget-object v1, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    .line 316
    if-nez v1, :cond_f

    .line 317
    const-string v0, "Init comes First!"

    invoke-static {v0, v7}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    invoke-static {p0}, Lcom/bytedance/embedapplog/b/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 338
    :cond_e
    :goto_e
    return-void

    .line 321
    :cond_f
    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    .line 322
    invoke-static {v7}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 325
    :cond_1a
    instance-of v0, p0, Lcom/bytedance/embedapplog/d/i;

    if-eqz v0, :cond_29

    move-object v0, p0

    .line 327
    check-cast v0, Lcom/bytedance/embedapplog/d/i;

    iget-object v2, v1, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->l()I

    move-result v2

    iput v2, v0, Lcom/bytedance/embedapplog/d/i;->i:I

    .line 330
    :cond_29
    iget-object v2, v1, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    monitor-enter v2

    .line 331
    :try_start_2c
    iget-object v0, v1, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    iget-object v3, v1, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_4f

    .line 334
    rem-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    if-eqz v2, :cond_e

    .line 335
    iget-object v2, v1, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-object v2, v1, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    if-nez v0, :cond_52

    const-wide/16 v0, 0x1f4

    :goto_4b
    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e

    .line 333
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    .line 336
    :cond_52
    const-wide/16 v0, 0xfa

    goto :goto_4b
.end method

.method public static a([Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 351
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    .line 352
    if-nez v0, :cond_f

    .line 353
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Init comes First!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 358
    :goto_e
    return-void

    .line 356
    :cond_f
    iget-object v1, v0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, v0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_e
.end method

.method public static b()Lcom/bytedance/embedapplog/a/e;
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    if-nez v0, :cond_13

    .line 81
    const-class v1, Lcom/bytedance/embedapplog/a/e;

    monitor-enter v1

    .line 82
    :try_start_7
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    .line 83
    if-nez v0, :cond_12

    .line 84
    new-instance v0, Lcom/bytedance/embedapplog/a/e;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/a/e;-><init>()V

    .line 85
    sput-object v0, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    .line 87
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 89
    :cond_13
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    return-object v0

    .line 87
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private b([Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    monitor-enter v2

    .line 225
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 226
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 227
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_2e

    .line 229
    if-eqz p1, :cond_31

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 231
    array-length v3, p1

    move v2, v1

    :goto_20
    if-ge v2, v3, :cond_31

    aget-object v4, p1, v2

    .line 232
    invoke-static {v4}, Lcom/bytedance/embedapplog/d/a;->a(Ljava/lang/String;)Lcom/bytedance/embedapplog/d/a;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 227
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 236
    :cond_31
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2, v0}, Lcom/bytedance/embedapplog/b/h;->a(Ljava/util/ArrayList;)Z

    move-result v2

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_aa

    .line 239
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->u()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 240
    if-nez v2, :cond_4f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_b7

    .line 241
    :cond_4f
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/a;

    .line 246
    iget-object v5, p0, Lcom/bytedance/embedapplog/a/e;->j:Lcom/bytedance/embedapplog/a/k;

    invoke-virtual {v5, v0, v3}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 248
    invoke-direct {p0}, Lcom/bytedance/embedapplog/a/e;->g()V

    .line 250
    :cond_77
    instance-of v5, v0, Lcom/bytedance/embedapplog/d/h;

    if-eqz v5, :cond_10b

    .line 251
    const/4 v1, 0x1

    .line 252
    invoke-static {v0}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;)Z

    move-result v0

    :goto_80
    move v2, v1

    move v1, v0

    .line 254
    goto :goto_60

    .line 255
    :cond_83
    if-eqz v2, :cond_8c

    .line 256
    if-eqz v1, :cond_ab

    .line 258
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    :cond_8c
    :goto_8c
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v0, v3}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/ArrayList;)V

    .line 267
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/e;->d:Z

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->j:Lcom/bytedance/embedapplog/a/k;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    if-eqz v0, :cond_aa

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAutoActiveState()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 268
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/e;->e()Z

    .line 297
    :cond_aa
    :goto_aa
    return-void

    .line 261
    :cond_ab
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/h;->A()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8c

    .line 272
    :cond_b7
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 273
    :try_start_ba
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    monitor-exit v1

    goto :goto_aa

    :catchall_c1
    move-exception v0

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_ba .. :try_end_c3} :catchall_c1

    throw v0

    .line 277
    :cond_c4
    new-instance v4, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    const-class v3, Lcom/bytedance/embedapplog/collector/Collector;

    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 279
    new-array v6, v5, [Ljava/lang/String;

    move v2, v1

    move v3, v1

    .line 281
    :goto_d5
    if-ge v2, v5, :cond_f2

    .line 282
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/d/a;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/d/a;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 283
    aget-object v1, v6, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 281
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d5

    .line 285
    :cond_f2
    const v0, 0x4b000

    if-lt v3, v0, :cond_fb

    .line 287
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 289
    :cond_fb
    const-string v0, "EMBED_K_DATA"

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :try_start_100
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    invoke-virtual {v0, v4}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_105} :catch_106

    goto :goto_aa

    .line 292
    :catch_106
    move-exception v0

    .line 293
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_aa

    :cond_10b
    move v0, v1

    move v1, v2

    goto/16 :goto_80
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 93
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->d()Lcom/bytedance/embedapplog/a/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/embedapplog/a/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/bytedance/embedapplog/a/k;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 97
    sget-object v1, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    if-eqz v1, :cond_a

    .line 98
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->b:Lcom/bytedance/embedapplog/a/e;

    iget-object v0, v0, Lcom/bytedance/embedapplog/a/e;->j:Lcom/bytedance/embedapplog/a/k;

    .line 101
    :goto_9
    return-object v0

    .line 100
    :cond_a
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private f()V
    .registers 5

    .prologue
    .line 201
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->y()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 202
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->c:Lcom/bytedance/embedapplog/a/a;

    if-nez v0, :cond_25

    .line 203
    new-instance v0, Lcom/bytedance/embedapplog/a/a;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/a/a;-><init>(Landroid/app/Application;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/e;->c:Lcom/bytedance/embedapplog/a/a;

    .line 204
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->c:Lcom/bytedance/embedapplog/a/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    :cond_25
    :goto_25
    return-void

    .line 206
    :cond_26
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->c:Lcom/bytedance/embedapplog/a/a;

    if-eqz v0, :cond_25

    .line 207
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->c:Lcom/bytedance/embedapplog/a/a;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/a;->f()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/e;->c:Lcom/bytedance/embedapplog/a/a;

    goto :goto_25
.end method

.method private g()V
    .registers 9

    .prologue
    const/4 v7, 0x6

    .line 300
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_30

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packAndSend once, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->j:Lcom/bytedance/embedapplog/a/k;

    iget-object v1, v1, Lcom/bytedance/embedapplog/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hadUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->j:Lcom/bytedance/embedapplog/a/k;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/a/k;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    :cond_30
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    if-eqz v0, :cond_62

    .line 304
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/embedapplog/a/f;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/d/b;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/embedapplog/a/f;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/d/b;)V

    invoke-virtual {v1, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/embedapplog/a/g;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/d/b;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    iget-object v6, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bytedance/embedapplog/a/g;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V

    invoke-virtual {v1, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    :cond_62
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/embedapplog/d/a;Lcom/bytedance/embedapplog/d/a;)I
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 362
    iget-wide v0, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    iget-wide v2, p2, Lcom/bytedance/embedapplog/d/a;->a:J

    sub-long/2addr v0, v2

    .line 363
    cmp-long v2, v0, v4

    if-gez v2, :cond_d

    .line 364
    const/4 v0, -0x1

    .line 368
    :goto_c
    return v0

    .line 365
    :cond_d
    cmp-long v0, v0, v4

    if-lez v0, :cond_13

    .line 366
    const/4 v0, 0x1

    goto :goto_c

    .line 368
    :cond_13
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(Landroid/app/Application;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/collector/a;)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    .line 107
    iput-object p1, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    .line 108
    new-instance v1, Lcom/bytedance/embedapplog/d/b;

    invoke-direct {v1, p1, p3, p2}, Lcom/bytedance/embedapplog/d/b;-><init>(Landroid/app/Application;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V

    iput-object v1, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/d/b;

    .line 109
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    .line 110
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    .line 111
    new-instance v1, Lcom/bytedance/embedapplog/a/k;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/embedapplog/a/k;-><init>(Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V

    iput-object v1, p0, Lcom/bytedance/embedapplog/a/e;->j:Lcom/bytedance/embedapplog/a/k;

    .line 113
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    invoke-virtual {v1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 115
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "bd_tracker_w"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    .line 118
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/b/h;->l()I

    move-result v1

    if-eqz v1, :cond_42

    :goto_3e
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/g;->a(Z)V

    .line 121
    return-void

    .line 120
    :cond_42
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 33
    check-cast p1, Lcom/bytedance/embedapplog/d/a;

    check-cast p2, Lcom/bytedance/embedapplog/d/a;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;Lcom/bytedance/embedapplog/d/a;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a/e;->d:Z

    .line 214
    new-instance v1, Lcom/bytedance/embedapplog/a/b;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/embedapplog/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;)V

    .line 215
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    if-eqz v2, :cond_1b

    .line 216
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 219
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v7, 0x6

    const/4 v2, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_11e

    .line 195
    :pswitch_b
    invoke-static {v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 197
    :cond_e
    :goto_e
    return v6

    .line 127
    :pswitch_f
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->z()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/util/h;->a:Z

    .line 128
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->e()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 129
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->u()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 130
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bd_tracker_n"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 132
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    .line 134
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 137
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    :cond_54
    const-string v0, "net|worker start"

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    :cond_59
    :goto_59
    invoke-static {}, Lcom/bytedance/embedapplog/b/b;->a()V

    goto :goto_e

    .line 143
    :cond_5d
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_59

    .line 151
    :pswitch_68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    new-instance v1, Lcom/bytedance/embedapplog/a/i;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->j:Lcom/bytedance/embedapplog/a/k;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/embedapplog/a/i;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/a/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/bytedance/embedapplog/a/d;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/embedapplog/a/d;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/bytedance/embedapplog/a/h;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/d/b;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/embedapplog/a/h;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/d/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/bytedance/embedapplog/a/j;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/d/b;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->e:Lcom/bytedance/embedapplog/b/h;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/e;->h:Lcom/bytedance/embedapplog/b/i;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/embedapplog/a/j;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ab
    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/a/c;

    .line 158
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/c;->h()J

    move-result-wide v2

    .line 159
    const-wide/32 v4, 0x337f9800

    cmp-long v4, v2, v4

    if-gez v4, :cond_ab

    .line 160
    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v5, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ab

    .line 164
    :cond_ce
    invoke-direct {p0}, Lcom/bytedance/embedapplog/a/e;->f()V

    goto/16 :goto_e

    .line 168
    :pswitch_d3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/embedapplog/a/c;

    .line 169
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/c;->g()Z

    move-result v1

    if-nez v1, :cond_e

    .line 170
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/c;->h()J

    move-result-wide v2

    .line 171
    const-wide/32 v4, 0x337f9800

    cmp-long v1, v2, v4

    if-gez v1, :cond_f3

    .line 172
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->i:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v4, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
    :cond_f3
    invoke-direct {p0}, Lcom/bytedance/embedapplog/a/e;->f()V

    goto/16 :goto_e

    .line 180
    :pswitch_f8
    invoke-direct {p0, v3}, Lcom/bytedance/embedapplog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_e

    .line 184
    :pswitch_fd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_e

    .line 188
    :pswitch_108
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 189
    :try_start_10b
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->f:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/embedapplog/a/k;->d()Lcom/bytedance/embedapplog/a/k$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    monitor-exit v1
    :try_end_115
    .catchall {:try_start_10b .. :try_end_115} :catchall_11a

    .line 191
    invoke-direct {p0, v3}, Lcom/bytedance/embedapplog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_e

    .line 190
    :catchall_11a
    move-exception v0

    :try_start_11b
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw v0

    .line 125
    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_68
        :pswitch_b
        :pswitch_f8
        :pswitch_fd
        :pswitch_d3
        :pswitch_108
    .end packed-switch
.end method
