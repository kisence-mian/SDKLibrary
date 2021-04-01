.class Lcom/sigmob/sdk/mraid/x$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/x;->a(Landroid/content/Context;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/x;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/x;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x$8;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_37

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$8;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->f(Lcom/sigmob/sdk/mraid/x;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$8;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->f(Lcom/sigmob/sdk/mraid/x;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_19
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$8;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->d(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$8;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->u(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/x$8;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/videoAd/a;->c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$8;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->v(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    :cond_37
    return v4

    :cond_38
    const/4 v0, -0x1

    goto :goto_19
.end method
