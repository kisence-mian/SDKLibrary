.class Lcom/taptap/sdk/ui/a;
.super Ljava/lang/Object;
.source "ActivityDelegate.java"


# instance fields
.field public a:Lcom/taptap/sdk/ui/d;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/ui/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_13
    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 7
    iget-object v0, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_13
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/ui/d;->a(Landroid/content/Intent;I)V

    :cond_7
    return-void
.end method

.method public a(Lcom/taptap/sdk/ui/d;)V
    .registers 5

    .line 3
    iget-object v0, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->c()Lcom/taptap/sdk/ui/f;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v1}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "taptap_sdk_container"

    invoke-static {v1, v2}, Lcom/taptap/sdk/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/taptap/sdk/ui/f;->b(ILcom/taptap/sdk/ui/d;)Lcom/taptap/sdk/ui/f;

    .line 5
    iput-object p1, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    return-void
.end method

.method public b()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/ui/a;->a:Lcom/taptap/sdk/ui/d;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method
