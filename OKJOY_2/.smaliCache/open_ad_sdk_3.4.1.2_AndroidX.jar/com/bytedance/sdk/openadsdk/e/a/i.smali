.class Lcom/bytedance/sdk/openadsdk/e/a/i;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static a:Z


# direct methods
.method static a(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 58
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/e/a/i;->a:Z

    if-nez v0, :cond_5

    .line 61
    return-void

    .line 59
    :cond_5
    throw p0
.end method

.method static a(Ljava/lang/String;)V
    .registers 2

    .line 26
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/e/a/i;->a:Z

    if-eqz v0, :cond_9

    .line 27
    const-string v0, "JsBridge2"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_9
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 38
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/e/a/i;->a:Z

    if-eqz v0, :cond_23

    .line 39
    const-string v0, "JsBridge2"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stacktrace: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_23
    return-void
.end method

.method static a(Z)V
    .registers 1

    .line 18
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/e/a/i;->a:Z

    .line 19
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .registers 2

    .line 32
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/e/a/i;->a:Z

    if-eqz v0, :cond_9

    .line 33
    const-string v0, "JsBridge2"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_9
    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 51
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/e/a/i;->a:Z

    if-eqz v0, :cond_23

    .line 52
    const-string v0, "JsBridge2"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stacktrace: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_23
    return-void
.end method
