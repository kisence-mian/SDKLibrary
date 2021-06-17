.class public final Lcom/efs/sdk/base/a/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 1208
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->f:Z

    .line 55
    if-eqz v0, :cond_b

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_b
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 65
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 2208
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->f:Z

    .line 65
    if-eqz v0, :cond_11

    .line 66
    if-nez p2, :cond_e

    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_e
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_11
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 75
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 3208
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->f:Z

    .line 75
    if-eqz v0, :cond_11

    .line 76
    if-nez p2, :cond_e

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_e
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_11
    return-void
.end method
