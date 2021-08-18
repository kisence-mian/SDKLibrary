.class Lokhttp3/internal/cache/FaultHidingSink;
.super Lokio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .registers 2
    .param p1, "delegate"    # Lokio/Sink;

    .line 28
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 29
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

    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    .line 57
    :cond_5
    :try_start_5
    invoke-super {p0}, Lokio/ForwardingSink;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 61
    goto :goto_10

    .line 58
    :catch_9
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 60
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    .line 47
    :cond_5
    :try_start_5
    invoke-super {p0}, Lokio/ForwardingSink;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 51
    goto :goto_10

    .line 48
    :catch_9
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 50
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .registers 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 65
    return-void
.end method

.method public write(Lokio/Buffer;J)V
    .registers 6
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_8

    .line 33
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->skip(J)V

    .line 34
    return-void

    .line 37
    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 41
    goto :goto_13

    .line 38
    :catch_c
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 40
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13
    return-void
.end method
