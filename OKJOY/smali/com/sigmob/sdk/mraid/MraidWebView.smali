.class public Lcom/sigmob/sdk/mraid/MraidWebView;
.super Lcom/sigmob/sdk/base/views/BaseWebView;


# static fields
.field private static final a:I = 0x1


# instance fields
.field private b:Lcom/sigmob/sdk/mraid/y;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/BaseWebView;-><init>(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/MraidWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->c:Z

    :cond_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private c(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->c:Z

    if-ne v0, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->b:Lcom/sigmob/sdk/mraid/y;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->b:Lcom/sigmob/sdk/mraid/y;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/y;->a(Z)V

    goto :goto_4
.end method


# virtual methods
.method a(Lcom/sigmob/sdk/mraid/y;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->b:Lcom/sigmob/sdk/mraid/y;

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->c:Z

    return v0
.end method

.method public destroy()V
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/MraidWebView;->b:Lcom/sigmob/sdk/mraid/y;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/base/views/BaseWebView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->c(Z)V

    goto :goto_5
.end method
