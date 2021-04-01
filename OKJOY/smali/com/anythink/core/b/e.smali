.class public abstract Lcom/anythink/core/b/e;
.super Landroid/os/CountDownTimer;


# instance fields
.field protected a:Lcom/anythink/core/c/c$b;

.field protected b:Lcom/anythink/core/b/c/b;

.field protected c:Lcom/anythink/core/c/c;

.field d:Z


# direct methods
.method public constructor <init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 8

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/e;->d:Z

    .line 30
    iput-object p5, p0, Lcom/anythink/core/b/e;->a:Lcom/anythink/core/c/c$b;

    .line 31
    iput-object p6, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    .line 32
    return-void
.end method

.method protected static a(JLcom/anythink/core/b/a/b;)V
    .registers 7

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/b/c/b;->a(J)V

    .line 117
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 82
    iget-object v0, p0, Lcom/anythink/core/b/e;->a:Lcom/anythink/core/c/c$b;

    invoke-static {v0}, Lcom/anythink/core/b/g/h;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/a/b;

    move-result-object v0

    .line 83
    if-nez v0, :cond_b

    .line 112
    :goto_a
    return-void

    .line 87
    :cond_b
    iget-object v1, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    .line 1350
    iput v5, v1, Lcom/anythink/core/b/c/b;->k:I

    .line 88
    iget-object v1, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    .line 1359
    iput v6, v1, Lcom/anythink/core/b/c/b;->l:I

    .line 89
    iget-object v1, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    .line 1368
    iput v6, v1, Lcom/anythink/core/b/c/b;->m:I

    .line 91
    iget-object v1, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/b;->setTrackingInfo(Lcom/anythink/core/b/c/b;)V

    .line 92
    iget-object v1, p0, Lcom/anythink/core/b/e;->a:Lcom/anythink/core/c/c$b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/b;->setmUnitgroupInfo(Lcom/anythink/core/c/c$b;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 97
    invoke-static {p1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    iget-object v4, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v1, v5, v4}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 99
    const-string v1, "CacheCountdown"

    const-string v4, "start to refresh reward ad---"

    invoke-static {v1, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/anythink/core/b/a/d$e;->a:Ljava/lang/String;

    sget-object v4, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    iget-object v4, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v4}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/b/a;->b(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/b/e;->c:Lcom/anythink/core/c/c;

    .line 107
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    iget-object v4, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v4}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v5}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/anythink/core/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean v6, p0, Lcom/anythink/core/b/e;->d:Z

    .line 111
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/anythink/core/b/e;->a(Landroid/content/Context;JLcom/anythink/core/b/a/b;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/anythink/core/b/e;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/anythink/core/b/e;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V
    .registers 10

    .prologue
    .line 154
    invoke-virtual {p3}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 156
    iget-boolean v1, p0, Lcom/anythink/core/b/e;->d:Z

    if-nez v1, :cond_1f

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/core/b/e;->d:Z

    .line 159
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v0, v1, p4, v2, v3}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ILcom/anythink/core/api/AdError;J)V

    .line 161
    sget-object v0, Lcom/anythink/core/b/a/d$e;->b:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1f
    return-void
.end method

.method protected abstract a(Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
.end method

.method protected final a(Landroid/content/Context;JLcom/anythink/core/b/a/b;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/anythink/core/b/a/b;",
            "Ljava/util/List",
            "<+",
            "Lcom/anythink/core/b/c/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p4}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 130
    iget-boolean v1, p0, Lcom/anythink/core/b/e;->d:Z

    if-nez v1, :cond_24

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/core/b/e;->d:Z

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/b/c/b;->b(J)V

    .line 134
    invoke-static {p1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 136
    sget-object v1, Lcom/anythink/core/b/a/d$e;->b:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p4, v1, v2, v3}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_24
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->q()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/core/b/e;->a:Lcom/anythink/core/c/c$b;

    invoke-virtual {v4}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v6

    iget-object v8, p0, Lcom/anythink/core/b/e;->c:Lcom/anythink/core/c/c;

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v8}, Lcom/anythink/core/b/a;->a(Ljava/lang/String;ILcom/anythink/core/b/a/b;Ljava/util/List;JLcom/anythink/core/c/c;)Lcom/anythink/core/b/c/o;

    .line 142
    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_55

    .line 146
    invoke-virtual {v1}, Lcom/anythink/core/b/d;->b()V

    .line 147
    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->q()I

    move-result v0

    invoke-virtual {v1, p4, v2, v0}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/a/b;Ljava/lang/String;I)V

    .line 150
    :cond_55
    return-void
.end method

.method public onFinish()V
    .registers 8

    .prologue
    .line 40
    iget-object v0, p0, Lcom/anythink/core/b/e;->a:Lcom/anythink/core/c/c$b;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    if-nez v0, :cond_9

    .line 79
    :cond_8
    :goto_8
    return-void

    .line 45
    :cond_9
    iget-object v0, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/anythink/core/b/d;->c()Landroid/content/Context;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_8

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/anythink/core/b/e;->a:Lcom/anythink/core/c/c$b;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/anythink/core/b/e;->a:Lcom/anythink/core/c/c$b;

    iget v0, v0, Lcom/anythink/core/c/c$b;->m:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_56

    .line 60
    :try_start_2a
    invoke-static {}, Lcom/anythink/core/b/g;->a()Lcom/anythink/core/b/g$b;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v4}, Lcom/anythink/core/b/c/b;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/anythink/core/b/g$b;->initHbInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 62
    new-instance v2, Lcom/anythink/core/b/e$1;

    invoke-direct {v2, p0, v1}, Lcom/anythink/core/b/e$1;-><init>(Lcom/anythink/core/b/e;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Lcom/anythink/core/b/g$b;->startHeadBiddingRequest(Lcom/anythink/core/b/g$a;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_50} :catch_51

    goto :goto_8

    .line 72
    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 76
    :cond_56
    invoke-direct {p0, v1}, Lcom/anythink/core/b/e;->a(Landroid/content/Context;)V

    goto :goto_8
.end method
