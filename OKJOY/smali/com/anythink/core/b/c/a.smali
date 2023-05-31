.class public final Lcom/anythink/core/b/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:Lcom/anythink/core/b/a/b;

.field private d:Lcom/anythink/core/b/c/e;

.field private e:I

.field private f:Z

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .prologue
    .line 66
    iput p1, p0, Lcom/anythink/core/b/c/a;->e:I

    .line 68
    if-lez p1, :cond_7

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/b/c/a;->i:I

    .line 71
    :cond_7
    return-void
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/anythink/core/b/c/a;->j:J

    .line 35
    return-void
.end method

.method public final a(Lcom/anythink/core/b/a/b;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/anythink/core/b/c/a;->c:Lcom/anythink/core/b/a/b;

    .line 96
    return-void
.end method

.method public final a(Lcom/anythink/core/b/c/e;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/anythink/core/b/c/a;->d:Lcom/anythink/core/b/c/e;

    .line 104
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/anythink/core/b/c/a;->h:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/anythink/core/b/c/a;->f:Z

    .line 59
    return-void
.end method

.method public final a()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 27
    iget v1, p0, Lcom/anythink/core/b/c/a;->i:I

    if-ne v1, v0, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/b/c/a;->b:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/anythink/core/b/c/a;->j:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_13

    .line 30
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/anythink/core/b/c/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 78
    iput p1, p0, Lcom/anythink/core/b/c/a;->a:I

    .line 79
    return-void
.end method

.method public final b(J)V
    .registers 4

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/anythink/core/b/c/a;->g:J

    .line 51
    return-void
.end method

.method public final c()J
    .registers 3

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/anythink/core/b/c/a;->g:J

    return-wide v0
.end method

.method public final c(J)V
    .registers 4

    .prologue
    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/b/c/a;->i:I

    .line 87
    iput-wide p1, p0, Lcom/anythink/core/b/c/a;->b:J

    .line 88
    return-void
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/anythink/core/b/c/a;->f:Z

    return v0
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/anythink/core/b/c/a;->e:I

    return v0
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/anythink/core/b/c/a;->a:I

    return v0
.end method

.method public final g()J
    .registers 3

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/anythink/core/b/c/a;->b:J

    return-wide v0
.end method

.method public final h()Lcom/anythink/core/b/a/b;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anythink/core/b/c/a;->c:Lcom/anythink/core/b/a/b;

    return-object v0
.end method

.method public final i()Lcom/anythink/core/b/c/e;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anythink/core/b/c/a;->d:Lcom/anythink/core/b/c/e;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/c/a;->c:Lcom/anythink/core/b/a/b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/anythink/core/b/c/a;->d:Lcom/anythink/core/b/c/e;

    if-eqz v0, :cond_a

    .line 109
    const/4 v0, 0x1

    .line 119
    :goto_9
    return v0

    .line 112
    :cond_a
    iget-object v0, p0, Lcom/anythink/core/b/c/a;->c:Lcom/anythink/core/b/a/b;

    if-eqz v0, :cond_16

    .line 113
    iget-object v0, p0, Lcom/anythink/core/b/c/a;->c:Lcom/anythink/core/b/a/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/a/b;->isAdReady()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result v0

    goto :goto_9

    :catch_15
    move-exception v0

    .line 119
    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method
