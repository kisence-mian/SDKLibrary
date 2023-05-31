.class public final Lcom/anythink/core/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/core/a/b;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "pacing_"

    iput-object v0, p0, Lcom/anythink/core/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/anythink/core/a/b;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/anythink/core/a/b;->a:Lcom/anythink/core/a/b;

    if-nez v0, :cond_b

    .line 18
    new-instance v0, Lcom/anythink/core/a/b;

    invoke-direct {v0}, Lcom/anythink/core/a/b;-><init>()V

    sput-object v0, Lcom/anythink/core/a/b;->a:Lcom/anythink/core/a/b;

    .line 20
    :cond_b
    sget-object v0, Lcom/anythink/core/a/b;->a:Lcom/anythink/core/a/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "pacing_"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 31
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    if-nez p1, :cond_7

    .line 51
    :cond_6
    :goto_6
    return v0

    .line 38
    :cond_7
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->y()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    move v0, v1

    .line 39
    goto :goto_6

    .line 41
    :cond_13
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v4, "pacing_"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_41

    .line 43
    invoke-static {p0}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;)V

    move v0, v1

    .line 45
    goto :goto_6

    .line 46
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->y()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    move v0, v1

    .line 51
    goto :goto_6
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 56
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/a/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/a/b$1;-><init>(Lcom/anythink/core/a/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-nez p2, :cond_7

    .line 89
    :cond_6
    :goto_6
    return v0

    .line 1678
    :cond_7
    iget-wide v2, p2, Lcom/anythink/core/c/c$b;->h:J

    .line 75
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    move v0, v1

    .line 76
    goto :goto_6

    .line 78
    :cond_11
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pacing_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 78
    invoke-static {v2, v3, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_52

    .line 81
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 83
    goto :goto_6

    .line 84
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 2678
    iget-wide v4, p2, Lcom/anythink/core/c/c$b;->h:J

    .line 84
    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    move v0, v1

    .line 89
    goto :goto_6
.end method
