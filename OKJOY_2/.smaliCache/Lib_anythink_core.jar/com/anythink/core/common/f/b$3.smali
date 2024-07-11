.class final Lcom/anythink/core/common/f/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/b;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 386
    monitor-enter p0

    .line 388
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;)Landroid/content/Context;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_174

    if-nez v0, :cond_b

    .line 389
    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_177

    return-void

    .line 391
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "LOG_SEND_TIME"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->b(Lcom/anythink/core/common/f/b;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_4c

    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->c(Lcom/anythink/core/common/f/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->c(Lcom/anythink/core/common/f/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v1}, Lcom/anythink/core/common/f/b;->d(Lcom/anythink/core/common/f/b;)I

    move-result v1

    if-lt v0, v1, :cond_173

    .line 393
    :cond_4c
    const-string v0, "Agent"

    const-string v1, "sendLogByTime:30 minites"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->e(Lcom/anythink/core/common/f/b;)Z

    move-result v0

    if-nez v0, :cond_173

    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->c(Lcom/anythink/core/common/f/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->c(Lcom/anythink/core/common/f/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_173

    .line 396
    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;Z)Z
    :try_end_75
    .catchall {:try_start_b .. :try_end_75} :catchall_174

    .line 398
    const/4 v0, 0x0

    .line 400
    const/4 v2, 0x0

    :try_start_77
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v5}, Lcom/anythink/core/common/f/b;->f(Lcom/anythink/core/common/f/b;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_87} :catch_15a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_77 .. :try_end_87} :catch_14b
    .catch Ljava/lang/StackOverflowError; {:try_start_77 .. :try_end_87} :catch_149
    .catch Ljava/lang/Error; {:try_start_77 .. :try_end_87} :catch_13d
    .catchall {:try_start_77 .. :try_end_87} :catchall_139

    .line 401
    nop

    .line 403
    :try_start_88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 404
    :goto_8e
    iget-object v5, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v5}, Lcom/anythink/core/common/f/b;->g(Lcom/anythink/core/common/f/b;)I

    move-result v5

    if-ge v4, v5, :cond_b2

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b2

    .line 405
    nop

    .line 406
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v6, "Agent"

    const-string v7, "SendLogByTime:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    add-int/lit8 v4, v4, 0x1

    .line 409
    goto :goto_8e

    .line 410
    :cond_b2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 412
    if-nez v4, :cond_c3

    .line 413
    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0, v2}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;Z)Z
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_bc} :catch_136
    .catch Ljava/lang/OutOfMemoryError; {:try_start_88 .. :try_end_bc} :catch_133
    .catch Ljava/lang/StackOverflowError; {:try_start_88 .. :try_end_bc} :catch_131
    .catch Ljava/lang/Error; {:try_start_88 .. :try_end_bc} :catch_12e
    .catchall {:try_start_88 .. :try_end_bc} :catchall_12c

    .line 455
    :try_start_bc
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_c0
    .catchall {:try_start_bc .. :try_end_bf} :catchall_174

    .line 461
    goto :goto_c1

    .line 457
    :catch_c0
    move-exception v0

    .line 461
    :goto_c1
    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_177

    .line 414
    return-void

    .line 418
    :cond_c3
    :try_start_c3
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v4

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v4

    .line 419
    if-eqz v4, :cond_114

    .line 420
    invoke-virtual {v4}, Lcom/anythink/core/c/a;->d()I

    move-result v5

    packed-switch v5, :pswitch_data_17a

    .line 427
    new-instance v1, Lcom/anythink/core/common/e/b;

    goto :goto_fd

    .line 422
    :pswitch_e7
    new-instance v5, Lcom/anythink/core/common/e/a/a;

    invoke-direct {v5, v0}, Lcom/anythink/core/common/e/a/a;-><init>(Ljava/util/List;)V

    .line 423
    invoke-virtual {v4}, Lcom/anythink/core/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/anythink/core/common/e/a/a;->a(ILjava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->h(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/common/e/a/b$a;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/e/a/a;->a(Lcom/anythink/core/common/e/a/b$a;)V

    .line 425
    goto :goto_128

    .line 427
    :goto_fd
    iget-object v5, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v5}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Lcom/anythink/core/c/a;->d()I

    move-result v4

    invoke-direct {v1, v5, v4, v0}, Lcom/anythink/core/common/e/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 428
    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->i(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/common/e/g;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/e/b;->a(ILcom/anythink/core/common/e/g;)V

    .line 429
    goto :goto_128

    .line 432
    :cond_114
    new-instance v1, Lcom/anythink/core/common/e/b;

    iget-object v4, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v4}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2, v0}, Lcom/anythink/core/common/e/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 433
    iget-object v0, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->i(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/common/e/g;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/e/b;->a(ILcom/anythink/core/common/e/g;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_128} :catch_136
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c3 .. :try_end_128} :catch_133
    .catch Ljava/lang/StackOverflowError; {:try_start_c3 .. :try_end_128} :catch_131
    .catch Ljava/lang/Error; {:try_start_c3 .. :try_end_128} :catch_12e
    .catchall {:try_start_c3 .. :try_end_128} :catchall_12c

    .line 455
    :goto_128
    :try_start_128
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_166
    .catchall {:try_start_128 .. :try_end_12b} :catchall_174

    goto :goto_168

    .line 453
    :catchall_12c
    move-exception v0

    goto :goto_169

    .line 447
    :catch_12e
    move-exception v0

    move-object v0, v3

    goto :goto_13e

    .line 441
    :catch_131
    move-exception v0

    goto :goto_134

    :catch_133
    move-exception v0

    :goto_134
    move-object v0, v3

    goto :goto_14c

    .line 436
    :catch_136
    move-exception v0

    move-object v0, v3

    goto :goto_15b

    .line 453
    :catchall_139
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_169

    .line 447
    :catch_13d
    move-exception v1

    .line 448
    :goto_13e
    :try_start_13e
    iget-object v1, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v1, v2}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;Z)Z
    :try_end_143
    .catchall {:try_start_13e .. :try_end_143} :catchall_139

    .line 454
    if-eqz v0, :cond_168

    .line 455
    :try_start_145
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_166
    .catchall {:try_start_145 .. :try_end_148} :catchall_174

    goto :goto_168

    .line 441
    :catch_149
    move-exception v1

    goto :goto_14c

    :catch_14b
    move-exception v1

    .line 442
    :goto_14c
    :try_start_14c
    iget-object v1, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v1, v2}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;Z)Z

    .line 446
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_154
    .catchall {:try_start_14c .. :try_end_154} :catchall_139

    .line 454
    if-eqz v0, :cond_168

    .line 455
    :try_start_156
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_159} :catch_166
    .catchall {:try_start_156 .. :try_end_159} :catchall_174

    goto :goto_168

    .line 436
    :catch_15a
    move-exception v1

    .line 437
    :goto_15b
    :try_start_15b
    iget-object v1, p0, Lcom/anythink/core/common/f/b$3;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v1, v2}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;Z)Z
    :try_end_160
    .catchall {:try_start_15b .. :try_end_160} :catchall_139

    .line 454
    if-eqz v0, :cond_168

    .line 455
    :try_start_162
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_165} :catch_166
    .catchall {:try_start_162 .. :try_end_165} :catchall_174

    goto :goto_168

    .line 457
    :catch_166
    move-exception v0

    .line 463
    goto :goto_175

    .line 461
    :cond_168
    :goto_168
    goto :goto_175

    .line 454
    :goto_169
    if-eqz v3, :cond_171

    .line 455
    :try_start_16b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_16e} :catch_16f
    .catchall {:try_start_16b .. :try_end_16e} :catchall_174

    goto :goto_171

    .line 457
    :catch_16f
    move-exception v1

    goto :goto_172

    .line 461
    :cond_171
    :goto_171
    nop

    .line 463
    :goto_172
    :try_start_172
    throw v0
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_174

    .line 470
    :cond_173
    goto :goto_175

    .line 466
    :catchall_174
    move-exception v0

    .line 471
    :goto_175
    :try_start_175
    monitor-exit p0

    return-void

    :catchall_177
    move-exception v0

    monitor-exit p0
    :try_end_179
    .catchall {:try_start_175 .. :try_end_179} :catchall_177

    throw v0

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_e7
    .end packed-switch
.end method
