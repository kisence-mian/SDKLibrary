.class public Lcom/qq/e/ads/ADActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/qq/e/comm/pi/ACTD;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/ACTD;->onActivityResult(IILandroid/content/Intent;)V

    :cond_c
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onBackPressed()V

    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/ACTD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0}, Lcom/qq/e/ads/ADActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "gdt_activity_delegate_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/ACTD;->onBeforeCreate(Landroid/os/Bundle;)V

    :goto_2b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/ACTD;->onAfterCreate(Landroid/os/Bundle;)V

    :cond_37
    return-void

    :cond_38
    :try_start_38
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qq/e/ads/ADActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lcom/qq/e/comm/pi/POFactory;->getActivityDelegate(Ljava/lang/String;Landroid/app/Activity;)Lcom/qq/e/comm/pi/ACTD;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Init ADActivity Delegate return null,delegateName"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_6e} :catch_6f

    goto :goto_22

    :catch_6f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init ADActivity Delegate Faile,DelegateName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V

    goto :goto_22

    :cond_92
    :try_start_92
    const-string v0, "Init GDTADManager fail in AdActivity"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_97} :catch_6f

    goto :goto_22

    :cond_98
    invoke-virtual {p0}, Lcom/qq/e/ads/ADActivity;->finish()V

    goto :goto_2b
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onDestroy()V

    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onPause()V

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onResume()V

    :cond_c
    return-void
.end method

.method protected onStop()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onStop()V

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
