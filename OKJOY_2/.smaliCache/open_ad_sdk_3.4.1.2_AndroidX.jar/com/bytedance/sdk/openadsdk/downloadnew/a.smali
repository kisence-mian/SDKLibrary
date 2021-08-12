.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a;
.super Ljava/lang/Object;
.source "TTDownloadFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .line 28
    nop

    .line 29
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    goto :goto_12

    .line 32
    :cond_d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 34
    :goto_12
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 5

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    .line 76
    nop

    .line 78
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    .line 81
    goto :goto_14

    .line 79
    :catch_a
    move-exception v0

    .line 80
    const-string v1, "TTDownloadFactory"

    const-string v2, "get download sdk version error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "0.0.0"

    .line 82
    :goto_14
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z
    .registers 4

    .line 59
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a/a;->a()Lcom/ss/android/downloadlib/addownload/a/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/app/Activity;ZLcom/ss/android/downloadlib/addownload/a/a$a;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
    .registers 4

    .line 38
    nop

    .line 39
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    goto :goto_12

    .line 42
    :cond_d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 44
    :goto_12
    return-object v0
.end method
