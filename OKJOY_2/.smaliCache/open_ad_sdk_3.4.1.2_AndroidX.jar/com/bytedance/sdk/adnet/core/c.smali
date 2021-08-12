.class Lcom/bytedance/sdk/adnet/core/c;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayPoolOutputStream.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/adnet/core/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/b;I)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/c;->a:Lcom/bytedance/sdk/adnet/core/b;

    .line 53
    const/16 v0, 0x100

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/b;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/c;->buf:[B

    .line 54
    return-void
.end method

.method private a(I)V
    .registers 5

    .line 74
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/c;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/c;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_9

    .line 75
    return-void

    .line 77
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/c;->a:Lcom/bytedance/sdk/adnet/core/b;

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/c;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/b;->a(I)[B

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/c;->buf:[B

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/c;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/c;->a:Lcom/bytedance/sdk/adnet/core/b;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/c;->buf:[B

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/b;->a([B)V

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/c;->buf:[B

    .line 81
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/c;->a:Lcom/bytedance/sdk/adnet/core/b;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/c;->buf:[B

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/b;->a([B)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/c;->buf:[B

    .line 60
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 61
    return-void
.end method

.method public finalize()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/c;->a:Lcom/bytedance/sdk/adnet/core/b;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/c;->buf:[B

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/b;->a([B)V

    .line 66
    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 3

    monitor-enter p0

    .line 91
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/core/c;->a(I)V

    .line 92
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 93
    monitor-exit p0

    return-void

    .line 90
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 4

    monitor-enter p0

    .line 85
    :try_start_1
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/adnet/core/c;->a(I)V

    .line 86
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 87
    monitor-exit p0

    return-void

    .line 84
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
