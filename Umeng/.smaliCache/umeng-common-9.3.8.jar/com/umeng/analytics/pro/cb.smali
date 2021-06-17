.class public Lcom/umeng/analytics/pro/cb;
.super Lcom/umeng/analytics/pro/cd;
.source "TIOStreamTransport.java"


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    .line 53
    iput-object p1, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    .line 72
    iput-object p1, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    .line 73
    iput-object p2, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    .line 122
    :try_start_4
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_13

    .line 125
    nop

    .line 126
    if-ltz p1, :cond_c

    .line 129
    return p1

    .line 127
    :cond_c
    new-instance p1, Lcom/umeng/analytics/pro/ce;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/ce;-><init>(I)V

    throw p1

    .line 123
    :catch_13
    move-exception p1

    .line 124
    new-instance p2, Lcom/umeng/analytics/pro/ce;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/umeng/analytics/pro/ce;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 118
    :cond_1b
    new-instance p1, Lcom/umeng/analytics/pro/ce;

    const/4 p2, 0x1

    const-string p3, "Cannot read from null inputStream"

    invoke-direct {p1, p2, p3}, Lcom/umeng/analytics/pro/ce;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .registers 2

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public b([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    .line 140
    :try_start_4
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_9

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catch_9
    move-exception p1

    .line 142
    new-instance p2, Lcom/umeng/analytics/pro/ce;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/umeng/analytics/pro/ce;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 137
    :cond_11
    new-instance p1, Lcom/umeng/analytics/pro/ce;

    const/4 p2, 0x1

    const-string p3, "Cannot write to null outputStream"

    invoke-direct {p1, p2, p3}, Lcom/umeng/analytics/pro/ce;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public c()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 97
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 100
    goto :goto_d

    .line 98
    :catch_9
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :goto_d
    iput-object v1, p0, Lcom/umeng/analytics/pro/cb;->a:Ljava/io/InputStream;

    .line 103
    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_1d

    .line 105
    :try_start_13
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    .line 108
    goto :goto_1b

    .line 106
    :catch_17
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :goto_1b
    iput-object v1, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    .line 111
    :cond_1d
    return-void
.end method

.method public d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/umeng/analytics/pro/cb;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    .line 154
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_9

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :catch_9
    move-exception v0

    .line 156
    new-instance v1, Lcom/umeng/analytics/pro/ce;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/umeng/analytics/pro/ce;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_11
    new-instance v0, Lcom/umeng/analytics/pro/ce;

    const/4 v1, 0x1

    const-string v2, "Cannot flush null outputStream"

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/ce;-><init>(ILjava/lang/String;)V

    throw v0
.end method
