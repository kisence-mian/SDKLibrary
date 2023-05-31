.class Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;
.super Ljava/lang/Object;
.source "CheckLicenseManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/pay/sdk/library/CheckLicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 207
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 211
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 264
    const-string v0, "CheckLicenseManager"

    const-string v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->successLicensed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$200(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 266
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # invokes: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->finishService(Landroid/app/Activity;)V
    invoke-static {v0, p1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$800(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Landroid/app/Activity;)V

    .line 268
    :cond_18
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 250
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 220
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_3a

    .line 222
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$700(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 223
    return-void

    .line 225
    :cond_14
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$700(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_24

    .line 226
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    const/4 v1, 0x0

    # setter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->activityResultStatus:I
    invoke-static {v0, v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$702(Lcom/taptap/pay/sdk/library/CheckLicenseManager;I)I

    .line 227
    return-void

    .line 230
    :cond_24
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # getter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLock:Z
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$000(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 231
    return-void

    .line 233
    :cond_2d
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # setter for: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->checkLock:Z
    invoke-static {v0, v1}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$002(Lcom/taptap/pay/sdk/library/CheckLicenseManager;Z)Z

    .line 234
    new-instance v0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5$1;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager$5$1;-><init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager$5;)V

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/UIHelper;->runAsyncThread(Ljava/lang/Runnable;)V

    .line 245
    :cond_3a
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 260
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 216
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 255
    return-void
.end method
