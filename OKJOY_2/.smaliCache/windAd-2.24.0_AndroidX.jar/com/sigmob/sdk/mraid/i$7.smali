.class Lcom/sigmob/sdk/mraid/i$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/i;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/i;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/i;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i$7;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3e

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$7;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$7;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->f(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$7;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->f(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_20

    :cond_1f
    const/4 p1, -0x1

    :goto_20
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$7;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->d(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i$7;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/i;->v(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/i$7;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/sigmob/sdk/videoAd/a;->c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$7;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->w(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/h;->a()V

    :cond_3e
    return p2
.end method
