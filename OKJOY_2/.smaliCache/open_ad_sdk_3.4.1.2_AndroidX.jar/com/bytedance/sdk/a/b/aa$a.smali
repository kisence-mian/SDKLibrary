.class public Lcom/bytedance/sdk/a/b/aa$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/a/b/y;

.field b:Lcom/bytedance/sdk/a/b/w;

.field c:I

.field d:Ljava/lang/String;

.field e:Lcom/bytedance/sdk/a/b/q;

.field f:Lcom/bytedance/sdk/a/b/r$a;

.field g:Lcom/bytedance/sdk/a/b/ab;

.field h:Lcom/bytedance/sdk/a/b/aa;

.field i:Lcom/bytedance/sdk/a/b/aa;

.field j:Lcom/bytedance/sdk/a/b/aa;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->c:I

    .line 320
    new-instance v0, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->f:Lcom/bytedance/sdk/a/b/r$a;

    .line 321
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/aa;)V
    .registers 4

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->c:I

    .line 324
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->a:Lcom/bytedance/sdk/a/b/y;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->a:Lcom/bytedance/sdk/a/b/y;

    .line 325
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->b:Lcom/bytedance/sdk/a/b/w;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->b:Lcom/bytedance/sdk/a/b/w;

    .line 326
    iget v0, p1, Lcom/bytedance/sdk/a/b/aa;->c:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->c:I

    .line 327
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->d:Ljava/lang/String;

    .line 328
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->e:Lcom/bytedance/sdk/a/b/q;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->e:Lcom/bytedance/sdk/a/b/q;

    .line 329
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->f:Lcom/bytedance/sdk/a/b/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r;->c()Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->f:Lcom/bytedance/sdk/a/b/r$a;

    .line 330
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->g:Lcom/bytedance/sdk/a/b/ab;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->g:Lcom/bytedance/sdk/a/b/ab;

    .line 331
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->h:Lcom/bytedance/sdk/a/b/aa;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->h:Lcom/bytedance/sdk/a/b/aa;

    .line 332
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->i:Lcom/bytedance/sdk/a/b/aa;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->i:Lcom/bytedance/sdk/a/b/aa;

    .line 333
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/aa;->j:Lcom/bytedance/sdk/a/b/aa;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->j:Lcom/bytedance/sdk/a/b/aa;

    .line 334
    iget-wide v0, p1, Lcom/bytedance/sdk/a/b/aa;->k:J

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->k:J

    .line 335
    iget-wide v0, p1, Lcom/bytedance/sdk/a/b/aa;->l:J

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->l:J

    .line 336
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/aa;)V
    .registers 4

    .line 412
    iget-object v0, p2, Lcom/bytedance/sdk/a/b/aa;->g:Lcom/bytedance/sdk/a/b/ab;

    if-nez v0, :cond_5c

    .line 414
    iget-object v0, p2, Lcom/bytedance/sdk/a/b/aa;->h:Lcom/bytedance/sdk/a/b/aa;

    if-nez v0, :cond_43

    .line 416
    iget-object v0, p2, Lcom/bytedance/sdk/a/b/aa;->i:Lcom/bytedance/sdk/a/b/aa;

    if-nez v0, :cond_2a

    .line 418
    iget-object p2, p2, Lcom/bytedance/sdk/a/b/aa;->j:Lcom/bytedance/sdk/a/b/aa;

    if-nez p2, :cond_11

    .line 421
    return-void

    .line 419
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".priorResponse != null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 417
    :cond_2a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".cacheResponse != null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 415
    :cond_43
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".networkResponse != null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 413
    :cond_5c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".body != null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private d(Lcom/bytedance/sdk/a/b/aa;)V
    .registers 3

    .line 430
    iget-object p1, p1, Lcom/bytedance/sdk/a/b/aa;->g:Lcom/bytedance/sdk/a/b/ab;

    if-nez p1, :cond_5

    .line 433
    return-void

    .line 431
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 2

    .line 349
    iput p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->c:I

    .line 350
    return-object p0
.end method

.method public a(J)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 3

    .line 436
    iput-wide p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->k:J

    .line 437
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 3

    .line 400
    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/aa;)V

    .line 401
    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->h:Lcom/bytedance/sdk/a/b/aa;

    .line 402
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->g:Lcom/bytedance/sdk/a/b/ab;

    .line 396
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/a/b/q;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->e:Lcom/bytedance/sdk/a/b/q;

    .line 360
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 2

    .line 390
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/r;->c()Lcom/bytedance/sdk/a/b/r$a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->f:Lcom/bytedance/sdk/a/b/r$a;

    .line 391
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/a/b/w;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->b:Lcom/bytedance/sdk/a/b/w;

    .line 345
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->a:Lcom/bytedance/sdk/a/b/y;

    .line 340
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->d:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->f:Lcom/bytedance/sdk/a/b/r$a;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 378
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/a/b/aa;
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->a:Lcom/bytedance/sdk/a/b/y;

    if-eqz v0, :cond_41

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->b:Lcom/bytedance/sdk/a/b/w;

    if-eqz v0, :cond_39

    .line 448
    iget v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->c:I

    if-ltz v0, :cond_1e

    .line 449
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/aa$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 450
    new-instance v0, Lcom/bytedance/sdk/a/b/aa;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/aa;-><init>(Lcom/bytedance/sdk/a/b/aa$a;)V

    return-object v0

    .line 449
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/aa$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(J)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 3

    .line 441
    iput-wide p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->l:J

    .line 442
    return-object p0
.end method

.method public b(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 3

    .line 406
    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/aa;)V

    .line 407
    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->i:Lcom/bytedance/sdk/a/b/aa;

    .line 408
    return-object p0
.end method

.method public c(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 2

    .line 424
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/aa$a;->d(Lcom/bytedance/sdk/a/b/aa;)V

    .line 425
    :cond_5
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/aa$a;->j:Lcom/bytedance/sdk/a/b/aa;

    .line 426
    return-object p0
.end method
