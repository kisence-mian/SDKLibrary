.class Lcom/sigmob/sdk/mraid/x$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/x;->k()Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/x;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/x;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x$6;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/mraid/MraidWebView;Lcom/sigmob/sdk/base/common/w;)V
    .registers 6

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$6;->a:Lcom/sigmob/sdk/mraid/x;

    iput-object p2, v0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$6;->a:Lcom/sigmob/sdk/mraid/x;

    new-instance v1, Lcom/sigmob/sdk/base/common/w;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$6;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->q(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/base/common/w;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$6;->a:Lcom/sigmob/sdk/mraid/x;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$6;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->r(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$6;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_6
.end method
