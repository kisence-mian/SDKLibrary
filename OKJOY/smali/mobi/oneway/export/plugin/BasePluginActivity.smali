.class public Lmobi/oneway/export/plugin/BasePluginActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lmobi/oneway/export/plugin/IActivityInterface;


# instance fields
.field protected hostActivity:Landroid/app/Activity;

.field isPluginMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    iput-object p1, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Landroid/app/Activity;

    :cond_6
    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lmobi/oneway/export/plugin/BasePluginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a
.end method

.method public getHostActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_a
.end method

.method public getMainLooper()Landroid/os/Looper;
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_a
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :cond_7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :cond_7
    return-void
.end method

.method public onRestart()V
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :cond_7
    return-void
.end method

.method public onStop()V
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :cond_7
    return-void
.end method
