.class final Lcom/umeng/umcrash/UMCrash$1;
.super Ljava/lang/Object;
.source "UMCrash.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/umcrash/UMCrash;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 286
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 317
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 308
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 295
    # getter for: Lcom/umeng/umcrash/UMCrash;->pageArrayLock:Ljava/lang/Object;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 296
    :try_start_5
    # getter for: Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 297
    # getter for: Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1f

    .line 298
    # getter for: Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 300
    :cond_1f
    # getter for: Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_45
    monitor-exit v0

    .line 305
    return-void

    .line 302
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 314
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 289
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 311
    return-void
.end method
