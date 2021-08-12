.class Lcom/kwad/sdk/feed/widget/l$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/a$b;


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

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->c(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->d(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v1}, Lcom/kwad/sdk/feed/FeedType;->getType()I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->e(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v1}, Lcom/kwad/sdk/feed/FeedType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_47

    :cond_2c
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v1}, Lcom/kwad/sdk/feed/widget/l;->f(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/feed/widget/l$7$1;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/widget/l$7$1;-><init>(Lcom/kwad/sdk/feed/widget/l$7;)V

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v3}, Lcom/kwad/sdk/feed/widget/l;->i(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/download/b/b;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/b/a;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    goto :goto_61

    :cond_47
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v1}, Lcom/kwad/sdk/feed/widget/l;->j(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/feed/widget/l$7$2;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/feed/widget/l$7$2;-><init>(Lcom/kwad/sdk/feed/widget/l$7;)V

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v3}, Lcom/kwad/sdk/feed/widget/l;->i(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/download/b/b;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :goto_61
    return-void
.end method
