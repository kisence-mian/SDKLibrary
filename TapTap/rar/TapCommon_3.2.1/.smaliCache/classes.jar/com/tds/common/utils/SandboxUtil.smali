.class public final Lcom/tds/common/utils/SandboxUtil;
.super Ljava/lang/Object;
.source "SandboxUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInSandbox(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, "hostPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".virtual.service.BinderProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 11
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-eqz v1, :cond_26

    .line 12
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_27

    .line 13
    const/4 v2, 0x1

    return v2

    .line 17
    .end local v0    # "hostPackageName":Ljava/lang/String;
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_26
    goto :goto_2b

    .line 15
    :catchall_27
    move-exception v0

    .line 16
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2b
    const/4 v0, 0x0

    return v0
.end method
