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
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 108
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/f;-><init>(Ljava/io/File;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    .prologue
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

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 633
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

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

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 637
    return v0
.end method

.method static a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 671
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 672
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B

    move-result-object v0

    .line 673
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method static a(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
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
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 629
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
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

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 649
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 665
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 666
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;J)V

    .line 667
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 668
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V
    .registers 9

    .prologue
    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 364
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v2, p2, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 369
    :goto_f
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void

    .line 366
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 367
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v4, p2, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    iget-wide v0, v0, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    goto :goto_f
.end method

.method static a(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 677
    if-eqz p0, :cond_28

    .line 678
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;I)V

    .line 679
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 680
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_d

    .line 684
    :cond_28
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;I)V

    .line 686
    :cond_2c
    return-void
.end method

.method static a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/f$b;->a()J

    move-result-wide v0

    .line 393
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_14

    cmp-long v2, p1, v0

    if-gtz v2, :cond_14

    long-to-int v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-eqz v2, :cond_37

    .line 394
    :cond_14
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "streamToBytes length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 396
    :cond_37
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 397
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 398
    return-object v0
.end method

.method static b(Ljava/io/InputStream;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xff

    .line 652
    const-wide/16 v0, 0x0

    .line 653
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 654
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 655
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 656
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 657
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 658
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 659
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 660
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

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
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/InputStream;)I

    move-result v2

    .line 690
    if-gez v2, :cond_1f

    .line 691
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readHeaderList size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_1f
    if-nez v2, :cond_43

    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 695
    :goto_25
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v2, :cond_49

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

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 694
    :cond_43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_25

    .line 700
    :cond_49
    return-object v0
.end method

.method private b()V
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 318
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget v3, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_d

    .line 354
    :cond_c
    :goto_c
    return-void

    .line 321
    :cond_d
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    if-eqz v0, :cond_18

    .line 322
    const-string v0, "Pruning old cache entries."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_18
    iget-wide v4, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    .line 330
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 331
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 333
    iget-object v8, v0, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 334
    if-eqz v8, :cond_89

    .line 335
    iget-wide v8, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v10, v0, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 341
    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 342
    add-int/lit8 v0, v1, 0x1

    .line 344
    iget-wide v8, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    long-to-float v1, v8

    iget v8, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-gez v1, :cond_9d

    .line 349
    :goto_61
    sget-boolean v1, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    if-eqz v1, :cond_c

    .line 350
    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    iget-wide v8, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v13

    .line 350
    invoke-static {v1, v3}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 337
    :cond_89
    const-string v8, "Could not delete cache entry for key=%s, filename=%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    .line 339
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/core/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    .line 337
    invoke-static {v8, v9}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e

    :cond_9d
    move v1, v0

    .line 347
    goto :goto_29

    :cond_9f
    move v0, v1

    goto :goto_61
.end method

.method private static c(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 618
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 619
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 621
    :cond_d
    return v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 377
    if-eqz v0, :cond_12

    .line 378
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v0, v0, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 380
    :cond_12
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/face/a$a;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 135
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a3

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 168
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 138
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 140
    if-nez v0, :cond_17

    move-object v0, v1

    .line 141
    goto :goto_9

    .line 143
    :cond_17
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_a3

    move-result-object v3

    .line 146
    :try_start_1b
    new-instance v2, Lcom/bytedance/sdk/adnet/core/f$b;

    new-instance v4, Ljava/io/BufferedInputStream;

    .line 147
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7}, Lcom/bytedance/sdk/adnet/core/f$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2d} :catch_ae
    .catchall {:try_start_1b .. :try_end_2d} :catchall_9b

    .line 149
    :try_start_2d
    invoke-static {v2}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Lcom/bytedance/sdk/adnet/core/f$a;

    move-result-object v4

    .line 150
    iget-object v5, v4, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 152
    const-string v0, "%s: key=%s, found=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    iget-object v4, v4, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    aput-object v4, v5, v6

    .line 152
    invoke-static {v0, v5}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->e(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_74

    .line 163
    :try_start_53
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_79
    .catchall {:try_start_53 .. :try_end_56} :catchall_ac

    .line 171
    if-eqz v2, :cond_5b

    .line 172
    :try_start_58
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5b} :catch_a6
    .catchall {:try_start_58 .. :try_end_5b} :catchall_a3

    :cond_5b
    :goto_5b
    move-object v0, v1

    .line 156
    goto :goto_9

    .line 158
    :cond_5d
    :try_start_5d
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/f$b;->a()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B

    move-result-object v4

    .line 159
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/adnet/core/f$a;->a([B)Lcom/bytedance/sdk/adnet/face/a$a;
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_74

    move-result-object v0

    .line 163
    :try_start_69
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_79
    .catchall {:try_start_69 .. :try_end_6c} :catchall_ac

    .line 171
    if-eqz v2, :cond_9

    .line 172
    :try_start_6e
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_a3

    goto :goto_9

    .line 174
    :catch_72
    move-exception v1

    goto :goto_9

    .line 163
    :catchall_74
    move-exception v0

    :try_start_75
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V

    .line 164
    throw v0
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_79} :catch_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_ac

    .line 165
    :catch_79
    move-exception v0

    .line 166
    :goto_7a
    :try_start_7a
    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_7a .. :try_end_93} :catchall_ac

    .line 171
    if-eqz v2, :cond_98

    .line 172
    :try_start_95
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_98} :catch_a8
    .catchall {:try_start_95 .. :try_end_98} :catchall_a3

    :cond_98
    :goto_98
    move-object v0, v1

    .line 168
    goto/16 :goto_9

    .line 170
    :catchall_9b
    move-exception v0

    move-object v2, v1

    .line 171
    :goto_9d
    if-eqz v2, :cond_a2

    .line 172
    :try_start_9f
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_aa
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    .line 176
    :cond_a2
    :goto_a2
    :try_start_a2
    throw v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    .line 135
    :catchall_a3
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :catch_a6
    move-exception v0

    goto :goto_5b

    :catch_a8
    move-exception v0

    goto :goto_98

    :catch_aa
    move-exception v1

    goto :goto_a2

    .line 170
    :catchall_ac
    move-exception v0

    goto :goto_9d

    .line 165
    :catch_ae
    move-exception v0

    move-object v2, v1

    goto :goto_7a
