.class Lcom/kwad/sdk/feed/widget/l$7$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/l$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/l$7;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/l$7;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$7$2;->a:Lcom/kwad/sdk/feed/widget/l$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$7$2;->a:Lcom/kwad/sdk/feed/widget/l$7;

    iget-object v0, v0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->k(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a$a;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$7$2;->a:Lcom/kwad/sdk/feed/widget/l$7;

    iget-object v0, v0, Lcom/kwad/sdk/feed/widget/l$7;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->l(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/feed/widget/base/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$a;->a()V

    :cond_15
    return-void
.end method
