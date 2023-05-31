.class public final Lcom/bytedance/sdk/a/b/a/c/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/c/b$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/a/c/b;->a:Z

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Lcom/bytedance/sdk/a/b/a/c/g;

    .line 47
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->g()Lcom/bytedance/sdk/a/b/a/c/c;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->f()Lcom/bytedance/sdk/a/b/a/b/g;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->e()Lcom/bytedance/sdk/a/b/i;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v4

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 54
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/a/b/p;->c(Lcom/bytedance/sdk/a/b/e;)V

    .line 55
    invoke-interface {v2, v4}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Lcom/bytedance/sdk/a/b/y;)V

    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/y;)V

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/a/b/a/c/f;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_179

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v5

    if-eqz v5, :cond_179

    .line 63
    const-string v5, "100-continue"

    const-string v8, "Expect"

    invoke-virtual {v4, v8}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 64
    invoke-interface {v2}, Lcom/bytedance/sdk/a/b/a/c/c;->a()V

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/a/b/p;->e(Lcom/bytedance/sdk/a/b/e;)V

    .line 66
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Z)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    .line 69
    :cond_63
    if-nez v1, :cond_15b

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/a/b/p;->d(Lcom/bytedance/sdk/a/b/e;)V

    .line 72
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/z;->b()J

    move-result-wide v8

    .line 73
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/b$a;

    .line 74
    invoke-interface {v2, v4, v8, v9}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Lcom/bytedance/sdk/a/b/y;J)Lcom/bytedance/sdk/a/a/r;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/a/b/a/c/b$a;-><init>(Lcom/bytedance/sdk/a/a/r;)V

    .line 75
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v5

    .line 77
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/a/d;)V

    .line 78
    invoke-interface {v5}, Lcom/bytedance/sdk/a/a/d;->close()V

    .line 79
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v5

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v8

    iget-wide v10, v0, Lcom/bytedance/sdk/a/b/a/c/b$a;->a:J

    invoke-virtual {v5, v8, v10, v11}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;J)V

    move-object v0, v1

    .line 89
    :goto_9d
    invoke-interface {v2}, Lcom/bytedance/sdk/a/b/a/c/c;->b()V

    .line 91
    if-nez v0, :cond_b2

    .line 92
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/p;->e(Lcom/bytedance/sdk/a/b/e;)V

    .line 93
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Z)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 97
    :cond_b2
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 98
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/c;->c()Lcom/bytedance/sdk/a/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/q;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v6, v7}, Lcom/bytedance/sdk/a/b/aa$a;->a(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/a/b/aa$a;->b(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/aa;)V

    .line 106
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v1

    .line 107
    iget-boolean v4, p0, Lcom/bytedance/sdk/a/b/a/c/b;->a:Z

    if-eqz v4, :cond_167

    const/16 v4, 0x65

    if-ne v1, v4, :cond_167

    .line 109
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    sget-object v2, Lcom/bytedance/sdk/a/b/a/c;->c:Lcom/bytedance/sdk/a/b/ab;

    .line 110
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 118
    :goto_f7
    const-string v2, "close"

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v4

    const-string v5, "Connection"

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_117

    const-string v2, "close"

    const-string v4, "Connection"

    .line 119
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 120
    :cond_117
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/b/g;->d()V

    .line 123
    :cond_11a
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_122

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_178

    :cond_122
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ab;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_178

    .line 124
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ab;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_15b
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_164

    .line 85
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/b/g;->d()V

    :cond_164
    move-object v0, v1

    goto/16 :goto_9d

    .line 113
    :cond_167
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v4

    .line 114
    invoke-interface {v2, v0}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    goto :goto_f7

    .line 128
    :cond_178
    return-object v0

    :cond_179
    move-object v0, v1

    goto/16 :goto_9d
.end method
