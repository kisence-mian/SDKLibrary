.class public final Lcom/bytedance/sdk/a/b/a/a/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/t;


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/a/e;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/a/a/e;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    .line 53
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/a/b;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_3

    .line 219
    :cond_2
    :goto_2
    return-object p2

    .line 166
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/a/a/b;->a()Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->c()Lcom/bytedance/sdk/a/a/e;

    move-result-object v1

    .line 170
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    .line 172
    new-instance v2, Lcom/bytedance/sdk/a/b/a/a/a$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/bytedance/sdk/a/b/a/a/a$1;-><init>(Lcom/bytedance/sdk/a/b/a/a/a;Lcom/bytedance/sdk/a/a/e;Lcom/bytedance/sdk/a/b/a/a/b;Lcom/bytedance/sdk/a/a/d;)V

    .line 217
    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->a()J

    move-result-wide v4

    .line 219
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/a/b/a/c/h;

    .line 220
    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v2

    invoke-direct {v3, v0, v4, v5, v2}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p2

    goto :goto_2
.end method

.method private static a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;
    .registers 3

    .prologue
    .line 152
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 153
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p0

    .line 152
    :cond_15
    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/a/b/r;Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/r;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 228
    new-instance v2, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_3a

    .line 231
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 233
    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 230
    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 236
    :cond_28
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/a/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_25

    .line 237
    :cond_34
    sget-object v6, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {v6, v2, v4, v5}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 241
    :cond_3a
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v1

    :goto_3e
    if-ge v0, v1, :cond_5f

    .line 242
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 241
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 246
    :cond_4f
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 247
    sget-object v4, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 251
    :cond_5f
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 259
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    .line 259
    :goto_41
    return v0

    .line 266
    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    .line 58
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/b/a/a/e;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 61
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    new-instance v4, Lcom/bytedance/sdk/a/b/a/a/c$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Lcom/bytedance/sdk/a/b/a/a/c$a;-><init>(JLcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/a/c$a;->a()Lcom/bytedance/sdk/a/b/a/a/c;

    move-result-object v2

    .line 64
    iget-object v3, v2, Lcom/bytedance/sdk/a/b/a/a/c;->a:Lcom/bytedance/sdk/a/b/y;

    .line 65
    iget-object v4, v2, Lcom/bytedance/sdk/a/b/a/a/c;->b:Lcom/bytedance/sdk/a/b/aa;

    .line 67
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    if-eqz v5, :cond_2d

    .line 68
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {v5, v2}, Lcom/bytedance/sdk/a/b/a/a/e;->a(Lcom/bytedance/sdk/a/b/a/a/c;)V

    .line 71
    :cond_2d
    if-eqz v0, :cond_38

    if-nez v4, :cond_38

    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 76
    :cond_38
    if-nez v3, :cond_76

    if-nez v4, :cond_76

    .line 77
    new-instance v0, Lcom/bytedance/sdk/a/b/aa$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/aa$a;-><init>()V

    .line 78
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;

    .line 79
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/w;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 80
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(I)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 81
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/a/b/a/c;->c:Lcom/bytedance/sdk/a/b/ab;

    .line 82
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 83
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/a/b/aa$a;->a(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/a/b/aa$a;->b(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 148
    :cond_73
    :goto_73
    return-object v0

    :cond_74
    move-object v0, v1

    .line 58
    goto :goto_f

    .line 89
    :cond_76
    if-nez v3, :cond_89

    .line 90
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 91
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->b(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    goto :goto_73

    .line 97
    :cond_89
    :try_start_89
    invoke-interface {p1, v3}, Lcom/bytedance/sdk/a/b/t$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa;
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_ec

    move-result-object v1

    .line 100
    if-nez v1, :cond_98

    if-eqz v0, :cond_98

    .line 101
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 106
    :cond_98
    if-eqz v4, :cond_100

    .line 107
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_f9

    .line 108
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 109
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/r;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/r;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/r;Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 110
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa;->k()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/a/b/aa$a;->a(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/a/b/aa$a;->b(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 112
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->b(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 113
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 115
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 119
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/b/a/a/e;->a()V

    .line 120
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {v1, v4, v0}, Lcom/bytedance/sdk/a/b/a/a/e;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/aa;)V

    goto :goto_73

    .line 100
    :catchall_ec
    move-exception v2

    if-nez v1, :cond_f8

    if-eqz v0, :cond_f8

    .line 101
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 103
    :cond_f8
    throw v2

    .line 123
    :cond_f9
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 127
    :cond_100
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 128
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->b(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 129
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    if-eqz v1, :cond_73

    .line 133
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Lcom/bytedance/sdk/a/b/aa;)Z

    move-result v1

    if-eqz v1, :cond_134

    invoke-static {v0, v3}, Lcom/bytedance/sdk/a/b/a/a/c;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/y;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 135
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/a/b/a/a/e;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/a/a/b;

    move-result-object v1

    .line 136
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/a/a/b;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    goto/16 :goto_73

    .line 139
    :cond_134
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 141
    :try_start_13e
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {v1, v3}, Lcom/bytedance/sdk/a/b/a/a/e;->b(Lcom/bytedance/sdk/a/b/y;)V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_143} :catch_145

    goto/16 :goto_73

    .line 142
    :catch_145
    move-exception v1

    goto/16 :goto_73
.end method
