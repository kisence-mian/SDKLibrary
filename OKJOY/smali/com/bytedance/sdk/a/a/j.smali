.class public final Lcom/bytedance/sdk/a/a/j;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# instance fields
.field private a:I

.field private final b:Lcom/bytedance/sdk/a/a/e;

.field private final c:Ljava/util/zip/Inflater;

.field private final d:Lcom/bytedance/sdk/a/a/k;

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/a/s;)V
    .registers 5

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    .line 64
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    .line 67
    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_17
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/j;->c:Ljava/util/zip/Inflater;

    .line 69
    invoke-static {p1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    .line 70
    new-instance v0, Lcom/bytedance/sdk/a/a/k;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/j;->c:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/a/a/k;-><init>(Lcom/bytedance/sdk/a/a/e;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/j;->d:Lcom/bytedance/sdk/a/a/k;

    .line 71
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/a/c;JJ)V
    .registers 14

    .prologue
    const-wide/16 v2, 0x0

    .line 199
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 200
    :goto_4
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-ltz v1, :cond_18

    .line 201
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 200
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_4

    .line 205
    :cond_18
    :goto_18
    cmp-long v1, p4, v2

    if-lez v1, :cond_37

    .line 206
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v4, v1

    add-long/2addr v4, p2

    long-to-int v1, v4

    .line 207
    iget v4, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 208
    iget-object v5, p0, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    iget-object v6, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    invoke-virtual {v5, v6, v1, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 209
    int-to-long v4, v4

    sub-long/2addr p4, v4

    .line 205
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    move-wide p2, v2

    goto :goto_18

    .line 212
    :cond_37
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    if-eq p3, p2, :cond_22

    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 217
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 216
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_22
    return-void
.end method

.method private b()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v7

    .line 123
    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9d

    const/4 v0, 0x1

    move v6, v0

    .line 124
    :goto_1c
    if-eqz v6, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 126
    :cond_2c
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->i()S

    move-result v0

    .line 127
    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-direct {p0, v1, v2, v0}, Lcom/bytedance/sdk/a/a/j;->a(Ljava/lang/String;II)V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 134
    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 136
    if-eqz v6, :cond_5e

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 137
    :cond_5e
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->k()S

    move-result v8

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 139
    if-eqz v6, :cond_7d

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 140
    :cond_7d
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 147
    :cond_83
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ba

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(B)J

    move-result-wide v8

    .line 149
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_a1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 123
    :cond_9d
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_1c

    .line 150
    :cond_a1
    if-eqz v6, :cond_b2

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 151
    :cond_b2
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 158
    :cond_ba
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ed

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(B)J

    move-result-wide v8

    .line 160
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_d4

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 161
    :cond_d4
    if-eqz v6, :cond_e5

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 162
    :cond_e5
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 169
    :cond_ed
    if-eqz v6, :cond_107

    .line 170
    const-string v0, "FHCRC"

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->k()S

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/a/j;->a(Ljava/lang/String;II)V

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 173
    :cond_107
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
    .line 180
    const-string v0, "CRC"

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->l()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/a/j;->a(Ljava/lang/String;II)V

    .line 181
    const-string v0, "ISIZE"

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->l()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/j;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/a/j;->a(Ljava/lang/String;II)V

    .line 182
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    const/4 v7, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 75
    cmp-long v2, p2, v4

    if-gez v2, :cond_23

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

    .line 76
    :cond_23
    cmp-long v2, p2, v4

    if-nez v2, :cond_28

    .line 111
    :goto_27
    return-wide v4

    .line 79
    :cond_28
    iget v2, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    if-nez v2, :cond_31

    .line 80
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/j;->b()V

    .line 81
    iput v3, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    .line 85
    :cond_31
    iget v2, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    if-ne v2, v3, :cond_49

    .line 86
    iget-wide v2, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 87
    iget-object v4, p0, Lcom/bytedance/sdk/a/a/j;->d:Lcom/bytedance/sdk/a/a/k;

    invoke-virtual {v4, p1, p2, p3}, Lcom/bytedance/sdk/a/a/k;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v4

    .line 88
    cmp-long v6, v4, v0

    if-eqz v6, :cond_47

    move-object v0, p0

    move-object v1, p1

    .line 89
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    goto :goto_27

    .line 92
    :cond_47
    iput v7, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    .line 98
    :cond_49
    iget v2, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    if-ne v2, v7, :cond_63

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/j;->c()V

    .line 100
    const/4 v2, 0x3

    iput v2, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    .line 106
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/a/a/e;->e()Z

    move-result v2

    if-nez v2, :cond_63

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    move-wide v4, v0

    .line 111
    goto :goto_27
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->d:Lcom/bytedance/sdk/a/a/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/k;->close()V

    .line 192
    return-void
.end method
