.class public abstract Lcom/okjoy/okjoysdk/base/OkJoyBaseActivity;
.super Landroid/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1
    const-string p1, "joy_activity_common_layout"

    invoke-static {p0, p1}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, Lokjoy/c/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
