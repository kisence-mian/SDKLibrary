.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a;
.super Ljava/lang/Object;
.source "TTDownloadFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .prologue
    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 4

    .prologue
    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    const-string v0, "0.0.0"

    .line 77
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/h;->f()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v0

    .line 81
    :goto_a
    return-object v0

    .line 78
    :catch_b
    move-exception v1

    .line 79
    const-string v2, "TTDownloadFactory"

    const-string v3, "get download sdk version error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_c

    .line 48
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->w()Z

    move-result v1

    .line 51
    :cond_c
    if-nez v1, :cond_f

    .line 65
    :goto_e
    return v0

    .line 56
    :cond_f
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/a;->a()Lcom/ss/android/downloadlib/a/a/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;ZLcom/ss/android/downloadlib/a/a/a$a;)Z

    move-result v0

    goto :goto_e
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
    .registers 4

    .prologue
    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    return-object v0
.end method
