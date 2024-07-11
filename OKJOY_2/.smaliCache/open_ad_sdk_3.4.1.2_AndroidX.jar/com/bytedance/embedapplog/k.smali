.class public Lcom/bytedance/embedapplog/k;
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
        "Ljava/util/Comparator<",
        "Lcom/bytedance/embedapplog/aq;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/bytedance/embedapplog/k;


# instance fields
.field public a:Landroid/app/Application;

.field private c:Lcom/bytedance/embedapplog/g;

.field private d:Z

.field private e:Lcom/bytedance/embedapplog/z;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/aq;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bytedance/embedapplog/as;

.field private h:Lcom/bytedance/embedapplog/aa;

.field private i:Landroid/os/Handler;

.field private j:Lcom/bytedance/embedapplog/q;

.field private k:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public static a()V
    .registers 2

    .line 70
    sget-object v0, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    if-eqz v0, :cond_8

    .line 71
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/k;->b([Ljava/lang/String;)V

    .line 73
    :cond_8
    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/aq;)V
    .registers 7

    .line 315
    sget-object v0, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    .line 316
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 317
    const-string v0, "Init comes First!"

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    invoke-static {p0}, Lcom/bytedance/embedapplog/t;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 319
    return-void

    .line 321
    :cond_e
    iget-wide v2, p0, Lcom/bytedance/embedapplog/aq;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 322
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 325
    :cond_19
    instance-of v1, p0, Lcom/bytedance/embedapplog/az;

    if-eqz v1, :cond_28

    .line 327
    move-object v1, p0

    check-cast v1, Lcom/bytedance/embedapplog/az;

    iget-object v2, v0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/z;->i()I

    move-result v2

    iput v2, v1, Lcom/bytedance/embedapplog/az;->i:I

    .line 330
    :cond_28
    iget-object v1, v0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 331
    :try_start_2b
    iget-object v2, v0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 332
    iget-object v3, v0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_50

    .line 334
    rem-int/lit8 p0, v2, 0xa

    if-nez p0, :cond_4f

    iget-object p0, v0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    if-eqz p0, :cond_4f

    .line 335
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-object p0, v0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    if-nez v2, :cond_4a

    const-wide/16 v2, 0x1f4

    goto :goto_4c

    :cond_4a
    const-wide/16 v2, 0xfa

    :goto_4c
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 338
    :cond_4f
    return-void

    .line 333
    :catchall_50
    move-exception p0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public static a([Ljava/lang/String;)V
    .registers 4

    .line 351
    sget-object v0, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    .line 352
    if-nez v0, :cond_f

    .line 353
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Init comes First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 354
    return-void

    .line 356
    :cond_f
    iget-object v1, v0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    if-eqz v1, :cond_21

    .line 357
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, v0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 360
    :cond_21
    return-void
.end method

.method public static b()Lcom/bytedance/embedapplog/k;
    .registers 2

    .line 80
    sget-object v0, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    if-nez v0, :cond_17

    .line 81
    const-class v0, Lcom/bytedance/embedapplog/k;

    monitor-enter v0

    .line 82
    :try_start_7
    sget-object v1, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    .line 83
    if-nez v1, :cond_12

    .line 84
    new-instance v1, Lcom/bytedance/embedapplog/k;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/k;-><init>()V

    .line 85
    sput-object v1, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    .line 87
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 89
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    return-object v0
.end method

.method private b([Ljava/lang/String;)V
    .registers 9

    .line 224
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 226
    iget-object v2, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 227
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_10d

    .line 229
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    .line 230
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 231
    array-length v2, p1

    move v3, v0

    :goto_1f
    if-ge v3, v2, :cond_2d

    aget-object v4, p1, v3

    .line 232
    invoke-static {v4}, Lcom/bytedance/embedapplog/aq;->a(Ljava/lang/String;)Lcom/bytedance/embedapplog/aq;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 236
    :cond_2d
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {p1, v1}, Lcom/bytedance/embedapplog/z;->a(Ljava/util/ArrayList;)Z

    move-result p1

    .line 238
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10c

    .line 239
    iget-object v2, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/z;->r()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 240
    if-nez p1, :cond_5a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x64

    if-le p1, v2, :cond_4c

    goto :goto_5a

    .line 272
    :cond_4c
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    monitor-enter p1

    .line 273
    :try_start_4f
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    monitor-exit p1

    goto/16 :goto_10c

    :catchall_57
    move-exception v0

    monitor-exit p1
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw v0

    .line 241
    :cond_5a
    :goto_5a
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 242
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    nop

    .line 244
    nop

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/embedapplog/aq;

    .line 246
    iget-object v4, p0, Lcom/bytedance/embedapplog/k;->j:Lcom/bytedance/embedapplog/q;

    invoke-virtual {v4, v3, p1}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/aq;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 248
    invoke-direct {p0}, Lcom/bytedance/embedapplog/k;->h()V

    .line 250
    :cond_84
    instance-of v4, v3, Lcom/bytedance/embedapplog/ay;

    if-eqz v4, :cond_91

    .line 251
    nop

    .line 252
    invoke-static {v3}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/aq;)Z

    move-result v0

    const/4 v2, 0x1

    move v6, v2

    move v2, v0

    move v0, v6

    .line 254
    :cond_91
    goto :goto_6d

    .line 255
    :cond_92
    if-eqz v0, :cond_a8

    .line 256
    const/4 v0, 0x7

    if-eqz v2, :cond_9d

    .line 258
    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_a8

    .line 261
    :cond_9d
    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/z;->x()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->g:Lcom/bytedance/embedapplog/as;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/as;->a(Ljava/util/ArrayList;)V

    .line 267
    iget-boolean p1, p0, Lcom/bytedance/embedapplog/k;->d:Z

    if-nez p1, :cond_c6

    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->j:Lcom/bytedance/embedapplog/q;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/q;->b()Z

    move-result p1

    if-eqz p1, :cond_c6

    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->i:Landroid/os/Handler;

    if-eqz p1, :cond_c6

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAutoActiveState()Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 268
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/k;->e()Z

    .line 270
    :cond_c6
    goto :goto_10c

    .line 277
    :cond_c7
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    const-class v3, Lcom/bytedance/embedapplog/collector/Collector;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 279
    new-array v3, v2, [Ljava/lang/String;

    .line 280
    nop

    .line 281
    move v4, v0

    :goto_d8
    if-ge v0, v2, :cond_f4

    .line 282
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/embedapplog/aq;

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/aq;->e()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 283
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_d8

    .line 285
    :cond_f4
    const v0, 0x4b000

    if-lt v4, v0, :cond_fd

    .line 287
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 289
    :cond_fd
    const-string v0, "EMBED_K_DATA"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :try_start_102
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_107} :catch_108

    .line 294
    goto :goto_10c

    .line 292
    :catch_108
    move-exception p1

    .line 293
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 297
    :cond_10c
    :goto_10c
    return-void

    .line 227
    :catchall_10d
    move-exception p1

    :try_start_10e
    monitor-exit v0
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_10d

    throw p1
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 93
    invoke-static {}, Lcom/bytedance/embedapplog/k;->d()Lcom/bytedance/embedapplog/q;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/embedapplog/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/bytedance/embedapplog/q;
    .registers 1

    .line 97
    sget-object v0, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    if-eqz v0, :cond_7

    .line 98
    iget-object v0, v0, Lcom/bytedance/embedapplog/k;->j:Lcom/bytedance/embedapplog/q;

    return-object v0

    .line 100
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 101
    return-object v0
.end method

.method private g()V
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->v()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 202
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->c:Lcom/bytedance/embedapplog/g;

    if-nez v0, :cond_2e

    .line 203
    new-instance v0, Lcom/bytedance/embedapplog/g;

    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    iget-object v3, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/g;-><init>(Landroid/app/Application;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/z;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/k;->c:Lcom/bytedance/embedapplog/g;

    .line 204
    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->i:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2e

    .line 206
    :cond_24
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->c:Lcom/bytedance/embedapplog/g;

    if-eqz v0, :cond_2e

    .line 207
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/g;->f()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/embedapplog/k;->c:Lcom/bytedance/embedapplog/g;

    .line 210
    :cond_2e
    :goto_2e
    return-void
.end method

.method private h()V
    .registers 9

    .line 300
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v0, :cond_2f

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packAndSend once, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->j:Lcom/bytedance/embedapplog/q;

    iget-object v1, v1, Lcom/bytedance/embedapplog/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hadUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->j:Lcom/bytedance/embedapplog/q;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/q;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->i:Landroid/os/Handler;

    if-eqz v0, :cond_60

    .line 304
    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/embedapplog/l;

    iget-object v3, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    iget-object v5, p0, Lcom/bytedance/embedapplog/k;->g:Lcom/bytedance/embedapplog/as;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/embedapplog/l;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/as;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/embedapplog/m;

    iget-object v4, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    iget-object v5, p0, Lcom/bytedance/embedapplog/k;->g:Lcom/bytedance/embedapplog/as;

    iget-object v6, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    iget-object v7, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/bytedance/embedapplog/m;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/as;Lcom/bytedance/embedapplog/z;Lcom/bytedance/embedapplog/aa;)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    :cond_60
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/embedapplog/aq;Lcom/bytedance/embedapplog/aq;)I
    .registers 5

    .line 364
    iget-wide v0, p1, Lcom/bytedance/embedapplog/aq;->a:J

    iget-wide p1, p2, Lcom/bytedance/embedapplog/aq;->a:J

    sub-long/2addr v0, p1

    .line 365
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_d

    .line 366
    const/4 p1, -0x1

    return p1

    .line 367
    :cond_d
    if-lez p1, :cond_11

    .line 368
    const/4 p1, 0x1

    return p1

    .line 370
    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/app/Application;Lcom/bytedance/embedapplog/z;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/f;)V
    .registers 6

    .line 107
    iput-object p1, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    .line 108
    new-instance v0, Lcom/bytedance/embedapplog/as;

    invoke-direct {v0, p1, p3, p2}, Lcom/bytedance/embedapplog/as;-><init>(Landroid/app/Application;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/z;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/k;->g:Lcom/bytedance/embedapplog/as;

    .line 109
    iput-object p2, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    .line 110
    iput-object p3, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    .line 111
    new-instance p1, Lcom/bytedance/embedapplog/q;

    iget-object p3, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-direct {p1, p3, v0}, Lcom/bytedance/embedapplog/q;-><init>(Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/z;)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/k;->j:Lcom/bytedance/embedapplog/q;

    .line 113
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 115
    new-instance p1, Landroid/os/HandlerThread;

    const-string p3, "bd_tracker_w"

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    .line 118
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/z;->i()I

    move-result p2

    if-eqz p2, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    invoke-static {p1}, Lcom/bytedance/embedapplog/bn;->a(Z)V

    .line 121
    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 33
    check-cast p1, Lcom/bytedance/embedapplog/aq;

    check-cast p2, Lcom/bytedance/embedapplog/aq;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;Lcom/bytedance/embedapplog/aq;)I

    move-result p1

    return p1
