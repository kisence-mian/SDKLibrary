.class public final Lcom/anythink/core/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/core/a/c;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "pacing_"

    iput-object v0, p0, Lcom/anythink/core/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/anythink/core/a/c;
    .registers 1

    .line 24
    sget-object v0, Lcom/anythink/core/a/c;->a:Lcom/anythink/core/a/c;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/anythink/core/a/c;

    invoke-direct {v0}, Lcom/anythink/core/a/c;-><init>()V

    sput-object v0, Lcom/anythink/core/a/c;->a:Lcom/anythink/core/a/c;

    .line 27
    :cond_b
    sget-object v0, Lcom/anythink/core/a/c;->a:Lcom/anythink/core/a/c;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    .line 32
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "pacing_"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 37
    return-void

    .line 33
    :catch_1c
    move-exception p0

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z
    .registers 11

    .line 42
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 43
    return v0

    .line 45
    :cond_4
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->E()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 46
    return v2

    .line 48
    :cond_10
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pacing_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v1, v3, v4, v7}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long v1, v7, v5

    if-gez v1, :cond_3f

    .line 50
    invoke-static {p0}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;)V

    .line 52
    return v2

    .line 53
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->E()J

    move-result-wide p0

    cmp-long p0, v5, p0

    if-gez p0, :cond_4d

    .line 55
    return v0

    .line 58
    :cond_4d
    return v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 63
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/a/c$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/a/c$1;-><init>(Lcom/anythink/core/a/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z
    .registers 12

    .line 79
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 80
    return v0

    .line 82
    :cond_4
    nop

    .line 1948
    iget-wide v1, p2, Lcom/anythink/core/c/c$b;->i:J

    .line 82
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 83
    return v2

    .line 85
    :cond_f
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pacing_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 85
    invoke-static {v1, v3, v4, v7}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long v1, v7, v5

    if-gez v1, :cond_51

    .line 88
    iget-object p2, p2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v2

    .line 91
    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 2948
    iget-wide p1, p2, Lcom/anythink/core/c/c$b;->i:J

    .line 91
    cmp-long p1, v5, p1

    if-gez p1, :cond_5d

    .line 93
    return v0

    .line 96
    :cond_5d
    return v2
.end method
