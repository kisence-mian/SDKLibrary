.class Lcom/kwad/sdk/feed/widget/l$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/feed/widget/l;
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

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->x(Lcom/kwad/sdk/feed/widget/l;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0, p1}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;I)I

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->y(Lcom/kwad/sdk/feed/widget/l;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    const-string v0, "3"

    invoke-static {p1, v0}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;Ljava/lang/String;)V

    goto :goto_60

    :cond_1f
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->z(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->z(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/a;->setVisibility(I)V

    :cond_32
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->A(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/report/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->w(Lcom/kwad/sdk/feed/widget/l;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->B(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/l$a;

    move-result-object p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$12;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/l;->B(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/l$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/kwad/sdk/feed/widget/l$a;->a()V

    :cond_60
    :goto_60
    return-void
.end method
