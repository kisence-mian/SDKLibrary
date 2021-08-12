.class Lcom/kwad/sdk/feed/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/feed/widget/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/b;->a(Lcom/kwad/sdk/feed/b$b;)Lcom/kwad/sdk/feed/widget/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/b$b;

.field final synthetic b:Lcom/kwad/sdk/feed/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/b;Lcom/kwad/sdk/feed/b$b;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/feed/b$1;->b:Lcom/kwad/sdk/feed/b;

    iput-object p2, p0, Lcom/kwad/sdk/feed/b$1;->a:Lcom/kwad/sdk/feed/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/b$1;->b:Lcom/kwad/sdk/feed/b;

    invoke-static {v0}, Lcom/kwad/sdk/feed/b;->a(Lcom/kwad/sdk/feed/b;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/feed/b;->a(Lcom/kwad/sdk/feed/b;Lcom/kwad/sdk/feed/widget/base/a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b$1;->a:Lcom/kwad/sdk/feed/b$b;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/feed/b$b;->a()V

    :cond_10
    return-void
.end method
