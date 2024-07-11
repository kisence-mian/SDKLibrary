.class Lcom/sigmob/sdk/videoAd/h$19;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->e(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$19;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_30

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$19;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/videoAd/h;->d(Lcom/sigmob/sdk/videoAd/h;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$19;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->m(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$19;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->I(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$19;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$19;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/a;->c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$19;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->J(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/h;->a()V

    :cond_30
    return p2
.end method
