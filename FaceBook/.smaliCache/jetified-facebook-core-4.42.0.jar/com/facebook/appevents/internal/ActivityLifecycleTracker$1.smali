.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 101
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityCreated"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 103
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V

    .line 104
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 140
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityDestroyed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 121
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityPaused"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 123
    # invokes: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 114
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResumed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    .line 116
    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 135
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivitySaveInstanceState"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 108
    # operator++ for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->activityReferences:I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$108()I

    .line 109
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityStarted"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 128
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityStopped"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->onContextStop()V

    .line 130
    # operator-- for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->activityReferences:I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$110()I

    .line 131
    return-void
.end method
