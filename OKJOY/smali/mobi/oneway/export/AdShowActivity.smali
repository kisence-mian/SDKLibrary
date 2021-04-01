.class public Lmobi/oneway/export/AdShowActivity;
.super Landroid/app/Activity;


# instance fields
.field iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

.field pluginActivityClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/AdShowActivity;->pluginActivityClass:Ljava/lang/Class;

    iput-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    :try_start_8
    const-string v0, "mobi.oneway.sdk.AdShowActivity"

    invoke-static {v0}, Lmobi/oneway/export/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/AdShowActivity;->pluginActivityClass:Ljava/lang/Class;

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->pluginActivityClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/plugin/IActivityInterface;

    iput-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0, p0}, Lmobi/oneway/export/plugin/IActivityInterface;->attach(Landroid/app/Activity;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v0}, Lmobi/oneway/export/h/g;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    goto :goto_1f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0, p1}, Lmobi/oneway/export/plugin/IActivityInterface;->onCreate(Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onDestroy()V

    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/plugin/IActivityInterface;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onPause()V

    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onResume()V

    :cond_c
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0, p1}, Lmobi/oneway/export/plugin/IActivityInterface;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onStart()V

    :cond_c
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onStop()V

    :cond_c
    return-void
.end method