.end method

.method a(Ljava/io/File;)Ljava/io/InputStream;
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 185
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_23

    .line 187
    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_61

    .line 216
    :cond_23
    monitor-exit p0

    return-void

    .line 191
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_23

    .line 195
    array-length v3, v2

    move v1, v0

    :goto_2f
    if-ge v1, v3, :cond_23

    aget-object v4, v2, v1
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_61

    .line 197
    :try_start_33
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 198
    new-instance v5, Lcom/bytedance/sdk/adnet/core/f$b;

    new-instance v0, Ljava/io/BufferedInputStream;

    .line 200
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0, v6, v7}, Lcom/bytedance/sdk/adnet/core/f$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_45} :catch_5c
    .catchall {:try_start_33 .. :try_end_45} :catchall_61

    .line 202
    :try_start_45
    invoke-static {v5}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Lcom/bytedance/sdk/adnet/core/f$a;

    move-result-object v0

    .line 203
    iput-wide v6, v0, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    .line 204
    iget-object v6, v0, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_50} :catch_57
    .catchall {:try_start_45 .. :try_end_50} :catchall_64

    .line 209
    :try_start_50
    invoke-virtual {v5}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V

    .line 195
    :goto_53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 205
    :catch_57
    move-exception v0

    .line 209
    invoke-virtual {v5}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_5b} :catch_5c
    .catchall {:try_start_50 .. :try_end_5b} :catchall_61

    goto :goto_53

    .line 211
    :catch_5c
    move-exception v0

    .line 213
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_53

    .line 185
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :catchall_64
    move-exception v0

    :try_start_65
    invoke-virtual {v5}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V

    .line 210
    throw v0
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_69} :catch_5c
    .catchall {:try_start_65 .. :try_end_69} :catchall_61
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V
    .registers 10

    .prologue
    .line 245
    monitor-enter p0

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
    .catchall {:try_start_1 .. :try_end_15} :catchall_6d

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 278
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 249
    :cond_20
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_6d

    move-result-object v2

    .line 250
    const/4 v1, 0x0

    .line 252
    :try_start_25
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2e} :catch_99
    .catchall {:try_start_25 .. :try_end_2e} :catchall_89

    .line 253
    :try_start_2e
    new-instance v1, Lcom/bytedance/sdk/adnet/core/f$a;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/sdk/adnet/core/f$a;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V

    .line 254
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Ljava/io/OutputStream;)Z

    move-result v3

    .line 255
    if-nez v3, :cond_70

    .line 256
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 257
    const-string v1, "Failed to write header for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_51} :catch_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_94

    .line 265
    :catch_51
    move-exception v1

    .line 268
    :goto_52
    if-eqz v0, :cond_57

    .line 269
    :try_start_54
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_90
    .catchall {:try_start_54 .. :try_end_57} :catchall_6d

    .line 274
    :cond_57
    :goto_57
    :try_start_57
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 275
    if-nez v0, :cond_1e

    .line 276
    const-string v0, "Could not clean up file %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_6d

    goto :goto_1e

    .line 245
    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_70
    :try_start_70
    iget-object v3, p2, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    invoke-virtual {v0, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 261
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    .line 262
    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V

    .line 263
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/f;->b()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_81} :catch_51
    .catchall {:try_start_70 .. :try_end_81} :catchall_94

    .line 268
    if-eqz v0, :cond_1e

    .line 269
    :try_start_83
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_87
    .catchall {:try_start_83 .. :try_end_86} :catchall_6d

    goto :goto_1e

    .line 271
    :catch_87
    move-exception v0

    goto :goto_1e

    .line 267
    :catchall_89
    move-exception v0

    .line 268
    :goto_8a
    if-eqz v1, :cond_8f

    .line 269
    :try_start_8c
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_92
    .catchall {:try_start_8c .. :try_end_8f} :catchall_6d

    .line 273
    :cond_8f
    :goto_8f
    :try_start_8f
    throw v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_6d

    .line 271
    :catch_90
    move-exception v0

    goto :goto_57

    :catch_92
    move-exception v1

    goto :goto_8f

    .line 267
    :catchall_94
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8a

    .line 265
    :catch_99
    move-exception v0

    move-object v0, v1

    goto :goto_52
.end method

.method b(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 285
    monitor-enter p0

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

    move-result-object v3

    aput-object v3, v1, v2

    .line 288
    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 292
    :cond_20
    monitor-exit p0

    return-void

    .line 285
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .prologue
    .line 311
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
