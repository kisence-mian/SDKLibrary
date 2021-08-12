.class Lcom/kwad/sdk/feed/widget/l$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/core/webview/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/l;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/l;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;)V
    .registers 9

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->q(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->r(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->s(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, v1}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->m(Lcom/kwad/sdk/feed/widget/l;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v1}, Lcom/kwad/sdk/feed/widget/l;->n(Lcom/kwad/sdk/feed/widget/l;)I

    move-result v1

    iget-wide v2, p1, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->widthRation:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4a

    const-wide v2, 0x3fed70a3e0000000L    # 0.9200000166893005

    iput-wide v2, p1, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->widthRation:D

    const-wide v2, 0x3fa47ae140000000L    # 0.03999999910593033

    iput-wide v2, p1, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->leftMarginRation:D

    :cond_4a
    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v2}, Lcom/kwad/sdk/feed/widget/l;->t(Lcom/kwad/sdk/feed/widget/l;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    iget-wide v3, p1, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->topMarginRation:D

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->t(Lcom/kwad/sdk/feed/widget/l;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-wide v2, p1, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->leftMarginRation:D

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->t(Lcom/kwad/sdk/feed/widget/l;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-wide v1, p1, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->widthRation:D

    mul-double/2addr v4, v1

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->t(Lcom/kwad/sdk/feed/widget/l;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v1}, Lcom/kwad/sdk/feed/widget/l;->t(Lcom/kwad/sdk/feed/widget/l;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-double v1, v1

    iget-wide v3, p1, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->heightWidthRation:D

    mul-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->s(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->t(Lcom/kwad/sdk/feed/widget/l;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$9;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->u(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    :cond_9d
    return-void
.end method
