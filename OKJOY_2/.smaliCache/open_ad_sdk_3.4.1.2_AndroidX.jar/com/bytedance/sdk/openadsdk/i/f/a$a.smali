.class Lcom/bytedance/sdk/openadsdk/i/f/a$a;
.super Ljava/lang/Thread;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/f/a;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/i/f/a;)V
    .registers 3

    .line 170
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->a:Lcom/bytedance/sdk/openadsdk/i/f/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 167
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->d:Ljava/util/Queue;

    .line 171
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->b:Ljava/util/Queue;

    .line 172
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->c:Z

    .line 173
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->e:Ljava/util/Queue;

    .line 174
    return-void
.end method

.method private a(ILcom/bytedance/sdk/openadsdk/i/f/b;)Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;
    .registers 5

    .line 189
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->b()V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCachePreloader"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;

    .line 192
    if-nez v0, :cond_30

    .line 193
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;-><init>(Lcom/bytedance/sdk/openadsdk/i/f/a$a;)V

    .line 195
    :cond_30
    iput p1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->a:I

    .line 196
    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    .line 197
    return-object v0
.end method

.method private a()V
    .registers 1

    .line 244
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;)V
    .registers 4

    .line 201
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->a()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->c:[Ljava/lang/String;

    .line 203
    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->b:Ljava/lang/String;

    .line 204
    const/4 v1, -0x1

    iput v1, p1, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->a:I

    .line 205
    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method private b()V
    .registers 1

    .line 247
    return-void
.end method

.method private declared-synchronized b(Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;)V
    .registers 3

    monitor-enter p0

    .line 221
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->b()V

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 224
    monitor-exit p0

    return-void

    .line 220
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()V
    .registers 5

    .line 318
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->a()V

    .line 320
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;

    if-eqz v0, :cond_42

    .line 321
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/i/f/b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->b:Ljava/lang/String;

    .line 322
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/f/b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->c:[Ljava/lang/String;

    .line 323
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/i/f/b;->b:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->d:I

    .line 324
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/i/f/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->e:Ljava/lang/String;

    .line 325
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/i/f/b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 326
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/i/f/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->b:Ljava/lang/String;

    .line 328
    :cond_3b
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->f:Lcom/bytedance/sdk/openadsdk/i/f/b;

    .line 329
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->c(Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;)V

    goto :goto_3

    .line 331
    :cond_42
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;)V
    .registers 3

    .line 255
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->a()V

    .line 256
    if-nez p1, :cond_6

    return-void

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 259
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/i/f/b;)V
    .registers 3

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->a(ILcom/bytedance/sdk/openadsdk/i/f/b;)Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->b(Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;)V

    .line 335
    return-void
.end method

.method public run()V
    .registers 10

    .line 263
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->c:Z

    if-eqz v0, :cond_c2

    .line 264
    monitor-enter p0

    .line 265
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 266
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->c()V

    .line 268
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;

    .line 270
    if-nez v0, :cond_23

    goto :goto_10

    .line 271
    :cond_23
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->a:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_c4

    goto/16 :goto_af

    .line 302
    :pswitch_2b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/d;->d()V

    .line 303
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->c:Z

    goto/16 :goto_af

    .line 293
    :pswitch_36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/d;->d()V

    .line 294
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->c()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 295
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->c()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a()V

    .line 297
    :cond_4a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->b()Lcom/bytedance/sdk/openadsdk/i/a/c;

    move-result-object v1

    if-eqz v1, :cond_af

    .line 298
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->b()Lcom/bytedance/sdk/openadsdk/i/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/a/c;->a()V

    goto :goto_af

    .line 290
    :pswitch_58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/d;->d()V

    .line 291
    goto :goto_af

    .line 287
    :pswitch_60
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Ljava/lang/String;)V

    .line 288
    goto :goto_af

    .line 274
    :pswitch_6a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->c:[Ljava/lang/String;

    if-eqz v1, :cond_af

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_af

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->c:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_7c
    if-ge v5, v4, :cond_8c

    aget-object v6, v3, v5

    .line 277
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 278
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 281
    :cond_8c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Ljava/lang/String;

    .line 282
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    const/4 v2, 0x1

    :cond_a2
    move v5, v2

    .line 283
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v3

    const/4 v4, 0x0

    iget v6, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->d:I

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;->b:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/i/d;->a(ZZILjava/lang/String;[Ljava/lang/String;)V

    .line 306
    :cond_af
    :goto_af
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->a(Lcom/bytedance/sdk/openadsdk/i/f/a$a$a;)V
    :try_end_b2
    .catchall {:try_start_5 .. :try_end_b2} :catchall_bf

    .line 307
    goto/16 :goto_10

    .line 309
    :cond_b4
    :try_start_b4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b7
    .catch Ljava/lang/InterruptedException; {:try_start_b4 .. :try_end_b7} :catch_b8
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_bf

    .line 312
    goto :goto_bc

    .line 310
    :catch_b8
    move-exception v0

    .line 311
    :try_start_b9
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 313
    :goto_bc
    monitor-exit p0

    goto/16 :goto_0

    :catchall_bf
    move-exception v0

    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_bf

    throw v0

    .line 315
    :cond_c2
    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_60
        :pswitch_58
        :pswitch_36
        :pswitch_2b
    .end packed-switch
.end method
