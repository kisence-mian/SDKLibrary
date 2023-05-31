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

    .prologue
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
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->c:Lcom/bytedance/sdk/a/a/e;

    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->f:J

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->f:J

    .line 230
    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/a/a/r;
    .registers 6

    .prologue
    .line 252
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

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

    .line 253
    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 254
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/d/a$d;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;J)V

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;J)Lcom/bytedance/sdk/a/a/r;
    .registers 6

    .prologue
    .line 104
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 106
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->d()Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    .line 111
    :goto_12
    return-object v0

    .line 109
    :cond_13
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/d/a;->a(J)Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    goto :goto_12

    .line 114
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/a/s;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

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

    .line 265
    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 266
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$c;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/b/a/d/a$c;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;Lcom/bytedance/sdk/a/b/s;)V

    return-object v0
.end method

.method public a(Z)Lcom/bytedance/sdk/a/b/aa$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    .line 201
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

    .line 205
    :cond_25
    :try_start_25
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/a/c/k;

    move-result-object v1

    .line 207
    new-instance v0, Lcom/bytedance/sdk/a/b/aa$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/aa$a;-><init>()V

    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/c/k;->a:Lcom/bytedance/sdk/a/b/w;

    .line 208
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/w;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    iget v2, v1, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    .line 209
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(I)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    .line 210
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 213
    if-eqz p1, :cond_56

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_56

    .line 214
    const/4 v0, 0x0

    .line 218
    :goto_55
    return-object v0

    .line 217
    :cond_56
    const/4 v1, 0x4

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I
    :try_end_59
    .catch Ljava/io/EOFException; {:try_start_25 .. :try_end_59} :catch_5a

    goto :goto_55

    .line 219
    :catch_5a
    move-exception v0

    .line 221
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 223
    throw v1
.end method

.method public a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/ab;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/p;->f(Lcom/bytedance/sdk/a/b/e;)V

    .line 144
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Lcom/bytedance/sdk/a/b/aa;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 147
    invoke-virtual {p0, v6, v7}, Lcom/bytedance/sdk/a/b/a/d/a;->b(J)Lcom/bytedance/sdk/a/a/s;

    move-result-object v2

    .line 148
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v2

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    .line 162
    :goto_28
    return-object v0

    .line 151
    :cond_29
    const-string v0, "chunked"

    const-string v2, "Transfer-Encoding"

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 152
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/a/s;

    move-result-object v2

    .line 153
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v2

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    goto :goto_28

    .line 156
    :cond_4d
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/aa;)J

    move-result-wide v2

    .line 157
    cmp-long v0, v2, v4

    if-eqz v0, :cond_63

    .line 158
    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/a/b/a/d/a;->b(J)Lcom/bytedance/sdk/a/a/s;

    move-result-object v4

    .line 159
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {v4}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    goto :goto_28

    .line 162
    :cond_63
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/d/a;->e()Lcom/bytedance/sdk/a/a/s;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v2

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    goto :goto_28
.end method

.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V

    .line 175
    return-void
.end method

.method a(Lcom/bytedance/sdk/a/a/i;)V
    .registers 4

    .prologue
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

    .prologue
    .line 186
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    if-eqz v0, :cond_1f

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

    .line 187
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v1

    :goto_2f
    if-ge v0, v1, :cond_51

    .line 189
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v2

    const-string v3, ": "

    .line 190
    invoke-interface {v2, v3}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v2

    .line 191
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v2

    const-string v3, "\r\n"

    .line 192
    invoke-interface {v2, v3}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 194
    :cond_51
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->d:Lcom/bytedance/sdk/a/a/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 196
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Lcom/bytedance/sdk/a/b/r;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public b(J)Lcom/bytedance/sdk/a/a/s;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

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

    .line 259
    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 260
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/d/a$e;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;J)V

    return-object v0
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
    .line 246
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

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

    .line 247
    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 248
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/a/d/a$b;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;)V

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/a/a/s;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

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

    .line 271
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_2c
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->e:I

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/d/a;->b:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->d()V

    .line 274
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a$f;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/a/d/a$f;-><init>(Lcom/bytedance/sdk/a/b/a/d/a;)V

    return-object v0
.end method
