.class public final Lcom/anythink/core/common/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:Lcom/anythink/core/api/ATBaseAdAdapter;

.field private d:Lcom/anythink/core/api/BaseAd;

.field private e:I

.field private f:Z

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/anythink/core/common/d/b;->a:I

    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/anythink/core/common/d/b;->e:I

    .line 76
    if-lez p1, :cond_7

    .line 77
    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/core/common/d/b;->i:I

    .line 79
    :cond_7
    return-void
.end method

.method public final a(J)V
    .registers 3

    .line 42
    iput-wide p1, p0, Lcom/anythink/core/common/d/b;->j:J

    .line 43
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/anythink/core/common/d/b;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 104
    return-void
.end method

.method public final a(Lcom/anythink/core/api/BaseAd;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/anythink/core/common/d/b;->d:Lcom/anythink/core/api/BaseAd;

    .line 112
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/anythink/core/common/d/b;->h:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/anythink/core/common/d/b;->f:Z

    .line 67
    return-void
.end method

.method public final a()Z
    .registers 7

    .line 35
    iget v0, p0, Lcom/anythink/core/common/d/b;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/common/d/b;->b:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/anythink/core/common/d/b;->j:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_13

    .line 36
    return v1

    .line 38
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/anythink/core/common/d/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/anythink/core/common/d/b;->a:I

    .line 87
    return-void
.end method

.method public final b(J)V
    .registers 3

    .line 58
    iput-wide p1, p0, Lcom/anythink/core/common/d/b;->g:J

    .line 59
    return-void
.end method

.method public final c()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/anythink/core/common/d/b;->g:J

    return-wide v0
.end method

.method public final c(J)V
    .registers 4

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/d/b;->i:I

    .line 95
    iput-wide p1, p0, Lcom/anythink/core/common/d/b;->b:J

    .line 96
    return-void
.end method

.method public final d()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/anythink/core/common/d/b;->f:Z

    return v0
.end method

.method public final e()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/anythink/core/common/d/b;->e:I

    return v0
.end method

.method public final f()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/anythink/core/common/d/b;->b:J

    return-wide v0
.end method

.method public final g()Lcom/anythink/core/api/ATBaseAdAdapter;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/anythink/core/common/d/b;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object v0
.end method

.method public final h()Lcom/anythink/core/api/BaseAd;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/anythink/core/common/d/b;->d:Lcom/anythink/core/api/BaseAd;

    return-object v0
.end method

.method public final i()Z
    .registers 3

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/d/b;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/anythink/core/common/d/b;->d:Lcom/anythink/core/api/BaseAd;

    if-eqz v1, :cond_a

    .line 117
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_a
    if-eqz v0, :cond_11

    .line 121
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->isAdReady()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    return v0

    .line 126
    :cond_11
    goto :goto_13

    .line 124
    :catch_12
    move-exception v0

    .line 127
    :goto_13
    const/4 v0, 0x0

    return v0
.end method
