.class public Lcom/sigmob/sdk/mraid/MraidWebView;
.super Lcom/sigmob/sdk/base/views/BaseWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/MraidWebView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/sigmob/sdk/mraid/MraidWebView$a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/BaseWebView;-><init>(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-gt p1, v0, :cond_14

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/MraidWebView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->b:Z

    :cond_14
    return-void
.end method

.method private setMraidViewable(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->b:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->b:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->a:Lcom/sigmob/sdk/mraid/MraidWebView$a;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView$a;->a(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->b:Z

    return v0
.end method

.method public destroy()V
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->a:Lcom/sigmob/sdk/mraid/MraidWebView$a;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/base/views/BaseWebView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_6

    goto :goto_a

    :cond_6
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setMraidViewable(Z)V

    :goto_a
    return-void
.end method

.method setVisibilityChangedListener(Lcom/sigmob/sdk/mraid/MraidWebView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->a:Lcom/sigmob/sdk/mraid/MraidWebView$a;

    return-void
.end method
