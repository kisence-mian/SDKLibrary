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
    .registers 4

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
    if-eqz p1, :cond_25

    .line 68
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/j;->c:Ljava/util/zip/Inflater;

    .line 69
    invoke-static {p1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    .line 70
    new-instance v1, Lcom/bytedance/sdk/a/a/k;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/a/a/k;-><init>(Lcom/bytedance/sdk/a/a/e;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lcom/bytedance/sdk/a/a/j;->d:Lcom/bytedance/sdk/a/a/k;

    .line 71
    return-void

    .line 67
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/bytedance/sdk/a/a/c;JJ)V
    .registers 10

    .line 199
    iget-object p1, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    .line 200
    :goto_2
    iget v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_16

    .line 201
    iget v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 200
    iget-object p1, p1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_2

    :cond_16
    const-wide/16 v0, 0x0

    .line 205
    :goto_18
    cmp-long v2, p4, v0

    if-lez v2, :cond_38

    .line 206
    iget v2, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    .line 207
    iget p3, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 208
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lcom/bytedance/sdk/a/a/o;->a:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 209
    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 210
    nop

    .line 205
    iget-object p1, p1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    move-wide p2, v0

    goto :goto_18

    .line 212
    :cond_38
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    if-ne p3, p2, :cond_3

    .line 219
    return-void

    .line 216
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 217
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    .line 216
    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 122
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/a/c;->b(J)B

    move-result v7

    .line 123
    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1e

    move v10, v8

    goto :goto_1f

    :cond_1e
    move v10, v9

    .line 124
    :goto_1f
    if-eqz v10, :cond_30

    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 126
    :cond_30
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->i()S

    move-result v0

    .line 127
    const/16 v1, 0x1f8b

    const-string v2, "ID1ID2"

    invoke-direct {v6, v2, v1, v0}, Lcom/bytedance/sdk/a/a/j;->a(Ljava/lang/String;II)V

    .line 128
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 134
    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_86

    .line 135
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 136
    if-eqz v10, :cond_61

    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 137
    :cond_61
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->k()S

    move-result v0

    .line 138
    iget-object v1, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    int-to-long v11, v0

    invoke-interface {v1, v11, v12}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 139
    if-eqz v10, :cond_81

    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 140
    :cond_81
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0, v11, v12}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 147
    :cond_86
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-ne v0, v8, :cond_b8

    .line 148
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0, v9}, Lcom/bytedance/sdk/a/a/e;->a(B)J

    move-result-wide v15

    .line 149
    cmp-long v0, v15, v11

    if-eqz v0, :cond_b2

    .line 150
    if-eqz v10, :cond_aa

    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 151
    :cond_aa
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    add-long v1, v15, v13

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    goto :goto_b8

    .line 149
    :cond_b2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 158
    :cond_b8
    :goto_b8
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_e5

    .line 159
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0, v9}, Lcom/bytedance/sdk/a/a/e;->a(B)J

    move-result-wide v7

    .line 160
    cmp-long v0, v7, v11

    if-eqz v0, :cond_df

    .line 161
    if-eqz v10, :cond_d8

    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 162
    :cond_d8
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    add-long/2addr v7, v13

    invoke-interface {v0, v7, v8}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    goto :goto_e5

    .line 160
    :cond_df
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 169
    :cond_e5
    :goto_e5
    if-eqz v10, :cond_ff

    .line 170
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->k()S

    move-result v0

    iget-object v1, v6, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lcom/bytedance/sdk/a/a/j;->a(Ljava/lang/String;II)V

    .line 171
    iget-object v0, v6, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 173
    :cond_ff
    return-void
.end method

.method private c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->l()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/j;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/a/a/j;->a(Ljava/lang/String;II)V

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->l()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/j;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "ISIZE"

    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/a/a/j;->a(Ljava/lang/String;II)V

    .line 182
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4b

    .line 76
    if-nez v2, :cond_9

    return-wide v0

    .line 79
    :cond_9
    iget v0, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 80
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/j;->b()V

    .line 81
    iput v1, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    .line 85
    :cond_13
    iget v0, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_2f

    .line 86
    iget-wide v7, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->d:Lcom/bytedance/sdk/a/a/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/k;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide p2

    .line 88
    cmp-long v0, p2, v2

    if-eqz v0, :cond_2d

    .line 89
    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/a/a/j;->a(Lcom/bytedance/sdk/a/a/c;JJ)V

    .line 90
    return-wide p2

    .line 92
    :cond_2d
    iput v4, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    .line 98
    :cond_2f
    iget p1, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    if-ne p1, v4, :cond_4a

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/j;->c()V

    .line 100
    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/sdk/a/a/j;->a:I

    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/a/a/j;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/e;->e()Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_4a

    .line 107
    :cond_42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_4a
    :goto_4a
    return-wide v2

    .line 75
    :cond_4b
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

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/j;->d:Lcom/bytedance/sdk/a/a/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/k;->close()V

    .line 192
    return-void
.end method
