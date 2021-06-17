.class final Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->initializeIfNotInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 136
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 168
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 142
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 115
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$1;-><init>(Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 165
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 139
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 146
    # getter for: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$300()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.billingclient.api.ProxyBillingActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 148
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$2;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$2;-><init>(Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 162
    :cond_22
    return-void
.end method
