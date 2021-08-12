.class Lcom/kwad/sdk/core/g/d$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d$5;->a(Lcom/kwad/sdk/core/response/model/AdResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/kwad/sdk/core/g/d$5;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d$5;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$5$2;->b:Lcom/kwad/sdk/core/g/d$5;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$5$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$5$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$5$2;->b:Lcom/kwad/sdk/core/g/d$5;

    iget-object v0, v0, Lcom/kwad/sdk/core/g/d$5;->a:Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$5$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;->onFeedAdLoad(Ljava/util/List;)V

    return-void

    :cond_12
    new-instance v1, Lcom/kwad/sdk/feed/b$a;

    invoke-direct {v1, v0}, Lcom/kwad/sdk/feed/b$a;-><init>(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$5$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/api/KsFeedAd;

    check-cast v2, Lcom/kwad/sdk/feed/b;

    new-instance v3, Lcom/kwad/sdk/core/g/d$5$2$1;

    invoke-direct {v3, p0, v1}, Lcom/kwad/sdk/core/g/d$5$2$1;-><init>(Lcom/kwad/sdk/core/g/d$5$2;Lcom/kwad/sdk/feed/b$a;)V

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/feed/b;->a(Lcom/kwad/sdk/feed/b$b;)Lcom/kwad/sdk/feed/widget/base/a;

    goto :goto_1d

    :cond_34
    return-void
.end method
