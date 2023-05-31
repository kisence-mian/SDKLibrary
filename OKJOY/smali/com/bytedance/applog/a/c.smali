.class abstract Lcom/bytedance/applog/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/applog/a/c;->b:I

    .line 25
    iput-object p1, p0, Lcom/bytedance/applog/a/c;->a:Landroid/content/Context;

    .line 26
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

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/applog/a/c;->c:Z

    .line 30
    return-void
.end method

.method g()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/bytedance/applog/a/c;->c:Z

    return v0
.end method

.method final h()J
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/applog/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bytedance/applog/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_f
    const/4 v0, 0x1

    .line 45
    :goto_10
    if-nez v0, :cond_18

    .line 46
    const-wide/32 v0, 0xea60

    .line 72
    :goto_15
    return-wide v0

    :cond_16
    move v0, v1

    .line 42
    goto :goto_10

    .line 48
    :cond_18
    invoke-virtual {p0}, Lcom/bytedance/applog/a/c;->b()J

    move-result-wide v2

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 51
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_78

    .line 54
    :try_start_27
    invoke-virtual {p0}, Lcom/bytedance/applog/a/c;->d()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_63

    move-result v0

    move v2, v0

    .line 59
    :goto_2c
    if-eqz v2, :cond_69

    .line 60
    iput v1, p0, Lcom/bytedance/applog/a/c;->b:I

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/applog/a/c;->b()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 67
    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/applog/a/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " worked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/applog/util/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 55
    :catch_63
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    move v2, v1

    goto :goto_2c

    .line 64
    :cond_69
    invoke-virtual {p0}, Lcom/bytedance/applog/a/c;->c()[J

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/bytedance/applog/a/c;->b:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bytedance/applog/a/c;->b:I

    array-length v3, v0

    rem-int/2addr v1, v3

    aget-wide v0, v0, v1

    goto :goto_39

    .line 69
    :cond_78
    sub-long v0, v2, v4

    goto :goto_15
.end method
