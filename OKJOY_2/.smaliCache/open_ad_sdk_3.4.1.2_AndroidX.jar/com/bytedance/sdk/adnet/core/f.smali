.class Lcom/bytedance/sdk/adnet/core/f;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/f$b;,
        Lcom/bytedance/sdk/adnet/core/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Ljava/io/File;

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 108
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/f;-><init>(Ljava/io/File;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    .line 98
    iput p2, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    .line 99
    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 632
    nop

    .line 633
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    .line 634
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 635
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 636
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    .line 637
    return p0
.end method

.method static a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 671
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 672
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B

    move-result-object p0

    .line 673
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 625
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 626
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 627
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 628
    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 629
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 641
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 642
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 643
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 644
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 645
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 646
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 647
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 648
    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 649
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 665
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 666
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;J)V

    .line 667
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 668
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V
    .registers 10

    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 364
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v2, p2, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    goto :goto_22

    .line 366
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 367
    iget-wide v1, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v3, p2, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    iget-wide v5, v0, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 369
    :goto_22
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void
.end method

.method static a(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 677
    if-eqz p0, :cond_29

    .line 678
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;I)V

    .line 679
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 680
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 682
    goto :goto_d

    :cond_28
    goto :goto_2d

    .line 684
    :cond_29
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;I)V

    .line 686
    :goto_2d
    return-void
.end method

