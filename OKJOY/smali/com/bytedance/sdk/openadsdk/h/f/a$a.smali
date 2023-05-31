.class Lcom/bytedance/sdk/openadsdk/h/f/a$a;
.super Ljava/lang/Thread;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/f/a;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/h/f/a;)V
    .registers 4

    .prologue
    .line 168
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a:Lcom/bytedance/sdk/openadsdk/h/f/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 165
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->d:Ljava/util/Queue;

    .line 169
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b:Ljava/util/Queue;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c:Z

    .line 171
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->e:Ljava/util/Queue;

    .line 172
    return-void
.end method

.method private a(ILcom/bytedance/sdk/openadsdk/h/f/b;)Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;
    .registers 6

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b()V

    .line 188
    const-string v0, "VideoCachePreloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    .line 190
    if-nez v0, :cond_30

    .line 191
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;-><init>(Lcom/bytedance/sdk/openadsdk/h/f/a$a;)V

    .line 193
    :cond_30
    iput p1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->a:I

    .line 194
    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    .line 195
    return-object v0
.end method

.method private a()V
    .registers 1

    .prologue
    .line 242
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a()V

    .line 200
    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    .line 201
    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    .line 202
    const/4 v0, -0x1

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->a:I

    .line 203
    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method private b()V
    .registers 1

    .prologue
    .line 245
    return-void
.end method

.method private declared-synchronized b(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V
    .registers 3

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b()V

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 222
    monitor-exit p0

    return-void

    .line 219
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a()V

    .line 318
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    if-eqz v0, :cond_42

    .line 319
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    .line 320
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/f/b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    .line 321
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->b:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->d:I

    .line 322
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->e:Ljava/lang/String;

    .line 323
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 324
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/f/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    .line 326
    :cond_3b
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/h/f/b;

    .line 327
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V

    goto :goto_3

    .line 329
    :cond_42
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V
    .registers 3

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a()V

    .line 254
    if-nez p1, :cond_6

    .line 257
    :goto_5
    return-void

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_5
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/h/f/b;)V
    .registers 3

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a(ILcom/bytedance/sdk/openadsdk/h/f/b;)Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V

    .line 333
    return-void
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 261
    :goto_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c:Z

    if-eqz v1, :cond_c2

    .line 262
    monitor-enter p0

    .line 263
    :try_start_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 264
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c()V

    .line 266
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 267
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;

    move-object v7, v0

    .line 268
    if-eqz v7, :cond_11

    .line 269
    iget v1, v7, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->a:I

    packed-switch v1, :pswitch_data_c4

    .line 304
    :cond_2a
    :goto_2a
    invoke-direct {p0, v7}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a(Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;)V

    goto :goto_11

    .line 311
    :catchall_2e
    move-exception v1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw v1

    .line 272
    :pswitch_31
    :try_start_31
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2a

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v3, v7, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->c:[Ljava/lang/String;

    array-length v4, v3

    move v1, v8

    :goto_43
    if-ge v1, v4, :cond_53

    aget-object v5, v3, v1

    .line 275
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 276
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 279
    :cond_53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 280
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    const/4 v3, 0x1

    .line 281
    :goto_68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    const/4 v2, 0x0

    iget v4, v7, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->d:I

    iget-object v5, v7, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_2a

    :cond_75
    move v3, v8

    .line 280
    goto :goto_68

    .line 285
    :pswitch_77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    iget-object v2, v7, Lcom/bytedance/sdk/openadsdk/h/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;)V

    goto :goto_2a

    .line 288
    :pswitch_81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()V

    goto :goto_2a

    .line 291
    :pswitch_89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()V

    .line 292
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->c()Lcom/bytedance/sdk/openadsdk/h/a/b;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 293
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->c()Lcom/bytedance/sdk/openadsdk/h/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a()V

    .line 295
    :cond_9d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->b()Lcom/bytedance/sdk/openadsdk/h/a/c;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 296
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e;->b()Lcom/bytedance/sdk/openadsdk/h/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a()V

    goto :goto_2a

    .line 300
    :pswitch_ab
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()V

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->c:Z
    :try_end_b5
    .catchall {:try_start_31 .. :try_end_b5} :catchall_2e

    goto/16 :goto_2a

    .line 307
    :cond_b7
    :try_start_b7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_ba} :catch_bd
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_2e

    .line 311
    :goto_ba
    :try_start_ba
    monitor-exit p0

    goto/16 :goto_1

    .line 308
    :catch_bd
    move-exception v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_2e

    goto :goto_ba

    .line 313
    :cond_c2
    return-void

    .line 269
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_31
        :pswitch_77
        :pswitch_81
        :pswitch_89
        :pswitch_ab
    .end packed-switch
.end method
