.class public final Lcom/bytedance/sdk/a/b/a/d/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/d/a$f;,
        Lcom/bytedance/sdk/a/b/a/d/a$c;,
        Lcom/bytedance/sdk/a/b/a/d/a$e;,
        Lcom/bytedance/sdk/a/b/a/d/a$a;,
        Lcom/bytedance/sdk/a/b/a/d/a$b;,
        Lcom/bytedance/sdk/a/b/a/d/a$d;
    }
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/v;

.field final b:Lcom/bytedance/sdk/a/b/a/b/g;

.field final c:Lcom/bytedance/sdk/a/a/e;

.field final d:Lcom/bytedance/sdk/a/a/d;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/a/e;Lcom/bytedance/sdk/a/a/d;)V
    .registers 7

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 92
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->f:J

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->a:Lcom/bytedance/sdk/a/b/v;

    .line 97
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    .line 98
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/d/a;->c:Lcom/bytedance/sdk/a/a/e;

    .line 99
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    .line 100
    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->c:Lcom/bytedance/sdk/a/a/e;

    iget-wide v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->f:J

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/a/a/e;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-wide v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->f:J

    .line 230
    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/a/a/r;
    .registers 5

    .line 252
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 253
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 254
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/d/a$d;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;J)V

    return-object v0

    .line 252
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;J)Lcom/bytedance/sdk/a/a/r;
    .registers 6

    .line 104
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 106
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->d()Lcom/bytedance/sdk/a/a/r;

    move-result-object p1

    return-object p1

    .line 109
    :cond_13
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1e

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/d/a;->a(J)Lcom/bytedance/sdk/a/a/r;

    move-result-object p1

    return-object p1

    .line 114
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/a/s;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 265
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 266
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$c;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/b/a/d/a$c;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;Lcom/bytedance/sdk/a/b/s;)V

    return-object v0

    .line 264
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_24

    .line 201
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_24
    :goto_24
    :try_start_24
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/a/c/k;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/bytedance/sdk/a/b/aa$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/b/aa$a;-><init>()V

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/k;->a:Lcom/bytedance/sdk/a/b/w;

    .line 208
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/w;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    .line 209
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(I)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    .line 213
    if-eqz p1, :cond_55

    iget p1, v0, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_55

    .line 214
    const/4 p1, 0x0

    return-object p1

    .line 217
    :cond_55
    const/4 p1, 0x4

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I
    :try_end_58
    .catch Ljava/io/EOFException; {:try_start_24 .. :try_end_58} :catch_59

    .line 218
    return-object v1

    .line 219
    :catch_59
    move-exception p1

    .line 221
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 223
    throw v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/ab;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/p;->f(Lcom/bytedance/sdk/a/b/e;)V

    .line 144
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Lcom/bytedance/sdk/a/b/aa;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 147
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/a/b/a/d/a;->b(J)Lcom/bytedance/sdk/a/a/s;

    move-result-object p1

    .line 148
    new-instance v3, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {p1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    return-object v3

    .line 151
    :cond_27
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4d

    .line 152
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/a/s;

    move-result-object p1

    .line 153
    new-instance v1, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {p1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    return-object v1

    .line 156
    :cond_4d
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/aa;)J

    move-result-wide v4

    .line 157
    cmp-long p1, v4, v2

    if-eqz p1, :cond_63

    .line 158
    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/a/b/a/d/a;->b(J)Lcom/bytedance/sdk/a/a/s;

    move-result-object p1

    .line 159
    new-instance v1, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {p1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    return-object v1

    .line 162
    :cond_63
    new-instance p1, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->e()Lcom/bytedance/sdk/a/a/s;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    return-object p1
.end method

.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V

    .line 175
    return-void
.end method

.method a(Lcom/bytedance/sdk/a/a/i;)V
    .registers 4

    .line 283
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/i;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    .line 284
    sget-object v1, Lcom/bytedance/sdk/a/a/t;->c:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/a/a/i;->a(Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/i;

    .line 285
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->f()Lcom/bytedance/sdk/a/a/t;

    .line 286
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->e()Lcom/bytedance/sdk/a/a/t;

    .line 287
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/r;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    if-nez v0, :cond_3d

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 188
    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v1

    :goto_14
    if-ge p2, v1, :cond_34

    .line 189
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v2

    .line 190
    const-string v3, ": "

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v2

    .line 191
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v2

    .line 192
    invoke-interface {v2, v0}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 188
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 194
    :cond_34
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 195
    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 196
    return-void

    .line 186
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    .line 137
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/c;->a()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 136
    invoke-static {p1, v0}, Lcom/bytedance/sdk/a/b/a/c/i;->a(Lcom/bytedance/sdk/a/b/y;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Lcom/bytedance/sdk/a/b/r;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public b(J)Lcom/bytedance/sdk/a/a/s;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 259
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 260
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/d/a$e;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;J)V

    return-object v0

    .line 258
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V

    .line 180
    return-void
.end method

.method public c()Lcom/bytedance/sdk/a/b/r;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    .line 239
    :goto_5
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 240
    sget-object v2, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;)V

    goto :goto_5

    .line 242
    :cond_15
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/a/a/r;
    .registers 4

    .line 246
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 247
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 248
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/a/d/a$b;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;)V

    return-object v0

    .line 246
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lcom/bytedance/sdk/a/a/s;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    if-eqz v0, :cond_15

    .line 272
    const/4 v1, 0x5

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 273
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->d()V

    .line 274
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$f;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/a/d/a$f;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;)V

    return-object v0

    .line 271
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
