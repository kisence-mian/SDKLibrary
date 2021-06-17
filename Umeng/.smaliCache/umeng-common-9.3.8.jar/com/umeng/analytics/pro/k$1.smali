.class Lcom/umeng/analytics/pro/k$1;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/k;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/k;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 459
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 455
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 419
    const-string v0, "header_first_resume"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 420
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger enabled."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/umeng/analytics/pro/k;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 422
    :try_start_14
    invoke-static {}, Lcom/umeng/analytics/pro/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 423
    monitor-exit v0

    return-void

    .line 425
    :cond_1c
    monitor-exit v0

    goto :goto_28

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw p1

    .line 427
    :cond_21
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger disabled."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_28
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_2f

    .line 430
    return-void

    .line 432
    :cond_2f
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/k;->b(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V

    .line 433
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->i()V

    .line 434
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/umeng/analytics/pro/k;->c:Z

    .line 451
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 383
    const-string v0, "header_first_resume"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 384
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger enabled."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/umeng/analytics/pro/k;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 386
    :try_start_14
    invoke-static {}, Lcom/umeng/analytics/pro/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 387
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Z)Z

    .line 389
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_25

    .line 390
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/k;->a(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V

    goto :goto_34

    .line 389
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1

    .line 392
    :cond_28
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger disabled."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/k;->a(Lcom/umeng/analytics/pro/k;Landroid/app/Activity;)V

    .line 415
    :goto_34
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 377
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 8

    .line 321
    if-eqz p1, :cond_cd

    .line 325
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->c(Lcom/umeng/analytics/pro/k;)I

    move-result v0

    if-gtz v0, :cond_ba

    .line 328
    sget-object v0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 329
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    .line 331
    :cond_18
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 332
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    sput v0, Lcom/umeng/analytics/pro/k;->f:I

    .line 334
    :cond_23
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const-string v1, "activityName"

    const-string v2, "isMainProcess"

    const-string v3, "pid"

    const/4 v4, 0x1

    if-nez v0, :cond_76

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_61

    .line 341
    const-string v2, "$$_onUMengEnterForegroundInitError"

    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 344
    :cond_61
    const/4 p1, -0x2

    sput p1, Lcom/umeng/analytics/pro/k;->f:I

    .line 345
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 346
    const/4 p1, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u5728Application.onCreate\u51fd\u6570\u4e2d\u4f7f\u7528UMConfigure.preInit\u51fd\u6570\u521d\u59cb\u5316\u53cb\u76dfsdk"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_81

    .line 348
    :cond_76
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    if-eq v0, v4, :cond_82

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_81

    goto :goto_82

    :cond_81
    :goto_81
    goto :goto_ba

    .line 349
    :cond_82
    :goto_82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    sget-object v4, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    const-string v5, "pairUUID"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_ba

    .line 356
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    const-string v2, "$$_onUMengEnterForeground"

    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    :cond_ba
    :goto_ba
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->d(Lcom/umeng/analytics/pro/k;)I

    move-result p1

    if-gez p1, :cond_c8

    .line 365
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->e(Lcom/umeng/analytics/pro/k;)I

    goto :goto_cd

    .line 367
    :cond_c8
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->f(Lcom/umeng/analytics/pro/k;)I

    .line 373
    :cond_cd
    :goto_cd
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 256
    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 275
    if-eqz p1, :cond_83

    .line 279
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 280
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Lcom/umeng/analytics/pro/k;)I

    goto :goto_83

    .line 282
    :cond_12
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->b(Lcom/umeng/analytics/pro/k;)I

    .line 284
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$1;->a:Lcom/umeng/analytics/pro/k;

    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->c(Lcom/umeng/analytics/pro/k;)I

    move-result v0

    if-gtz v0, :cond_83

    .line 286
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    if-nez v0, :cond_2a

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_83

    .line 288
    :cond_2a
    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    sget v0, Lcom/umeng/analytics/pro/k;->f:I

    if-nez v0, :cond_83

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 289
    :cond_39
    if-eqz p1, :cond_83

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 291
    sget-object v1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    const-string v2, "pairUUID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "reason"

    const-string v2, "Normal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isMainProcess"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_7c

    .line 299
    const-string v2, "$$_onUMengEnterBackground"

    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 302
    :cond_7c
    sget-object p1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    if-eqz p1, :cond_83

    .line 303
    const/4 p1, 0x0

    sput-object p1, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    .line 315
    :cond_83
    :goto_83
    return-void
.end method