.method static a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/f$b;->a()J

    move-result-wide v0

    .line 393
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1f

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_1f

    .line 396
    new-array p1, v2, [B

    .line 397
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 398
    return-object p1

    .line 394
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamToBytes length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", maxLength="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/io/InputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 652
    nop

    .line 653
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    .line 654
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 655
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 656
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 657
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 658
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 659
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 660
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    .line 661
    return-wide v0
.end method

.method static b(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/f$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 689
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 690
    if-ltz v0, :cond_31

    .line 693
    if-nez v0, :cond_d

    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_12

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 695
    :goto_12
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_30

    .line 696
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 698
    new-instance v5, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-direct {v5, v3, v4}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 700
    :cond_30
    return-object v1

    .line 691
    :cond_31
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readHeaderList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b()V
    .registers 15

    .line 318
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget v2, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 319
    return-void

    .line 321
    :cond_a
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 322
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Pruning old cache entries."

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_16
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 326
    nop

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v1

    .line 330
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_78

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 333
    iget-object v10, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 334
    if-eqz v10, :cond_50

    .line 335
    iget-wide v10, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v12, v7, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    goto :goto_63

    .line 337
    :cond_50
    new-array v10, v8, [Ljava/lang/Object;

    iget-object v11, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    aput-object v11, v10, v1

    iget-object v7, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    .line 339
    invoke-direct {p0, v7}, Lcom/bytedance/sdk/adnet/core/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v9

    .line 337
    const-string v7, "Could not delete cache entry for key=%s, filename=%s"

    invoke-static {v7, v10}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 342
    add-int/lit8 v6, v6, 0x1

    .line 344
    iget-wide v10, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    long-to-float v7, v10

    iget v10, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_77

    .line 345
    goto :goto_78

    .line 347
    :cond_77
    goto :goto_28

    .line 349
    :cond_78
    :goto_78
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    if-eqz v0, :cond_9e

    .line 350
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 352
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    iget-wide v6, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    .line 350
    const-string v1, "pruned %d files, %d bytes, %d ms"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_9e
    return-void
.end method

.method private static c(Ljava/io/InputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 618
    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    .line 621
    return p0

    .line 619
    :cond_8
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 304
    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 377
    if-eqz p1, :cond_11

    .line 378
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 380
    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/face/a$a;
    .registers 12

    monitor-enter p0

    .line 135
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_ac

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 136
    monitor-exit p0

    return-object v1

    .line 138
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/f$a;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_ac

    .line 140
    if-nez v0, :cond_16

    .line 141
    monitor-exit p0

    return-object v1

    .line 143
    :cond_16
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_ac

    .line 144
    nop

    .line 146
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_1e
    new-instance v6, Lcom/bytedance/sdk/adnet/core/f$b;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 147
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/bytedance/sdk/adnet/core/f$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_7d

    .line 149
    :try_start_30
    invoke-static {v6}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Lcom/bytedance/sdk/adnet/core/f$a;

    move-result-object v7

    .line 150
    iget-object v8, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 152
    const-string v0, "%s: key=%s, found=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object p1, v8, v3

    iget-object v7, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    aput-object v7, v8, v5

    .line 152
    invoke-static {v0, v8}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->e(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_76

    .line 156
    nop

    .line 163
    :try_start_54
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_7b

    .line 171
    nop

    .line 172
    :try_start_58
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    .line 175
    goto :goto_5d

    .line 174
    :catchall_5c
    move-exception p1

    .line 156
    :goto_5d
    monitor-exit p0

    return-object v1

    .line 158
    :cond_5f
    :try_start_5f
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->a()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B

    move-result-object v7

    .line 159
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/adnet/core/f$a;->a([B)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v0
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_76

    .line 163
    :try_start_6b
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_7b

    .line 171
    nop

    .line 172
    :try_start_6f
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    .line 175
    goto :goto_74

    .line 174
    :catchall_73
    move-exception p1

    .line 159
    :goto_74
    monitor-exit p0

    return-object v0

    .line 163
    :catchall_76
    move-exception v0

    :try_start_77
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V

    .line 164
    throw v0
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7b

    .line 165
    :catchall_7b
    move-exception v0

    goto :goto_7f

    :catchall_7d
    move-exception v0

    move-object v6, v1

    .line 166
    :goto_7f
    :try_start_7f
    const-string v7, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v7, v5}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_7f .. :try_end_95} :catchall_a1

    .line 168
    nop

    .line 171
    if-eqz v6, :cond_9e

    .line 172
    :try_start_98
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_9e

    .line 174
    :catchall_9c
    move-exception p1

    goto :goto_9f

    .line 175
    :cond_9e
    :goto_9e
    nop

    .line 168
    :goto_9f
    monitor-exit p0

    return-object v1

    .line 170
    :catchall_a1
    move-exception p1

    .line 171
    if-eqz v6, :cond_aa

    .line 172
    :try_start_a4
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_aa

    .line 174
    :catchall_a8
    move-exception v0

    goto :goto_ab

    .line 175
    :cond_aa
    :goto_aa
    nop

    .line 176
    :goto_ab
    :try_start_ab
    throw p1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    .line 134
    :catchall_ac
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/io/File;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .registers 10

    monitor-enter p0

    .line 185
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_22

    .line 187
    const-string v0, "Unable to create cache dir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_60

    .line 189
    :cond_22
    monitor-exit p0

    return-void

    .line 191
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_60

    .line 192
    if-nez v0, :cond_2e

    .line 193
    monitor-exit p0

    return-void

    .line 195
    :cond_2e
    :try_start_2e
    array-length v2, v0

    :goto_2f
    if-ge v1, v2, :cond_5e

    aget-object v3, v0, v1
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_60

    .line 197
    :try_start_33
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 198
    new-instance v6, Lcom/bytedance/sdk/adnet/core/f$b;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 200
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4, v5}, Lcom/bytedance/sdk/adnet/core/f$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_57

    .line 202
    :try_start_45
    invoke-static {v6}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Lcom/bytedance/sdk/adnet/core/f$a;

    move-result-object v7

    .line 203
    iput-wide v4, v7, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    .line 204
    iget-object v4, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_51

    goto :goto_52

    .line 205
    :catchall_51
    move-exception v4

    .line 209
    :goto_52
    :try_start_52
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_57

    .line 210
    nop

    .line 214
    goto :goto_5b

    .line 211
    :catchall_57
    move-exception v4

    .line 213
    :try_start_58
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_60

    .line 195
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 216
    :cond_5e
    monitor-exit p0

    return-void

    .line 184
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V
    .registers 10

    monitor-enter p0

    .line 245
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-object v2, p2, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    iget-object v0, p2, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_8c

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 247
    monitor-exit p0

    return-void

    .line 249
    :cond_20
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_8c

    .line 250
    const/4 v1, 0x0

    .line 252
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_27
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_6d

    .line 253
    :try_start_30
    new-instance v1, Lcom/bytedance/sdk/adnet/core/f$a;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/sdk/adnet/core/f$a;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V

    .line 254
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Ljava/io/OutputStream;)Z

    move-result v5

    .line 255
    if-eqz v5, :cond_54

    .line 260
    iget-object p2, p2, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    invoke-virtual {v4, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    .line 262
    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V

    .line 263
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/f;->b()V
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_6a

    .line 268
    nop

    .line 269
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    .line 272
    goto :goto_52

    .line 271
    :catchall_51
    move-exception p1

    .line 264
    :goto_52
    monitor-exit p0

    return-void

    .line 256
    :cond_54
    :try_start_54
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 257
    const-string p1, "Failed to write header for %s"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_6a

    .line 265
    :catchall_6a
    move-exception p1

    move-object v1, v4

    goto :goto_6e

    :catchall_6d
    move-exception p1

    .line 268
    :goto_6e
    if-eqz v1, :cond_76

    .line 269
    :try_start_70
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_76

    .line 271
    :catchall_74
    move-exception p1

    .line 273
    goto :goto_77

    .line 272
    :cond_76
    :goto_76
    nop

    .line 274
    :goto_77
    :try_start_77
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    .line 275
    if-nez p1, :cond_8a

    .line 276
    const-string p1, "Could not clean up file %s"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8a
    .catchall {:try_start_77 .. :try_end_8a} :catchall_8c

    .line 278
    :cond_8a
    monitor-exit p0

    return-void

    .line 244
    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 285
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 286
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->e(Ljava/lang/String;)V

    .line 287
    if-nez v0, :cond_20

    .line 288
    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 290
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 288
    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 292
    :cond_20
    monitor-exit p0

    return-void

    .line 284
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 311
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
