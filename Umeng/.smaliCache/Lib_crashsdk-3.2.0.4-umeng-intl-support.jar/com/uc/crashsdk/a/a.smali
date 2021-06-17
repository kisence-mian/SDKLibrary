.class public final Lcom/uc/crashsdk/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 70
    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 71
    if-nez p2, :cond_c

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_c
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_f
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .line 14
    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 96
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_9

    .line 97
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLog(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 104
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_9

    .line 105
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLog(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 112
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_9

    .line 113
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLog(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
