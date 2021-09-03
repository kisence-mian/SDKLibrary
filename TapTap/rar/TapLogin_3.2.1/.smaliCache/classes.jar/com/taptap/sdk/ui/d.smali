.class Lcom/taptap/sdk/ui/d;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/app/Activity;

.field private c:Z

.field d:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taptap/sdk/ui/d;->c:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/taptap/sdk/ui/d;->b:Landroid/app/Activity;

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method protected a(Landroid/app/Activity;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/taptap/sdk/ui/d;->b:Landroid/app/Activity;

    return-void
.end method

.method a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/ui/d;->a(Landroid/app/Activity;)V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taptap/sdk/ui/d;->c:Z

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/ui/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/ui/d;->a:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lcom/taptap/sdk/ui/d;->d()V

    .line 5
    iget-object p1, p0, Lcom/taptap/sdk/ui/d;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/taptap/sdk/ui/d;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/ui/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 4

    .line 10
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/taptap/sdk/ui/d;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    .line 11
    iget-boolean v0, p0, Lcom/taptap/sdk/ui/d;->c:Z

    if-eqz v0, :cond_16

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 15
    iget-object v0, p0, Lcom/taptap/sdk/ui/d;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_15

    .line 17
    :cond_10
    iget-object p3, p0, Lcom/taptap/sdk/ui/d;->b:Landroid/app/Activity;

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_15
    return-void

    .line 18
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Block "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/taptap/sdk/ui/d;->d:Landroid/os/Bundle;

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/d;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public c()Lcom/taptap/sdk/ui/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/d;->b:Landroid/app/Activity;

    check-cast v0, Lcom/taptap/sdk/ui/i;

    invoke-interface {v0}, Lcom/taptap/sdk/ui/i;->a()Lcom/taptap/sdk/ui/f;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method
