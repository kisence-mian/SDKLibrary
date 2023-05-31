.class Lcom/taptap/sdk/ui/j;
.super Lcom/taptap/sdk/ui/d;
.source "LoginBlock.java"


# instance fields
.field private e:Lcom/taptap/sdk/ui/k;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/d;-><init>()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/sdk/ui/j;->e:Lcom/taptap/sdk/ui/k;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment_login"

    invoke-static {v0, v1}, Lcom/taptap/sdk/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 4

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/taptap/sdk/ui/d;->a(IILandroid/content/Intent;)V

    if-eqz p2, :cond_c

    .line 9
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 11
    :cond_c
    invoke-static {}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationBack()V

    .line 12
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 4

    .line 2
    invoke-super {p0, p1}, Lcom/taptap/sdk/ui/d;->a(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/d;->b()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/LoginRequest;

    .line 4
    new-instance v0, Lcom/taptap/sdk/ui/k;

    new-instance v1, Lcom/taptap/sdk/ui/a;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/ui/a;-><init>(Lcom/taptap/sdk/ui/d;)V

    invoke-direct {v0, v1}, Lcom/taptap/sdk/ui/k;-><init>(Lcom/taptap/sdk/ui/a;)V

    iput-object v0, p0, Lcom/taptap/sdk/ui/j;->e:Lcom/taptap/sdk/ui/k;

    .line 5
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/ui/k;->b(Lcom/taptap/sdk/LoginRequest;)V

    return-void
.end method

.method protected e()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/taptap/sdk/ui/d;->e()V

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/ui/j;->e:Lcom/taptap/sdk/ui/k;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/k;->b()Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/ui/j;->e:Lcom/taptap/sdk/ui/k;

    invoke-virtual {v1}, Lcom/taptap/sdk/ui/k;->b()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1a
    return-void
.end method
