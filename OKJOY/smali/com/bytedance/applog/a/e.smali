.class public Lcom/bytedance/applog/a/e;
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
        "Lcom/bytedance/applog/d/a;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/bytedance/applog/a/e;


# instance fields
.field public a:Landroid/app/Application;

.field private c:Lcom/bytedance/applog/a/a;

.field private d:Z

.field private e:Lcom/bytedance/applog/b/h;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/applog/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bytedance/applog/d/b;

.field private h:Lcom/bytedance/applog/b/i;

.field private i:Landroid/os/Handler;

.field private j:Lcom/bytedance/applog/a/l;

.field private k:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 71
    sget-object v0, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    if-eqz v0, :cond_a

    .line 72
    sget-object v0, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/applog/a/e;->b([Ljava/lang/String;)V

    .line 74
    :cond_a
    return-void
.end method

.method public static a(Lcom/bytedance/applog/d/a;)V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 319
    sget-object v1, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    .line 320
    if-nez v1, :cond_f

    .line 321
    const-string v0, "Init comes First!"

    invoke-static {v0, v7}, Lcom/bytedance/applog/util/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    invoke-static {p0}, Lcom/bytedance/applog/b/b;->a(Lcom/bytedance/applog/d/a;)V

    .line 342
    :cond_e
    :goto_e
    return-void

    .line 325
    :cond_f
    iget-wide v2, p0, Lcom/bytedance/applog/d/a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    .line 326
    invoke-static {v7}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 329
    :cond_1a
    instance-of v0, p0, Lcom/bytedance/applog/d/i;

    if-eqz v0, :cond_29

    move-object v0, p0

    .line 331
    check-cast v0, Lcom/bytedance/applog/d/i;

    iget-object v2, v1, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/h;->l()I

    move-result v2

    iput v2, v0, Lcom/bytedance/applog/d/i;->i:I

    .line 334
    :cond_29
    iget-object v2, v1, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    monitor-enter v2

    .line 335
    :try_start_2c
    iget-object v0, v1, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 336
    iget-object v3, v1, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_4b

    .line 338
    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 339
    iget-object v0, v1, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    iget-object v0, v1, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 337
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public static a([Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 355
    sget-object v0, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    .line 356
    if-nez v0, :cond_f

    .line 357
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Init comes First!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 362
    :goto_e
    return-void

    .line 360
    :cond_f
    iget-object v1, v0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, v0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_e
.end method

.method public static b()Lcom/bytedance/applog/a/e;
    .registers 2

    .prologue
    .line 81
    sget-object v0, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    if-nez v0, :cond_13

    .line 82
    const-class v1, Lcom/bytedance/applog/a/e;

    monitor-enter v1

    .line 83
    :try_start_7
    sget-object v0, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    .line 84
    if-nez v0, :cond_12

    .line 85
    new-instance v0, Lcom/bytedance/applog/a/e;

    invoke-direct {v0}, Lcom/bytedance/applog/a/e;-><init>()V

    .line 86
    sput-object v0, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    .line 88
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 90
    :cond_13
    sget-object v0, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    return-object v0

    .line 88
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

    .line 232
    iget-object v2, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    monitor-enter v2

    .line 233
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 234
    iget-object v3, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 235
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_2e

    .line 237
    if-eqz p1, :cond_31

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 239
    array-length v3, p1

    move v2, v1

    :goto_20
    if-ge v2, v3, :cond_31

    aget-object v4, p1, v2

    .line 240
    invoke-static {v4}, Lcom/bytedance/applog/d/a;->a(Ljava/lang/String;)Lcom/bytedance/applog/d/a;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 235
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 244
    :cond_31
    iget-object v2, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-virtual {v2, v0}, Lcom/bytedance/applog/b/h;->a(Ljava/util/ArrayList;)Z

    move-result v2

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_aa

    .line 247
    iget-object v3, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->u()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 248
    if-nez v2, :cond_4f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_b7

    .line 249
    :cond_4f
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/d/a;

    .line 254
    iget-object v5, p0, Lcom/bytedance/applog/a/e;->j:Lcom/bytedance/applog/a/l;

    invoke-virtual {v5, v0, v3}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/d/a;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 256
    invoke-direct {p0}, Lcom/bytedance/applog/a/e;->h()V

    .line 258
    :cond_77
    instance-of v5, v0, Lcom/bytedance/applog/d/h;

    if-eqz v5, :cond_106

    .line 259
    const/4 v1, 0x1

    .line 260
    invoke-static {v0}, Lcom/bytedance/applog/a/l;->a(Lcom/bytedance/applog/d/a;)Z

    move-result v0

    :goto_80
    move v2, v1

    move v1, v0

    .line 262
    goto :goto_60

    .line 263
    :cond_83
    if-eqz v2, :cond_8c

    .line 264
    if-eqz v1, :cond_ab

    .line 266
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    :cond_8c
    :goto_8c
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->g:Lcom/bytedance/applog/d/b;

    invoke-virtual {v0, v3}, Lcom/bytedance/applog/d/b;->a(Ljava/util/ArrayList;)V

    .line 275
    iget-boolean v0, p0, Lcom/bytedance/applog/a/e;->d:Z

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/bytedance/applog/a/e;->j:Lcom/bytedance/applog/a/l;

    invoke-virtual {v0}, Lcom/bytedance/applog/a/l;->b()Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    if-eqz v0, :cond_aa

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAutoActiveState()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 276
    invoke-virtual {p0}, Lcom/bytedance/applog/a/e;->e()Z

    .line 301
    :cond_aa
    :goto_aa
    return-void

    .line 269
    :cond_ab
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/h;->A()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8c

    .line 280
    :cond_b7
    iget-object v1, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 281
    :try_start_ba
    iget-object v2, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 282
    monitor-exit v1

    goto :goto_aa

    :catchall_c1
    move-exception v0

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_ba .. :try_end_c3} :catchall_c1

    throw v0

    .line 285
    :cond_c4
    new-instance v4, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    const-class v3, Lcom/bytedance/applog/collector/Collector;

    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 287
    new-array v6, v5, [Ljava/lang/String;

    move v2, v1

    move v3, v1

    .line 289
    :goto_d5
    if-ge v2, v5, :cond_f2

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/d/a;

    invoke-virtual {v1}, Lcom/bytedance/applog/d/a;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 291
    aget-object v1, v6, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 289
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d5

    .line 293
    :cond_f2
    const v0, 0x4b000

    if-lt v3, v0, :cond_fb

    .line 295
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 297
    :cond_fb
    const-string v0, "K_DATA"

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    invoke-virtual {v0, v4}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_aa

    :cond_106
    move v0, v1

    move v1, v2

    goto/16 :goto_80
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    invoke-static {}, Lcom/bytedance/applog/a/e;->d()Lcom/bytedance/applog/a/l;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/applog/a/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/bytedance/applog/a/l;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 98
    sget-object v1, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    if-eqz v1, :cond_a

    .line 99
    sget-object v0, Lcom/bytedance/applog/a/e;->b:Lcom/bytedance/applog/a/e;

    iget-object v0, v0, Lcom/bytedance/applog/a/e;->j:Lcom/bytedance/applog/a/l;

    .line 102
    :goto_9
    return-object v0

    .line 101
    :cond_a
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private g()V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->y()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 203
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->c:Lcom/bytedance/applog/a/a;

    if-nez v0, :cond_25

    .line 204
    new-instance v0, Lcom/bytedance/applog/a/a;

    iget-object v1, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/applog/a/a;-><init>(Landroid/app/Application;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/b/h;)V

    iput-object v0, p0, Lcom/bytedance/applog/a/e;->c:Lcom/bytedance/applog/a/a;

    .line 205
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->c:Lcom/bytedance/applog/a/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    :cond_25
    :goto_25
    return-void

    .line 207
    :cond_26
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->c:Lcom/bytedance/applog/a/a;

    if-eqz v0, :cond_25

    .line 208
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->c:Lcom/bytedance/applog/a/a;

    invoke-virtual {v0}, Lcom/bytedance/applog/a/a;->f()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/applog/a/e;->c:Lcom/bytedance/applog/a/a;

    goto :goto_25
.end method

.method private h()V
    .registers 9

    .prologue
    const/4 v7, 0x6

    .line 304
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_30

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packAndSend once, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/a/e;->j:Lcom/bytedance/applog/a/l;

    iget-object v1, v1, Lcom/bytedance/applog/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hadUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/a/e;->j:Lcom/bytedance/applog/a/l;

    invoke-virtual {v1}, Lcom/bytedance/applog/a/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    :cond_30
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    if-eqz v0, :cond_62

    .line 308
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/applog/a/f;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    iget-object v5, p0, Lcom/bytedance/applog/a/e;->g:Lcom/bytedance/applog/d/b;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/applog/a/f;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/d/b;)V

    invoke-virtual {v1, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/applog/a/h;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->g:Lcom/bytedance/applog/d/b;

    iget-object v5, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    iget-object v6, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bytedance/applog/a/h;-><init>(Landroid/content/Context;Lcom/bytedance/applog/d/b;Lcom/bytedance/applog/b/h;Lcom/bytedance/applog/b/i;)V

    invoke-virtual {v1, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    :cond_62
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/applog/d/a;Lcom/bytedance/applog/d/a;)I
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 366
    iget-wide v0, p1, Lcom/bytedance/applog/d/a;->a:J

    iget-wide v2, p2, Lcom/bytedance/applog/d/a;->a:J

    sub-long/2addr v0, v2

    .line 367
    cmp-long v2, v0, v4

    if-gez v2, :cond_d

    .line 368
    const/4 v0, -0x1

    .line 372
    :goto_c
    return v0

    .line 369
    :cond_d
    cmp-long v0, v0, v4

    if-lez v0, :cond_13

    .line 370
    const/4 v0, 0x1

    goto :goto_c

    .line 372
    :cond_13
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(Landroid/app/Application;Lcom/bytedance/applog/b/h;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/collector/a;)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    .line 108
    iput-object p1, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    .line 109
    new-instance v1, Lcom/bytedance/applog/d/b;

    invoke-direct {v1, p1, p3, p2}, Lcom/bytedance/applog/d/b;-><init>(Landroid/app/Application;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/b/h;)V

    iput-object v1, p0, Lcom/bytedance/applog/a/e;->g:Lcom/bytedance/applog/d/b;

    .line 110
    iput-object p2, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    .line 111
    iput-object p3, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    .line 112
    new-instance v1, Lcom/bytedance/applog/a/l;

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/applog/a/l;-><init>(Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/b/h;)V

    iput-object v1, p0, Lcom/bytedance/applog/a/e;->j:Lcom/bytedance/applog/a/l;

    .line 114
    iget-object v1, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    invoke-virtual {v1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 116
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "bd_tracker_w"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    .line 119
    iget-object v1, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    invoke-virtual {p2}, Lcom/bytedance/applog/b/h;->l()I

    move-result v1

    if-eqz v1, :cond_42

    :goto_3e
    invoke-static {v0}, Lcom/bytedance/applog/util/h;->a(Z)V

    .line 122
    return-void

    .line 121
    :cond_42
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 34
    check-cast p1, Lcom/bytedance/applog/d/a;

    check-cast p2, Lcom/bytedance/applog/d/a;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;Lcom/bytedance/applog/d/a;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/bytedance/applog/a/e;->d:Z

    .line 215
    new-instance v1, Lcom/bytedance/applog/a/b;

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/applog/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;)V

    .line 216
    iget-object v2, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    if-eqz v2, :cond_1b

    .line 217
    iget-object v2, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 220
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public f()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    .line 224
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2f

    .line 225
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/applog/a/b;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/applog/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;)V

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/applog/a/g;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    iget-object v5, p0, Lcom/bytedance/applog/a/e;->j:Lcom/bytedance/applog/a/l;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/applog/a/g;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/a/l;)V

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    :cond_2f
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v7, 0x6

    const/4 v2, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_11e

    .line 196
    :pswitch_b
    invoke-static {v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 198
    :cond_e
    :goto_e
    return v6

    .line 128
    :pswitch_f
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->z()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/applog/util/i;->a:Z

    .line 129
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->e()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 130
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->u()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bd_tracker_n"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    .line 135
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 138
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    :cond_54
    const-string v0, "net|worker start"

    invoke-static {v0, v3}, Lcom/bytedance/applog/util/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :cond_59
    :goto_59
    invoke-static {}, Lcom/bytedance/applog/b/b;->a()V

    goto :goto_e

    .line 144
    :cond_5d
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_59

    .line 152
    :pswitch_68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    new-instance v1, Lcom/bytedance/applog/a/j;

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->j:Lcom/bytedance/applog/a/l;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/applog/a/j;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/a/l;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/bytedance/applog/a/d;

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/applog/a/d;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/b/h;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/bytedance/applog/a/i;

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->g:Lcom/bytedance/applog/d/b;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/applog/a/i;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/d/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/bytedance/applog/a/k;

    iget-object v2, p0, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/applog/a/e;->g:Lcom/bytedance/applog/d/b;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->e:Lcom/bytedance/applog/b/h;

    iget-object v5, p0, Lcom/bytedance/applog/a/e;->h:Lcom/bytedance/applog/b/i;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/applog/a/k;-><init>(Landroid/content/Context;Lcom/bytedance/applog/d/b;Lcom/bytedance/applog/b/h;Lcom/bytedance/applog/b/i;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ab
    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/a/c;

    .line 159
    invoke-virtual {v0}, Lcom/bytedance/applog/a/c;->h()J

    move-result-wide v2

    .line 160
    const-wide/32 v4, 0x337f9800

    cmp-long v4, v2, v4

    if-gez v4, :cond_ab

    .line 161
    iget-object v4, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    iget-object v5, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v5, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ab

    .line 165
    :cond_ce
    invoke-direct {p0}, Lcom/bytedance/applog/a/e;->g()V

    goto/16 :goto_e

    .line 169
    :pswitch_d3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/applog/a/c;

    .line 170
    invoke-virtual {v0}, Lcom/bytedance/applog/a/c;->g()Z

    move-result v1

    if-nez v1, :cond_e

    .line 171
    invoke-virtual {v0}, Lcom/bytedance/applog/a/c;->h()J

    move-result-wide v2

    .line 172
    const-wide/32 v4, 0x337f9800

    cmp-long v1, v2, v4

    if-gez v1, :cond_f3

    .line 173
    iget-object v1, p0, Lcom/bytedance/applog/a/e;->i:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bytedance/applog/a/e;->k:Landroid/os/Handler;

    invoke-virtual {v4, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    :cond_f3
    invoke-direct {p0}, Lcom/bytedance/applog/a/e;->g()V

    goto/16 :goto_e

    .line 181
    :pswitch_f8
    invoke-direct {p0, v3}, Lcom/bytedance/applog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_e

    .line 185
    :pswitch_fd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/applog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_e

    .line 189
    :pswitch_108
    iget-object v1, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 190
    :try_start_10b
    iget-object v0, p0, Lcom/bytedance/applog/a/e;->f:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/applog/a/l;->d()Lcom/bytedance/applog/a/l$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    monitor-exit v1
    :try_end_115
    .catchall {:try_start_10b .. :try_end_115} :catchall_11a

    .line 192
    invoke-direct {p0, v3}, Lcom/bytedance/applog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_e

    .line 191
    :catchall_11a
    move-exception v0

    :try_start_11b
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw v0

    .line 126
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
