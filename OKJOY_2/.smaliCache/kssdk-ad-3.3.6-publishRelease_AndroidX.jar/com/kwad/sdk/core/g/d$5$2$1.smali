.class Lcom/kwad/sdk/core/g/d$5$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/feed/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d$5$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/b$a;

.field final synthetic b:Lcom/kwad/sdk/core/g/d$5$2;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d$5$2;Lcom/kwad/sdk/feed/b$a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$5$2$1;->b:Lcom/kwad/sdk/core/g/d$5$2;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$5$2$1;->a:Lcom/kwad/sdk/feed/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$5$2$1;->a:Lcom/kwad/sdk/feed/b$a;

    invoke-virtual {v0}, Lcom/kwad/sdk/feed/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$5$2$1;->b:Lcom/kwad/sdk/core/g/d$5$2;

    iget-object v0, v0, Lcom/kwad/sdk/core/g/d$5$2;->b:Lcom/kwad/sdk/core/g/d$5;

    iget-object v0, v0, Lcom/kwad/sdk/core/g/d$5;->a:Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$5$2$1;->b:Lcom/kwad/sdk/core/g/d$5$2;

    iget-object v1, v1, Lcom/kwad/sdk/core/g/d$5$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;->onFeedAdLoad(Ljava/util/List;)V

    :cond_15
    return-void
.end method
