.class Lcom/bytedance/sdk/adnet/core/f$a;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V
    .registers 15

    .line 484
    iget-object v2, p2, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    iget-wide v3, p2, Lcom/bytedance/sdk/adnet/face/a$a;->d:J

    iget-wide v5, p2, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    iget-wide v7, p2, Lcom/bytedance/sdk/adnet/face/a$a;->f:J

    iget-wide v9, p2, Lcom/bytedance/sdk/adnet/face/a$a;->g:J

    .line 491
    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/List;

    move-result-object v11

    .line 484
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/sdk/adnet/core/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    .line 492
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;)V"
        }
    .end annotation

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    .line 469
    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p2, 0x0

    :cond_e
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->c:Ljava/lang/String;

    .line 470
    iput-wide p3, p0, Lcom/bytedance/sdk/adnet/core/f$a;->d:J

    .line 471
    iput-wide p5, p0, Lcom/bytedance/sdk/adnet/core/f$a;->e:J

    .line 472
    iput-wide p7, p0, Lcom/bytedance/sdk/adnet/core/f$a;->f:J

    .line 473
    iput-wide p9, p0, Lcom/bytedance/sdk/adnet/core/f$a;->g:J

    .line 474
    iput-object p11, p0, Lcom/bytedance/sdk/adnet/core/f$a;->h:Ljava/util/List;

    .line 475
    return-void
.end method

.method static a(Lcom/bytedance/sdk/adnet/core/f$b;)Lcom/bytedance/sdk/adnet/core/f$a;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 511
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 512
    const v1, 0x20150306

    if-ne v0, v1, :cond_2c

    .line 516
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 519
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 520
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 521
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 522
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/util/List;

    move-result-object v13

    .line 523
    new-instance p0, Lcom/bytedance/sdk/adnet/core/f$a;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/bytedance/sdk/adnet/core/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    .line 514
    :cond_2c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static a(Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 497
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    return-object p0

    .line 501
    :cond_7
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/b;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a([B)Lcom/bytedance/sdk/adnet/face/a$a;
    .registers 5

    .line 531
    new-instance v0, Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/face/a$a;-><init>()V

    .line 532
    iput-object p1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    .line 533
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    .line 534
    iget-wide v1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->d:J

    iput-wide v1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->d:J

    .line 535
    iget-wide v1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->e:J

    iput-wide v1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    .line 536
    iget-wide v1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->f:J

    iput-wide v1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->f:J

    .line 537
    iget-wide v1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->g:J

    iput-wide v1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->g:J

    .line 538
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/b;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    .line 539
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    .line 540
    return-object v0
.end method

.method a(Ljava/io/OutputStream;)Z
    .registers 6

    .line 548
    const v0, 0x20150306

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;I)V

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f$a;->c:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    :cond_12
    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 551
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->d:J

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;J)V

    .line 552
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->e:J

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;J)V

    .line 553
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->f:J

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;J)V

    .line 554
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->g:J

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;J)V

    .line 555
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f$a;->h:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 556
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_32

    .line 557
    return v1

    .line 558
    :catchall_32
    move-exception p1

    .line 559
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    return v1
.end method
