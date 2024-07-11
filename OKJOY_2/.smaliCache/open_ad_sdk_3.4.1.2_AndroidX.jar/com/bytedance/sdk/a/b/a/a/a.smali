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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    .line 53
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/a/b;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    if-nez p1, :cond_3

    return-object p2

    .line 166
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/a/a/b;->a()Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    .line 167
    if-nez v0, :cond_a

    return-object p2

    .line 169
    :cond_a
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->d()Lcom/bytedance/sdk/a/a/e;

    move-result-object v1

    .line 170
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    .line 172
    new-instance v2, Lcom/bytedance/sdk/a/b/a/a/a$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/bytedance/sdk/a/b/a/a/a$1;-><init>(Lcom/bytedance/sdk/a/b/a/a/a;Lcom/bytedance/sdk/a/a/e;Lcom/bytedance/sdk/a/b/a/a/b;Lcom/bytedance/sdk/a/a/d;)V

    .line 217
    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ab;->b()J

    move-result-wide v0

    .line 219
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p2

    new-instance v3, Lcom/bytedance/sdk/a/b/a/c/h;

    .line 220
    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    .line 219
    return-object p1
.end method

.method private static a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;
    .registers 2

    .line 152
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 153
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p0

    goto :goto_17

    :cond_16
    nop

    .line 152
    :goto_17
    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/a/b/r;Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/r;
    .registers 9

    .line 228
    new-instance v0, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_3a

    .line 231
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 233
    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 234
    goto :goto_37

    .line 236
    :cond_26
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/a/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_37

    .line 237
    :cond_32
    sget-object v6, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {v6, v0, v4, v5}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 241
    :cond_3a
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result p0

    :goto_3e
    if-ge v2, p0, :cond_5f

    .line 242
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string v3, "Content-Length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 244
    goto :goto_5c

    .line 246
    :cond_4d
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 247
    sget-object v3, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 251
    :cond_5f
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    .line 259
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 260
    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 261
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 262
    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 263
    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 264
    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 265
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 266
    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    .line 259
    :goto_43
    return p0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    if-eqz v0, :cond_d

    .line 58
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/b/a/a/e;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 61
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    new-instance v3, Lcom/bytedance/sdk/a/b/a/a/c$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/bytedance/sdk/a/b/a/a/c$a;-><init>(JLcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/a/c$a;->a()Lcom/bytedance/sdk/a/b/a/a/c;

    move-result-object v1

    .line 64
    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/a/c;->a:Lcom/bytedance/sdk/a/b/y;

    .line 65
    iget-object v3, v1, Lcom/bytedance/sdk/a/b/a/a/c;->b:Lcom/bytedance/sdk/a/b/aa;

    .line 67
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    if-eqz v4, :cond_2a

    .line 68
    invoke-interface {v4, v1}, Lcom/bytedance/sdk/a/b/a/a/e;->a(Lcom/bytedance/sdk/a/b/a/a/c;)V

    .line 71
    :cond_2a
    if-eqz v0, :cond_35

    if-nez v3, :cond_35

    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 76
    :cond_35
    if-nez v2, :cond_71

    if-nez v3, :cond_71

    .line 77
    new-instance v0, Lcom/bytedance/sdk/a/b/aa$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/aa$a;-><init>()V

    .line 78
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;

    .line 79
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/w;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    const/16 v0, 0x1f8

    .line 80
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa$a;->a(I)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    .line 81
    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->c:Lcom/bytedance/sdk/a/b/ab;

    .line 82
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->b(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    .line 77
    return-object p1

    .line 89
    :cond_71
    if-nez v2, :cond_84

    .line 90
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    .line 91
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa$a;->b(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    .line 90
    return-object p1

    .line 95
    :cond_84
    nop

    .line 97
    :try_start_85
    invoke-interface {p1, v2}, Lcom/bytedance/sdk/a/b/t$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_134

    .line 100
    if-nez p1, :cond_94

    if-eqz v0, :cond_94

    .line 101
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 106
    :cond_94
    if-eqz v3, :cond_ef

    .line 107
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_e8

    .line 108
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 109
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/r;Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/aa$a;->b(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 112
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->b(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 113
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/a/a/e;->a()V

    .line 120
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {p1, v3, v0}, Lcom/bytedance/sdk/a/b/a/a/e;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/aa;)V

    .line 121
    return-object v0

    .line 123
    :cond_e8
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 127
    :cond_ef
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 128
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->b(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 129
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    if-eqz v0, :cond_133

    .line 133
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Lcom/bytedance/sdk/a/b/aa;)Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-static {p1, v2}, Lcom/bytedance/sdk/a/b/a/a/c;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/y;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/a/b/a/a/e;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/a/a/b;

    move-result-object v0

    .line 136
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/a/a/b;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    return-object p1

    .line 139
    :cond_122
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 141
    :try_start_12c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/b/a/a/e;->b(Lcom/bytedance/sdk/a/b/y;)V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_131} :catch_132

    .line 144
    goto :goto_133

    .line 142
    :catch_132
    move-exception v0

    .line 148
    :cond_133
    :goto_133
    return-object p1

    .line 100
    :catchall_134
    move-exception p1

    if-eqz v0, :cond_13e

    .line 101
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 103
    :cond_13e
    throw p1
.end method