.end method

.method public e()Z
    .registers 5

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/k;->d:Z

    .line 214
    new-instance v1, Lcom/bytedance/embedapplog/h;

    iget-object v2, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/embedapplog/h;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/aa;)V

    .line 215
    iget-object v2, p0, Lcom/bytedance/embedapplog/k;->i:Landroid/os/Handler;

    if-eqz v2, :cond_19

    .line 216
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return v0

    .line 219
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    .line 375
    sget-object v0, Lcom/bytedance/embedapplog/k;->b:Lcom/bytedance/embedapplog/k;

    .line 376
    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    if-eqz v0, :cond_d

    .line 377
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->b()Z

    move-result v0

    return v0

    .line 379
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 11

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const-wide/32 v2, 0x337f9800

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_11a

    .line 195
    :pswitch_c
    invoke-static {v6}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_118

    .line 188
    :pswitch_11
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    monitor-enter v0

    .line 189
    :try_start_14
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/embedapplog/q;->d()Lcom/bytedance/embedapplog/q$a;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_23

    .line 191
    invoke-direct {p0, v6}, Lcom/bytedance/embedapplog/k;->b([Ljava/lang/String;)V

    .line 192
    goto/16 :goto_118

    .line 190
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1

    .line 168
    :pswitch_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/embedapplog/i;

    .line 169
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/i;->g()Z

    move-result v0

    if-nez v0, :cond_118

    .line 170
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/i;->h()J

    move-result-wide v5

    .line 171
    cmp-long v0, v5, v2

    if-gez v0, :cond_43

    .line 172
    iget-object v0, p0, Lcom/bytedance/embedapplog/k;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
    :cond_43
    invoke-direct {p0}, Lcom/bytedance/embedapplog/k;->g()V

    .line 176
    goto/16 :goto_118

    .line 184
    :pswitch_48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/k;->b([Ljava/lang/String;)V

    .line 185
    goto/16 :goto_118

    .line 180
    :pswitch_53
    invoke-direct {p0, v6}, Lcom/bytedance/embedapplog/k;->b([Ljava/lang/String;)V

    .line 181
    goto/16 :goto_118

    .line 151
    :pswitch_58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    new-instance v0, Lcom/bytedance/embedapplog/o;

    iget-object v5, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    iget-object v6, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    iget-object v7, p0, Lcom/bytedance/embedapplog/k;->j:Lcom/bytedance/embedapplog/q;

    invoke-direct {v0, v5, v6, v7}, Lcom/bytedance/embedapplog/o;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/q;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/bytedance/embedapplog/j;

    iget-object v5, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    iget-object v6, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    iget-object v7, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-direct {v0, v5, v6, v7}, Lcom/bytedance/embedapplog/j;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Lcom/bytedance/embedapplog/n;

    iget-object v5, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    iget-object v6, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    iget-object v7, p0, Lcom/bytedance/embedapplog/k;->g:Lcom/bytedance/embedapplog/as;

    invoke-direct {v0, v5, v6, v7}, Lcom/bytedance/embedapplog/n;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/as;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/bytedance/embedapplog/p;

    iget-object v5, p0, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    iget-object v6, p0, Lcom/bytedance/embedapplog/k;->g:Lcom/bytedance/embedapplog/as;

    iget-object v7, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    iget-object v8, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/bytedance/embedapplog/p;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/as;Lcom/bytedance/embedapplog/z;Lcom/bytedance/embedapplog/aa;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/i;

    .line 158
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/i;->h()J

    move-result-wide v5

    .line 159
    cmp-long v7, v5, v2

    if-gez v7, :cond_ba

    .line 160
    iget-object v7, p0, Lcom/bytedance/embedapplog/k;->i:Landroid/os/Handler;

    iget-object v8, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    invoke-virtual {v8, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 162
    :cond_ba
    goto :goto_9b

    .line 164
    :cond_bb
    invoke-direct {p0}, Lcom/bytedance/embedapplog/k;->g()V

    .line 165
    goto :goto_118

    .line 127
    :pswitch_bf
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/z;->w()Z

    move-result p1

    sput-boolean p1, Lcom/bytedance/embedapplog/bo;->a:Z

    .line 128
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->h:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/aa;->e()Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_10a

    .line 129
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/z;->r()Z

    move-result p1

    if-eqz p1, :cond_114

    .line 130
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "bd_tracker_n"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 132
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/bytedance/embedapplog/k;->i:Landroid/os/Handler;

    .line 134
    const/4 p1, 0x2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_104

    .line 137
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    :cond_104
    const-string p1, "net|worker start"

    invoke-static {p1, v6}, Lcom/bytedance/embedapplog/bo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    goto :goto_114

    .line 143
    :cond_10a
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object p1, p0, Lcom/bytedance/embedapplog/k;->k:Landroid/os/Handler;

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    :cond_114
    :goto_114
    invoke-static {}, Lcom/bytedance/embedapplog/t;->a()V

    .line 148
    nop

    .line 197
    :cond_118
    :goto_118
    return v4

    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_58
        :pswitch_c
        :pswitch_53
        :pswitch_48
        :pswitch_26
        :pswitch_11
    .end packed-switch
.end method
