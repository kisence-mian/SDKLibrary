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
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_14

    .line 50
    if-eqz p2, :cond_c

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    .line 52
    iput-object p2, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    .line 53
    return-void

    .line 50
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget v0, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    if-nez v0, :cond_5

    return-void

    .line 117
    :cond_5
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

    .line 120
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_79

    .line 59
    iget-boolean v3, p0, Lcom/bytedance/sdk/a/a/k;->d:Z

    if-nez v3, :cond_71

    .line 60
    if-nez v2, :cond_d

    return-wide v0

    .line 63
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/k;->b()Z

    move-result v0

    .line 67
    const/4 v1, 0x1

    :try_start_12
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
    if-lez v2, :cond_38

    .line 71
    iget p2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr p2, v2

    iput p2, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 72
    iget-wide p2, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 73
    return-wide v0

    .line 75
    :cond_38
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_55

    .line 84
    :cond_49
    if-nez v0, :cond_4d

    .line 87
    nop

    .line 88
    goto :goto_d

    .line 84
    :cond_4d
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_55
    :goto_55
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/k;->c()V

    .line 77
    iget p2, v1, Lcom/bytedance/sdk/a/a/o;->b:I

    iget p3, v1, Lcom/bytedance/sdk/a/a/o;->c:I

    if-ne p2, p3, :cond_67

    .line 79
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 80
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V
    :try_end_67
    .catch Ljava/util/zip/DataFormatException; {:try_start_12 .. :try_end_67} :catch_6a

    .line 82
    :cond_67
    const-wide/16 p1, -0x1

    return-wide p1

    .line 85
    :catch_6a
    move-exception p1

    .line 86
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 59
    :cond_71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

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

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 99
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/k;->c()V

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_3a

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    .line 106
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/k;->a:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 107
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    .line 108
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/k;->b:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v4, p0, Lcom/bytedance/sdk/a/a/k;->c:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 109
    return v1

    .line 100
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/k;->d:Z

    if-eqz v0, :cond_5

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

    .line 133
    return-void
.end method
