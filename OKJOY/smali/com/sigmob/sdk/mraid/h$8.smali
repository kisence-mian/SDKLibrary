.class Lcom/sigmob/sdk/mraid/h$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/Runnable;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/h;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/h$8;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/h$8;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->i(Lcom/sigmob/sdk/mraid/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->m(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/w;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Lcom/sigmob/sdk/mraid/w;->a(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->n(Lcom/sigmob/sdk/mraid/h;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/h;->m(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/w;

    move-result-object v2

    aget v3, v0, v7

    aget v4, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/sigmob/sdk/mraid/w;->a(IIII)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->m(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/w;

    move-result-object v1

    aget v2, v0, v7

    aget v3, v0, v6

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v5}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sigmob/sdk/mraid/w;->c(IIII)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$8;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->m(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/w;

    move-result-object v1

    aget v2, v0, v7

    aget v0, v0, v6

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h$8;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h$8;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sigmob/sdk/mraid/w;->b(IIII)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->T()I

    move-result v0

    if-ne v0, v6, :cond_dd

    const-string v0, "portrait"

    :goto_92
    new-instance v1, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;

    invoke-direct {v1, v0, v6}, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->d(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->d(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/h;->m(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/w;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/w;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->i()Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$8;->c:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->m(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/w;)V

    :cond_d3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$8;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$8;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_dc
    return-void

    :cond_dd
    const-string v0, "landscape"

    goto :goto_92
.end method
