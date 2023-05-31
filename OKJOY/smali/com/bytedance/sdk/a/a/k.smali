.class public final Lcom/bytedance/sdk/a/a/k;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# instance fields
.field private final a:Lcom/bytedance/sdk/a/a/e;

.field private final b:Ljava/util/zip/Inflater;

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/e;Ljava/util/zip/Inflater;)V
    .registers 5

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_17
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    .line 52
    iput-object p2, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    .line 53
    return-void
.end method

.method private c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget v0, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    if-nez v0, :cond_5

    .line 120
    :goto_4
    return-void

    .line 117
    :cond_5
    iget v0, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 118
    iget v1, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    .line 119
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 58
    cmp-long v2, p2, v0

    if-gez v2, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1f
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/a/k;->d:Z

    if-eqz v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2b
    cmp-long v2, p2, v0

    if-nez v2, :cond_30

    .line 82
    :goto_2f
    return-wide v0

    .line 63
    :cond_30
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/k;->b()Z

    move-result v0

    .line 67
    const/4 v1, 0x1

    :try_start_35
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v1

    .line 68
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 69
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    iget-object v4, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v5, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 70
    if-lez v2, :cond_5c

    .line 71
    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 72
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 73
    int-to-long v0, v2

    goto :goto_2f

    .line 75
    :cond_5c
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_6c

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 76
    :cond_6c
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/k;->c()V

    .line 77
    iget v0, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne v0, v2, :cond_7e

    .line 79
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 80
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 82
    :cond_7e
    const-wide/16 v0, -0x1

    goto :goto_2f

    .line 84
    :cond_81
    if-eqz v0, :cond_30

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "source exhausted prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8b
    .catch Ljava/util/zip/DataFormatException; {:try_start_35 .. :try_end_8b} :catch_8b

    .line 85
    :catch_8b
    move-exception v0

    .line 86
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_a

    .line 109
    :goto_9
    return v0

    .line 99
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/k;->c()V

    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1d
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->e()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    goto :goto_9

    .line 106
    :cond_27
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 107
    iget v2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v3, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    .line 108
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    iget-object v3, v1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v1, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v4, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_9
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/k;->d:Z

    if-eqz v0, :cond_5

    .line 133
    :goto_4
    return-void

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/a/k;->d:Z

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->close()V

    goto :goto_4
.end method
