.class final Lcom/tapsdk/moment/TapMoment$1;
.super Ljava/lang/Object;
.source "TapMoment.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/TapMoment;->initSdk(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 236
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 270
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 252
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_17

    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 253
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v1, 0x1f4

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 255
    :cond_17
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 245
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_17

    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 246
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v1, 0x258

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 248
    :cond_17
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 265
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 241
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 260
    return-void
.end method
