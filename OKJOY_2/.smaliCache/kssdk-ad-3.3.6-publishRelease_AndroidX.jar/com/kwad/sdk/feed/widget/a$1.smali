.class Lcom/kwad/sdk/feed/widget/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/videoview/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/a;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/a$1;->a:Lcom/kwad/sdk/feed/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a$1;->a:Lcom/kwad/sdk/feed/widget/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/a;->a(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a$1;->a:Lcom/kwad/sdk/feed/widget/a;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/feed/widget/a;->a(Lcom/kwad/sdk/feed/widget/a;J)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/a$1;->a:Lcom/kwad/sdk/feed/widget/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/a;->b(Lcom/kwad/sdk/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method
