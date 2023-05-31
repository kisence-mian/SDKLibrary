.class public Lcom/qq/gdt/action/h/c;
.super Ljava/lang/Object;


# direct methods
.method private static a(JLandroid/content/Context;)Z
    .registers 13

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/qq/gdt/action/h/u;->a()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {}, Lcom/qq/gdt/action/h/u;->b()J

    move-result-wide v6

    invoke-static {p2}, Lcom/qq/gdt/action/h/q;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p2}, Lcom/qq/gdt/action/h/q;->f(Landroid/content/Context;)J

    move-result-wide v8

    cmp-long v1, v6, v2

    if-lez v1, :cond_34

    cmp-long v1, v4, v2

    if-lez v1, :cond_34

    sub-long v4, v6, v4

    :goto_20
    cmp-long v1, v6, v2

    if-lez v1, :cond_2a

    cmp-long v1, v8, v2

    if-lez v1, :cond_2a

    sub-long v2, v6, v8

    :cond_2a
    cmp-long v1, v4, p0

    if-ltz v1, :cond_9

    cmp-long v1, v2, p0

    if-ltz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_34
    move-wide v4, v2

    goto :goto_20
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/qq/gdt/action/h/q;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/qq/gdt/action/h/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-static {p0}, Lcom/qq/gdt/action/h/q;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/qq/gdt/action/h/c;->b(JLandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v2, v3, p0}, Lcom/qq/gdt/action/h/c;->a(JLandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b(JLandroid/content/Context;)Z
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Lcom/qq/gdt/action/h/q;->b(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {p2}, Lcom/qq/gdt/action/h/q;->e(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v2, v2, p0

    if-ltz v2, :cond_19

    cmp-long v0, v0, p0

    if-ltz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
