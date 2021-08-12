.class Lcom/kwad/sdk/feed/widget/l$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/i$b;


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

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$8;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/webview/jshandler/i$a;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$8;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$8;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->m(Lcom/kwad/sdk/feed/widget/l;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$8;->a:Lcom/kwad/sdk/feed/widget/l;

    iget v1, p1, Lcom/kwad/sdk/core/webview/jshandler/i$a;->a:I

    int-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;D)D

    iget p1, p1, Lcom/kwad/sdk/core/webview/jshandler/i$a;->a:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$8;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->n(Lcom/kwad/sdk/feed/widget/l;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$8;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->o(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    move-result-object p1

    double-to-float v2, v0

    invoke-virtual {p1, v2}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    invoke-static {}, Lcom/kwad/sdk/feed/widget/l;->i()Ljava/util/HashMap;

    move-result-object p1

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/l$8;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v2}, Lcom/kwad/sdk/feed/widget/l;->p(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v2

    iget-wide v2, v2, Lcom/kwad/sdk/core/response/model/AdTemplate;->posId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    return-void
.end method
