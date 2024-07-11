.class public Lcom/kwad/sdk/core/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/a/a$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2e

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_18

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    .registers 5

    :try_start_0
    const-string v0, "KsAdExceptionCollectorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5d29\u6e83\u6536\u96c6\u662f\u5426\u6253\u5f00\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->k()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->k()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/a/a;->b(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Lcom/kwad/sdk/crash/b;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/crash/a;->a(Lcom/kwad/sdk/crash/b;)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/kwad/sdk/crash/a;->a(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method private static a()[Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-class v1, Lcom/kwad/sdk/KsAdSDKImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/ksad/download/DownloadTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    goto :goto_21

    :catchall_20
    move-exception v1

    :goto_21
    :try_start_21
    const-class v1, Lcom/kwai/CpuMemoryProfiler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/kuaishou/aegon/Aegon;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_3c

    goto :goto_3d

    :catchall_3c
    move-exception v1

    :goto_3d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Lcom/kwad/sdk/crash/b;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/core/a/a$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/crash/b$a;

    invoke-direct {v1}, Lcom/kwad/sdk/crash/b$a;-><init>()V

    invoke-virtual {v1, p0}, Lcom/kwad/sdk/crash/b$a;->a(Landroid/content/Context;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    const-string v2, "3.3.6"

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->f(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    const v2, 0x2e3e48

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->a(I)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/KsAdSDKImpl;->getApiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->g(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/KsAdSDKImpl;->getApiVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->b(I)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    sget v2, Lcom/kwad/sdk/d;->a:I

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->c(I)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    const-string v2, "com.kwad.sdk"

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->e(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    iget-object v2, p1, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->h(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    iget-object v2, p1, Lcom/kwad/sdk/api/SdkConfig;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->i(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->j(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    invoke-static {p0}, Lcom/kwad/sdk/utils/ac;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->k(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/utils/ac;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->b(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->a(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    iget-object v2, p1, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/crash/b$a;->c(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/crash/b$a;->d(Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/a/a$2;

    invoke-direct {v1, p1, p0}, Lcom/kwad/sdk/core/a/a$2;-><init>(Lcom/kwad/sdk/api/SdkConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/crash/b$a;->a(Lcom/kwad/sdk/crash/f;)Lcom/kwad/sdk/crash/b$a;

    move-result-object p0

    new-instance p1, Lcom/kwad/sdk/core/a/a$1;

    invoke-direct {p1}, Lcom/kwad/sdk/core/a/a$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/crash/b$a;->a(Lcom/kwad/sdk/crash/e;)Lcom/kwad/sdk/crash/b$a;

    move-result-object p0

    invoke-static {}, Lcom/kwad/sdk/core/a/a;->a()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/crash/b$a;->a([Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object p0

    invoke-static {}, Lcom/kwad/sdk/core/a/a;->b()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/crash/b$a;->b([Ljava/lang/String;)Lcom/kwad/sdk/crash/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kwad/sdk/crash/b$a;->a()Lcom/kwad/sdk/crash/b;

    move-result-object p0

    return-object p0
.end method

.method private static b()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    :try_start_3
    const-class v1, Lcom/kwad/sdk/crash/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_1b
    return-object v0
.end method
