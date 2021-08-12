.class public Lcom/bytedance/sdk/openadsdk/multipro/d;
.super Ljava/lang/Object;
.source "TTMultiInitHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 17
    if-nez p0, :cond_3

    .line 18
    return-void

    .line 20
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Landroid/content/Context;)V

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_15

    .line 24
    return-void

    .line 27
    :cond_15
    :try_start_15
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 30
    nop

    .line 31
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 32
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_51

    .line 33
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 35
    :cond_51
    goto :goto_3f

    .line 37
    :cond_52
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_55} :catch_56

    .line 44
    goto :goto_63

    .line 38
    :catch_56
    move-exception p0

    .line 40
    :try_start_57
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 42
    goto :goto_5c

    .line 41
    :catch_5b
    move-exception v0

    .line 43
    :goto_5c
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 45
    :goto_63
    return-void
.end method
