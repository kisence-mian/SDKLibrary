.class public final Lcom/bytedance/tea/crash/g/j;
.super Ljava/lang/Object;
.source "NpthLog.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 16
    invoke-static {}, Lcom/bytedance/tea/crash/h;->e()Lcom/bytedance/tea/crash/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/b;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 17
    const-string v0, "npth"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_f
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 3

    .line 40
    invoke-static {}, Lcom/bytedance/tea/crash/h;->e()Lcom/bytedance/tea/crash/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/b;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    const-string v0, "npth"

    const-string v1, "NPTH Catch Error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_11
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 3

    .line 58
    invoke-static {}, Lcom/bytedance/tea/crash/h;->e()Lcom/bytedance/tea/crash/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/b;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    const-string v0, "npth"

    const-string v1, "NPTH Catch Error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_11
    return-void
.end method
