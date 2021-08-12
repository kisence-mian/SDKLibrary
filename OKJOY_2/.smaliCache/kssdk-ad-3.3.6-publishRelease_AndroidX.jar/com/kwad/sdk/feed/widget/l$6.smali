.class Lcom/kwad/sdk/feed/widget/l$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/l;->setupJsBridgeAndLoadUrl(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$6;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$6;->a:Lcom/kwad/sdk/feed/widget/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;Z)Z

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$6;->a:Lcom/kwad/sdk/feed/widget/l;

    const-string p2, "1"

    invoke-static {p1, p2}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$6;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->b(Lcom/kwad/sdk/feed/widget/l;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$6;->a:Lcom/kwad/sdk/feed/widget/l;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;Ljava/lang/String;)V

    :cond_f
    return-void
.end method
