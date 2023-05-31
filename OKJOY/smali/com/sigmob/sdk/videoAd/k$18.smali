.class Lcom/sigmob/sdk/videoAd/k$18;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->e(Landroid/content/Context;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$18;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_30

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$18;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0, v4}, Lcom/sigmob/sdk/videoAd/k;->d(Lcom/sigmob/sdk/videoAd/k;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$18;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->m(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$18;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->E(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$18;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$18;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/videoAd/a;->c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$18;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->F(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    :cond_30
    return v4
.end method
