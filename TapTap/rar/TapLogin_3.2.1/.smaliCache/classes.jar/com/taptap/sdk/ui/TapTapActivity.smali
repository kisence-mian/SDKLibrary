.class public Lcom/taptap/sdk/ui/TapTapActivity;
.super Lcom/taptap/sdk/ui/e;
.source "TapTapActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/taptap/sdk/ui/f;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/taptap/sdk/ui/e;->a()Lcom/taptap/sdk/ui/f;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/TapTapActivity;->a()Lcom/taptap/sdk/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/f;->b()Lcom/taptap/sdk/ui/d;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    instance-of v0, v0, Lcom/taptap/sdk/ui/l;

    if-eqz v0, :cond_12

    .line 4
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/TapTapActivity;->finish()V

    return-void

    .line 8
    :cond_12
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/taptap/sdk/ui/e;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/taptap/sdk/ui/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const-string p1, "sdk_activity_container"

    invoke-static {p0, p1}, Lcom/taptap/sdk/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/LoginRequest;

    if-eqz p1, :cond_3d

    .line 7
    new-instance v1, Lcom/taptap/sdk/ui/j;

    invoke-direct {v1}, Lcom/taptap/sdk/ui/j;-><init>()V

    .line 8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/taptap/sdk/ui/d;->a(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/TapTapActivity;->a()Lcom/taptap/sdk/ui/f;

    move-result-object p1

    const-string v0, "taptap_sdk_container"

    invoke-static {p0, v0}, Lcom/taptap/sdk/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/ui/f;->a(ILcom/taptap/sdk/ui/d;)Lcom/taptap/sdk/ui/f;

    :cond_3d
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
