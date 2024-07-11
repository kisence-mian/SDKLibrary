.class abstract Lcom/bytedance/embedapplog/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/embedapplog/i;->b:I

    .line 26
    iput-object p1, p0, Lcom/bytedance/embedapplog/i;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method abstract b()J
.end method

.method abstract c()[J
.end method

.method abstract d()Z
.end method

.method abstract e()Ljava/lang/String;
.end method

.method f()V
    .registers 2

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/i;->c:Z

    .line 31
    return-void
.end method

.method g()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/i;->c:Z

    return v0
.end method

.method final h()J
    .registers 9

    .line 43
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/i;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/embedapplog/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/embedapplog/bl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 46
    :goto_13
    if-nez v0, :cond_19

    .line 47
    const-wide/32 v0, 0xea60

    goto :goto_7d

    .line 49
    :cond_19
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/i;->b()J

    move-result-wide v2

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 52
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_7b

    .line 53
    nop

    .line 55
    :try_start_29
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/i;->d()Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_2e

    .line 58
    goto :goto_33

    .line 56
    :catch_2e
    move-exception v0

    .line 57
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 60
    :goto_33
    if-eqz v0, :cond_41

    .line 61
    iput v1, p0, Lcom/bytedance/embedapplog/i;->b:I

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/i;->b()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_50

    .line 65
    :cond_41
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/i;->c()[J

    move-result-object v1

    .line 66
    iget v2, p0, Lcom/bytedance/embedapplog/i;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bytedance/embedapplog/i;->b:I

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-wide v2, v1, v2

    move-wide v1, v2

    .line 68
    :goto_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " worked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/bo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    move-wide v0, v1

    goto :goto_7d

    .line 70
    :cond_7b
    sub-long v0, v2, v4

    .line 73
    :goto_7d
    return-wide v0
.end method
