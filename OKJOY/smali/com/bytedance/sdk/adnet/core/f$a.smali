.class Lcom/bytedance/sdk/adnet/core/f$a;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

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
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V
    .registers 16

    .prologue
    .line 484
    iget-object v3, p2, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    iget-wide v4, p2, Lcom/bytedance/sdk/adnet/face/a$a;->d:J

    iget-wide v6, p2, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    iget-wide v8, p2, Lcom/bytedance/sdk/adnet/face/a$a;->f:J

    iget-wide v10, p2, Lcom/bytedance/sdk/adnet/face/a$a;->g:J

    .line 491
    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/List;

    move-result-object v12

    move-object v1, p0

    move-object v2, p1

    .line 484
    invoke-direct/range {v1 .. v12}, Lcom/bytedance/sdk/adnet/core/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    .line 492
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    .line 469
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

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
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 511
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 512
    const v1, 0x20150306

    if-eq v0, v1, :cond_f

    .line 514
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 516
    :cond_f
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 519
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v6

    .line 520
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v8

    .line 521
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 522
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/util/List;

    move-result-object v12

    .line 523
    new-instance v1, Lcom/bytedance/sdk/adnet/core/f$a;

    invoke-direct/range {v1 .. v12}, Lcom/bytedance/sdk/adnet/core/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v1
.end method

.method private static a(Lcom/bytedance/sdk/adnet/face/a$a;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    .line 501
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method a([B)Lcom/bytedance/sdk/adnet/face/a$a;
    .registers 6

    .prologue
    .line 531
    new-instance v0, Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/face/a$a;-><init>()V

    .line 532
    iput-object p1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    .line 533
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->c:Ljava/lang/String;

    .line 534
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->d:J

    iput-wide v2, v0, Lcom/bytedance/sdk/adnet/face/a$a;->d:J

    .line 535
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->e:J

    iput-wide v2, v0, Lcom/bytedance/sdk/adnet/face/a$a;->e:J

    .line 536
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->f:J

    iput-wide v2, v0, Lcom/bytedance/sdk/adnet/face/a$a;->f:J

    .line 537
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->g:J

    iput-wide v2, v0, Lcom/bytedance/sdk/adnet/face/a$a;->g:J

    .line 538
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->h:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    .line 539
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/f$a;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/adnet/face/a$a;->i:Ljava/util/List;

    .line 540
    return-object v0
.end method

.method a(Ljava/io/OutputStream;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 548
    const v2, 0x20150306

    :try_start_5
    invoke-static {p1, v2}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;I)V

    .line 549
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->c:Ljava/lang/String;

    if-nez v2, :cond_33

    const-string v2, ""

    :goto_13
    invoke-static {p1, v2}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

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
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->h:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 556
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 560
    :goto_32
    return v0

    .line 550
    :cond_33
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/f$a;->c:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_35} :catch_36

    goto :goto_13

    .line 558
    :catch_36
    move-exception v2

    .line 559
    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 560
    goto :goto_32
.end method
