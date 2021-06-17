.class Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;

    .line 288
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 291
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_20

    .line 292
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;

    iget-object v0, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$activityName:Ljava/lang/String;

    .line 294
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    .line 295
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->clearSavedSessionFromDisk()V

    .line 297
    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$302(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 300
    :cond_20
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFutureLock:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 301
    :try_start_25
    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$802(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw v1
.end method
