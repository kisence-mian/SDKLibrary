.class Landroidx/test/core/app/InstrumentationActivityInvoker;
.super Ljava/lang/Object;
.source "InstrumentationActivityInvoker.java"

# interfaces
.implements Landroidx/test/internal/platform/app/ActivityInvoker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;,
        Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;,
        Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;,
        Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;
    }
.end annotation


# static fields
.field private static final BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY"

.field private static final BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY"

.field private static final BOOTSTRAP_ACTIVITY_RESULT_RECEIVED:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_RECEIVED"

.field private static final EMPTY_ACTIVITY_RESUMED:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_ACTIVITY_RESUMED"

.field private static final EMPTY_FLOATING_ACTIVITY_RESUMED:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_FLOATING_ACTIVITY_RESUMED"

.field private static final FINISH_BOOTSTRAP_ACTIVITY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

.field private static final FINISH_EMPTY_ACTIVITIES:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

.field private static final TARGET_ACTIVITY_INTENT_KEY:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker.START_TARGET_ACTIVITY_INTENT_KEY"

.field private static final TIMEOUT_SECONDS:J = 0x2dL


# instance fields
.field private activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkActivityStageIsIn(Landroid/app/Activity;Ljava/util/Set;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "expected"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "Landroidx/test/runner/lifecycle/Stage;",
            ">;)V"
        }
    .end annotation

    .line 493
    .local p1, "expected":Ljava/util/Set;, "Ljava/util/Set<Landroidx/test/runner/lifecycle/Stage;>;"
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$3;

    invoke-direct {v1, p0, p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$3;-><init>(Landroid/app/Activity;Ljava/util/Set;)V

    .line 494
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method private static varargs checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "expected"    # [Landroidx/test/runner/lifecycle/Stage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "expected"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;Ljava/util/Set;)V

    .line 490
    return-void
.end method

.method static final synthetic lambda$checkActivityStageIsIn$3$InstrumentationActivityInvoker(Landroid/app/Activity;Ljava/util/Set;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "expected"    # Ljava/util/Set;

    .line 497
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getLifecycleStageOf(Landroid/app/Activity;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v0

    .line 498
    .local v0, "stage":Landroidx/test/runner/lifecycle/Stage;
    nop

    .line 499
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 498
    const-string v3, "Activity\'s stage must be %s but was %s"

    invoke-static {v1, v3, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 503
    return-void
.end method

.method static final synthetic lambda$finishActivity$1$InstrumentationActivityInvoker(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 481
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static final synthetic lambda$finishActivity$2$InstrumentationActivityInvoker(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 484
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static final synthetic lambda$recreateActivity$0$InstrumentationActivityInvoker(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 469
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method private startEmptyActivitySync()V
    .registers 6

    .line 428
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 429
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$2;

    invoke-direct {v1, p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$2;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker;Ljava/util/concurrent/CountDownLatch;)V

    .line 436
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_ACTIVITY_RESUMED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;

    .line 442
    invoke-virtual {p0, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 441
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 445
    const-wide/16 v2, 0x2d

    :try_start_2e
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_3e
    .catchall {:try_start_2e .. :try_end_33} :catchall_3c

    .line 449
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    nop

    .line 451
    return-void

    .line 449
    :catchall_3c
    move-exception v2

    goto :goto_47

    .line 446
    :catch_3e
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3f
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Failed to stop activity"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    throw v3
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_3c

    .line 449
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    :goto_47
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v2
.end method

.method private startFloatingEmptyActivitySync()V
    .registers 6

    .line 393
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 394
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$1;

    invoke-direct {v1, p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$1;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker;Ljava/util/concurrent/CountDownLatch;)V

    .line 401
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_FLOATING_ACTIVITY_RESUMED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;

    .line 408
    invoke-virtual {p0, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 409
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 407
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 412
    const-wide/16 v2, 0x2d

    :try_start_2e
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_3e
    .catchall {:try_start_2e .. :try_end_33} :catchall_3c

    .line 416
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 417
    nop

    .line 418
    return-void

    .line 416
    :catchall_3c
    move-exception v2

    goto :goto_47

    .line 413
    :catch_3e
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3f
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Failed to pause activity"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    throw v3
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_3c

    .line 416
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    :goto_47
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v2
.end method


# virtual methods
.method public finishActivity(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 480
    invoke-direct {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startEmptyActivitySync()V

    .line 481
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$1;

    invoke-direct {v1, p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 482
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    invoke-direct {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startEmptyActivitySync()V

    .line 484
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$2;

    invoke-direct {v1, p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 485
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    return-void
.end method

.method public getActivityResult()Landroid/app/Instrumentation$ActivityResult;
    .registers 3

    .line 372
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker;->activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    const-string v1, "You must start Activity first"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    invoke-virtual {v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->getActivityResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;
    .registers 2

    invoke-static {p0, p1}, Landroidx/test/internal/platform/app/ActivityInvoker$$CC;->getIntentForActivity$$dflt$$(Landroidx/test/internal/platform/app/ActivityInvoker;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public pauseActivity(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 388
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/test/runner/lifecycle/Stage;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V

    .line 389
    invoke-direct {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startFloatingEmptyActivitySync()V

    .line 390
    return-void
.end method

.method public recreateActivity(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 468
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/runner/lifecycle/Stage;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V

    .line 469
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    new-instance v1, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$0;

    invoke-direct {v1, p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public resumeActivity(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 378
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/runner/lifecycle/Stage;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V

    .line 379
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 342
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 343
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_5b

    .line 348
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    new-instance v2, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/test/core/app/InstrumentationActivityInvoker;->activityResultWaiter:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    .line 357
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;

    .line 359
    invoke-virtual {p0, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const v4, 0x10008000

    .line 360
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 364
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x8000000

    .line 363
    invoke-static {v4, v1, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 361
    const-string v4, "androidx.test.core.app.InstrumentationActivityInvoker.START_TARGET_ACTIVITY_INTENT_KEY"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 358
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 368
    return-void

    .line 344
    :cond_5b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to resolve activity for: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopActivity(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 423
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/test/runner/lifecycle/Stage;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->checkActivityStageIsIn(Landroid/app/Activity;[Landroidx/test/runner/lifecycle/Stage;)V

    .line 424
    invoke-direct {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker;->startEmptyActivitySync()V

    .line 425
    return-void
.end method
