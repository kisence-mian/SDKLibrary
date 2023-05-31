.class Lcom/taptap/sdk/ui/e;
.super Landroid/app/Activity;
.source "BlockActivity.java"

# interfaces
.implements Lcom/taptap/sdk/ui/i;


# instance fields
.field private a:Lcom/taptap/sdk/ui/f;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/taptap/sdk/ui/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/e;->a:Lcom/taptap/sdk/ui/f;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/taptap/sdk/ui/e;->a:Lcom/taptap/sdk/ui/f;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/f;->a()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/ui/d;

    .line 5
    invoke-virtual {v1, p1, p2, p3}, Lcom/taptap/sdk/ui/d;->a(IILandroid/content/Intent;)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/ui/e;->a:Lcom/taptap/sdk/ui/f;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/f;->a()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/ui/d;

    .line 4
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/ui/d;->a(Landroid/content/res/Configuration;)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/taptap/sdk/ui/f;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/ui/f;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/taptap/sdk/ui/e;->a:Lcom/taptap/sdk/ui/f;

    return-void
.end method
