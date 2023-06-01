.class Lcom/ssjj/fnsdk/core/LruDiskCache$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/LruDiskCache;

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/nio/charset/Charset;

.field private d:[B

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/io/InputStream;)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/io/InputStream;I)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "US-ASCII"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->c:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_20

    if-ltz p3, :cond_18

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->b:Ljava/io/InputStream;

    new-array p1, p3, [B

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    return-void

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache$b;)Ljava/nio/charset/Charset;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->c:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iput v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->f:I

    return-void

    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->b:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    if-eqz v1, :cond_87

    iget v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    iget v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->f:I

    if-lt v1, v2, :cond_10

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->b()V

    :cond_10
    iget v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    :goto_12
    iget v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->f:I

    const/16 v3, 0xa

    if-ne v1, v2, :cond_5a

    new-instance v1, Lcom/ssjj/fnsdk/core/p;

    iget v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->f:I

    iget v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/ssjj/fnsdk/core/p;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache$b;I)V

    :goto_24
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    iget v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    iget v5, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->f:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->f:I

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->b()V

    iget v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    :goto_36
    iget v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->f:I

    if-ne v2, v4, :cond_3b

    goto :goto_24

    :cond_3b
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_57

    iget v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    if-eq v2, v3, :cond_4a

    sub-int v5, v2, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_4a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_5a
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_84

    iget v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    if-eq v1, v3, :cond_6d

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_6d

    goto :goto_6e

    :cond_6d
    move v3, v1

    :goto_6e
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    iget v5, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    sub-int/2addr v3, v5

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->e:I

    monitor-exit v0

    return-object v2

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_87
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->b:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->d:[B

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
