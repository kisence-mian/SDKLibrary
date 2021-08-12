.class final Lcom/bytedance/sdk/a/b/a/d/a$b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/a/d/a;

.field private final b:Lcom/bytedance/sdk/a/a/i;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/d/a;)V
    .registers 3

    .line 343
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Lcom/bytedance/sdk/a/a/i;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/d;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/a/a/i;-><init>(Lcom/bytedance/sdk/a/a/t;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->b:Lcom/bytedance/sdk/a/a/i;

    .line 344
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->b:Lcom/bytedance/sdk/a/a/i;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->c:Z

    if-nez v0, :cond_2a

    .line 354
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_b

    return-void

    .line 356
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/a/a/d;->k(J)Lcom/bytedance/sdk/a/a/d;

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 359
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 360
    return-void

    .line 353
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 371
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 372
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->c:Z

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->b:Lcom/bytedance/sdk/a/a/i;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Lcom/bytedance/sdk/a/a/i;)V

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    .line 376
    monitor-exit p0

    return-void

    .line 370
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    .line 365
    monitor-exit p0

    return-void

    .line 366
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a$b;->a:Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    .line 367
    monitor-exit p0

    return-void

    .line 363
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
