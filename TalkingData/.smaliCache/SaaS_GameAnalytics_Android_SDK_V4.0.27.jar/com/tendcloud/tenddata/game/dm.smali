.class public Lcom/tendcloud/tenddata/game/dm;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final b:Ljava/util/zip/CRC32;

.field private static final c:I = 0x5

.field private static final d:I = 0x6

.field private static final e:I = 0x7530

.field private static final h:Z = true

.field private static final i:I = 0x10000

.field private static volatile j:Lcom/tendcloud/tenddata/game/dm;

.field private static k:Landroid/os/HandlerThread;


# instance fields
.field private f:J

.field private g:Z

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-string v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/dm;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dm;->b:Ljava/util/zip/CRC32;

    .line 429
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/dm;->j:Lcom/tendcloud/tenddata/game/dm;

    .line 471
    :try_start_e
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->a()Lcom/tendcloud/tenddata/game/dm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1a

    .line 474
    goto :goto_1b

    .line 472
    :catchall_1a
    move-exception v0

    .line 475
    :goto_1b
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/dm;->f:J

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/dm;->g:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    .line 445
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleDataForward"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/dm;->k:Landroid/os/HandlerThread;

    .line 446
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 447
    new-instance v0, Lcom/tendcloud/tenddata/game/do;

    sget-object v1, Lcom/tendcloud/tenddata/game/dm;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/do;-><init>(Lcom/tendcloud/tenddata/game/dm;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    .line 466
    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->g()V

    .line 467
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dm;->d()V

    .line 468
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dm;
    .registers 2

    .line 434
    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->j:Lcom/tendcloud/tenddata/game/dm;

    if-nez v0, :cond_17

    .line 435
    const-class v0, Lcom/tendcloud/tenddata/game/dm;

    monitor-enter v0

    .line 436
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/dm;->j:Lcom/tendcloud/tenddata/game/dm;

    if-nez v1, :cond_12

    .line 437
    new-instance v1, Lcom/tendcloud/tenddata/game/dm;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dm;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/dm;->j:Lcom/tendcloud/tenddata/game/dm;

    .line 439
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 441
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->j:Lcom/tendcloud/tenddata/game/dm;

    return-object v0
.end method

.method private static a(Ljava/util/TreeSet;)Ljava/lang/String;
    .registers 4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/dq;

    .line 278
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dq;->c()[B

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dq;->c()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_38

    .line 279
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dq;->c()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_38
    goto :goto_e

    .line 283
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 284
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)V
    .registers 11

    .line 180
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 185
    return-void

    .line 188
    :cond_9
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->needToSendData()Z

    move-result v0

    if-nez v0, :cond_10

    .line 189
    return-void

    .line 192
    :cond_10
    nop

    .line 197
    const/4 v0, 0x0

    :try_start_12
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_108

    .line 198
    if-nez v1, :cond_2e

    .line 267
    if-eqz v1, :cond_2d

    .line 269
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 199
    :cond_2d
    return-void

    .line 203
    :cond_2e
    :try_start_2e
    invoke-static {}, Lcom/tendcloud/tenddata/game/dp;->a()Lcom/tendcloud/tenddata/game/dp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tendcloud/tenddata/game/dp;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/util/TreeSet;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_f3

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-gtz v3, :cond_40

    goto/16 :goto_f3

    .line 208
    :cond_40
    const-string v3, "New data found, Submitting..."

    const/4 v4, 0x1

    invoke-direct {p0, v3, p1, v4}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V

    .line 209
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bq;->e(Ljava/lang/String;)[B

    move-result-object v3

    .line 215
    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/util/TreeSet;[B)[B

    move-result-object v2

    .line 221
    sget-object v3, Lcom/tendcloud/tenddata/game/dm;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 222
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TRACKING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_6d
    .catchall {:try_start_2e .. :try_end_6d} :catchall_106

    const-string v7, "/"

    if-eqz v6, :cond_93

    .line 227
    :try_start_71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v3, "/1"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 230
    :cond_93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :goto_af
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 236
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/octet-stream"

    invoke-static {v3, p1, v5, v2, v6}, Lcom/tendcloud/tenddata/game/at;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/at$e;->getStatusCode()I

    move-result v2

    .line 238
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_dd

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/dm;->f:J

    .line 240
    iput-boolean v4, p0, Lcom/tendcloud/tenddata/game/dm;->g:Z

    .line 241
    invoke-static {}, Lcom/tendcloud/tenddata/game/dp;->a()Lcom/tendcloud/tenddata/game/dp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tendcloud/tenddata/game/dp;->sendMessageSuccess(Lcom/tendcloud/tenddata/game/a;)V

    .line 242
    const-string v2, "Data submitted successfully!"

    invoke-direct {p0, v2, p1, v4}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V

    .line 244
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f0

    .line 247
    :cond_dd
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 257
    invoke-static {}, Lcom/tendcloud/tenddata/game/dp;->a()Lcom/tendcloud/tenddata/game/dp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tendcloud/tenddata/game/dp;->sendMessageFaild(Lcom/tendcloud/tenddata/game/a;)V

    .line 258
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/dm;->g:Z

    .line 259
    const-string v0, "Failed to submit data!"

    invoke-direct {p0, v0, p1, v4}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V

    .line 267
    :goto_f0
    if-eqz v1, :cond_11b

    .line 269
    goto :goto_110

    .line 205
    :cond_f3
    :goto_f3
    const-string v2, "No new data found!"

    invoke-direct {p0, v2, p1, v0}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V
    :try_end_f8
    .catchall {:try_start_71 .. :try_end_f8} :catchall_106

    .line 267
    if-eqz v1, :cond_105

    .line 269
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 206
    :cond_105
    return-void

    .line 262
    :catchall_106
    move-exception v0

    goto :goto_10b

    :catchall_108
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 264
    :goto_10b
    :try_start_10b
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_11c

    .line 267
    if-eqz v1, :cond_11b

    .line 269
    :goto_110
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 272
    :cond_11b
    return-void

    .line 267
    :catchall_11c
    move-exception v0

    if-eqz v1, :cond_12a

    .line 269
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    :cond_12a
    throw v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dm;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dm;->d()V

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dm;Lcom/tendcloud/tenddata/game/a;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dm;->a(Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V
    .registers 7

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_5a

    .line 174
    :pswitch_2a
    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->iForInternal([Ljava/lang/String;)V

    goto :goto_59

    .line 169
    :pswitch_32
    if-eqz p3, :cond_59

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[Push] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_59

    .line 162
    :pswitch_4b
    if-eqz p3, :cond_51

    .line 163
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_59

    .line 165
    :cond_51
    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 167
    nop

    .line 177
    :cond_59
    :goto_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4b
        :pswitch_2a
        :pswitch_4b
        :pswitch_32
        :pswitch_2a
        :pswitch_2a
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method private static a(Ljava/util/TreeSet;[B)[B
    .registers 5

    .line 293
    :try_start_0
    array-length v0, p1

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_21

    .line 294
    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 295
    const/4 v1, 0x0

    :goto_a
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_14

    .line 296
    invoke-virtual {p0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 298
    :cond_14
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/util/TreeSet;[B)[B

    move-result-object p0
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_22

    move-object p1, p0

    .line 302
    :cond_21
    goto :goto_23

    .line 300
    :catchall_22
    move-exception p0

    .line 303
    :goto_23
    return-object p1
.end method

.method public static a([B)[B
    .registers 7

    .line 307
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 308
    nop

    .line 310
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/Inflater;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v3, v4, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_38

    .line 311
    :try_start_1b
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 314
    :goto_20
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    .line 315
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_20

    .line 317
    :cond_2b
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 318
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 319
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_36

    return-object p0

    .line 320
    :catch_36
    move-exception p0

    goto :goto_3a

    :catch_38
    move-exception p0

    move-object v2, v1

    .line 322
    :goto_3a
    if-eqz v2, :cond_45

    .line 323
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_45

    .line 325
    :catch_40
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 327
    :cond_45
    :goto_45
    nop

    .line 328
    :goto_46
    return-object v1
.end method

.method static synthetic b()Z
    .registers 1

    .line 42
    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Z
    .registers 1

    .line 42
    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->e()Z

    move-result v0

    return v0
.end method

.method private d()V
    .registers 8

    .line 68
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_70

    .line 70
    :try_start_9
    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->b()Ljava/security/SecureRandom;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/tendcloud/tenddata/game/ab;->a()[I

    move-result-object v2

    .line 74
    nop

    .line 77
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x7530

    const/4 v5, 0x1

    if-eqz v3, :cond_2e

    .line 78
    iget-boolean v3, p0, Lcom/tendcloud/tenddata/game/dm;->g:Z

    if-nez v3, :cond_2b

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0x1

    .line 79
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_44

    :cond_2b
    aget v2, v2, v5

    goto :goto_44

    .line 81
    :cond_2e
    iget-boolean v3, p0, Lcom/tendcloud/tenddata/game/dm;->g:Z

    const/4 v6, 0x0

    if-nez v3, :cond_41

    aget v2, v2, v6

    mul-int/lit8 v2, v2, 0x1

    const v3, 0xea60

    .line 82
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v2, v0

    goto :goto_44

    :cond_41
    aget v0, v2, v6

    move v2, v0

    .line 86
    :goto_44
    const v0, 0x1b7740

    if-le v2, v0, :cond_4c

    const v2, 0x1b7740

    .line 90
    :cond_4c
    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->getFeaturesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/a;

    .line 92
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    invoke-static {v4, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v5, v2

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6a
    .catchall {:try_start_9 .. :try_end_6a} :catchall_6c

    .line 93
    goto :goto_54

    .line 97
    :cond_6b
    goto :goto_70

    .line 94
    :catchall_6c
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 101
    :cond_70
    :goto_70
    return-void
.end method

.method private static e()Z
    .registers 11

    .line 104
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-long v4, v2

    .line 107
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-long v0, v1

    .line 109
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TD_app_pefercen_profile"

    const-string v6, "TD_sdk_last_send_time_wifi"

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v6, v7, v8}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v10, v6, v8

    if-ltz v10, :cond_5f

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    div-long v6, v4, v6

    sub-long/2addr v0, v6

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5f

    const-wide/16 v0, 0x64

    rem-long/2addr v4, v0

    rem-long/2addr v2, v0

    sub-long/2addr v4, v2

    .line 117
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_59
    .catchall {:try_start_0 .. :try_end_59} :catchall_61

    cmp-long v2, v0, v6

    if-ltz v2, :cond_5e

    goto :goto_5f

    .line 124
    :cond_5e
    goto :goto_65

    .line 118
    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    return v0

    .line 121
    :catchall_61
    move-exception v0

    .line 123
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 125
    :goto_65
    const/4 v0, 0x0

    return v0
.end method

.method private static f()Z
    .registers 11

    .line 130
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-long v4, v2

    .line 133
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-long v0, v1

    .line 135
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TD_app_pefercen_profile"

    const-string v6, "TD_sdk_last_send_time_mobile_data"

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v6, v7, v8}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v10, v6, v8

    if-ltz v10, :cond_5f

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    div-long v6, v4, v6

    sub-long/2addr v0, v6

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5f

    const-wide/16 v0, 0x64

    rem-long/2addr v4, v0

    rem-long/2addr v2, v0

    sub-long/2addr v4, v2

    .line 143
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_59
    .catchall {:try_start_0 .. :try_end_59} :catchall_61

    cmp-long v2, v0, v6

    if-ltz v2, :cond_5e

    goto :goto_5f

    .line 150
    :cond_5e
    goto :goto_65

    .line 144
    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    return v0

    .line 147
    :catchall_61
    move-exception v0

    .line 149
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 151
    :goto_65
    const/4 v0, 0x0

    return v0
.end method

.method private static g()V
    .registers 2

    .line 332
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 333
    return-void

    .line 336
    :cond_9
    :try_start_9
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/game/dn;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dn;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 392
    goto :goto_15

    .line 388
    :catchall_14
    move-exception v0

    .line 394
    :goto_15
    return-void
.end method


# virtual methods
.method public final onTDEBEventForwardRequest(Lcom/tendcloud/tenddata/game/dk;)V
    .registers 8

    .line 398
    if-eqz p1, :cond_66

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_66

    .line 402
    :cond_7
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/dk;->b:Lcom/tendcloud/tenddata/game/dk$a;

    sget-object v1, Lcom/tendcloud/tenddata/game/dk$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dk$a;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dk$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2d

    .line 403
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 404
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    :cond_21
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_65

    .line 410
    :cond_2d
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/dk;->b:Lcom/tendcloud/tenddata/game/dk$a;

    sget-object v2, Lcom/tendcloud/tenddata/game/dk$a;->HIGH:Lcom/tendcloud/tenddata/game/dk$a;

    invoke-virtual {v0, v2}, Lcom/tendcloud/tenddata/game/dk$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 411
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 412
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tendcloud/tenddata/game/dm;->f:J

    sub-long/2addr v2, v4

    .line 417
    const-wide/16 v4, 0x7530

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 418
    cmp-long v0, v2, v4

    if-lez v0, :cond_57

    goto :goto_58

    :cond_57
    move-wide v4, v2

    .line 421
    :goto_58
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 425
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dm;->l:Landroid/os/Handler;

    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 427
    :cond_65
    :goto_65
    return-void

    .line 399
    :cond_66
    :goto_66
    return-void
.end method
