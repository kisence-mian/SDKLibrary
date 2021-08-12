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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/a/c/b;->a:Z

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    check-cast p1, Lcom/bytedance/sdk/a/b/a/c/g;

    .line 47
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->g()Lcom/bytedance/sdk/a/b/a/c/c;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->f()Lcom/bytedance/sdk/a/b/a/b/g;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->e()Lcom/bytedance/sdk/a/b/i;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v3

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 54
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/a/b/p;->c(Lcom/bytedance/sdk/a/b/e;)V

    .line 55
    invoke-interface {v0, v3}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Lcom/bytedance/sdk/a/b/y;)V

    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/y;)V

    .line 58
    nop

    .line 59
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/sdk/a/b/a/c/f;->c(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_a8

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v6

    if-eqz v6, :cond_a8

    .line 63
    const-string v6, "Expect"

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 64
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/a/c/c;->a()V

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/a/b/p;->e(Lcom/bytedance/sdk/a/b/e;)V

    .line 66
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Z)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v7

    .line 69
    :cond_64
    if-nez v7, :cond_9e

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/a/b/p;->d(Lcom/bytedance/sdk/a/b/e;)V

    .line 72
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/z;->b()J

    move-result-wide v8

    .line 73
    new-instance v2, Lcom/bytedance/sdk/a/b/a/c/b$a;

    .line 74
    invoke-interface {v0, v3, v8, v9}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Lcom/bytedance/sdk/a/b/y;J)Lcom/bytedance/sdk/a/a/r;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/bytedance/sdk/a/b/a/c/b$a;-><init>(Lcom/bytedance/sdk/a/a/r;)V

    .line 75
    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v6

    .line 77
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/a/d;)V

    .line 78
    invoke-interface {v6}, Lcom/bytedance/sdk/a/a/d;->close()V

    .line 79
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v6

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v8

    iget-wide v9, v2, Lcom/bytedance/sdk/a/b/a/c/b$a;->a:J

    invoke-virtual {v6, v8, v9, v10}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;J)V

    goto :goto_a8

    .line 81
    :cond_9e
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v2

    if-nez v2, :cond_a8

    .line 85
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/g;->d()V

    nop

    .line 89
    :cond_a8
    :goto_a8
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/a/c/c;->b()V

    .line 91
    if-nez v7, :cond_bd

    .line 92
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/a/b/p;->e(Lcom/bytedance/sdk/a/b/e;)V

    .line 93
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Z)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v7

    .line 96
    :cond_bd
    nop

    .line 97
    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v2

    .line 98
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/b/c;->c()Lcom/bytedance/sdk/a/b/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/q;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/a/b/aa$a;->a(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v2

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/a/b/aa$a;->b(J)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v2

    .line 103
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/aa;)V

    .line 106
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result p1

    .line 107
    iget-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/c/b;->a:Z

    if-eqz v3, :cond_104

    const/16 v3, 0x65

    if-ne p1, v3, :cond_104

    .line 109
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    sget-object v2, Lcom/bytedance/sdk/a/b/a/c;->c:Lcom/bytedance/sdk/a/b/ab;

    .line 110
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    goto :goto_114

    .line 113
    :cond_104
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v3

    .line 114
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/b/a/c/c;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 118
    :goto_114
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "close"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_130

    .line 119
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 120
    :cond_130
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/g;->d()V

    .line 123
    :cond_133
    const/16 v1, 0xcc

    if-eq p1, v1, :cond_13b

    const/16 v1, 0xcd

    if-ne p1, v1, :cond_149

    :cond_13b
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_14a

    .line 128
    :cond_149
    return-object v0

    .line 124
    :cond_14a
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 125
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ab;->b()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
