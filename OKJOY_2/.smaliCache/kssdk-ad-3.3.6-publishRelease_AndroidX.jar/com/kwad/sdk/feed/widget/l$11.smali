.class Lcom/kwad/sdk/feed/widget/l$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/c$b;


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

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$11;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/webview/jshandler/c$a;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p1, Lcom/kwad/sdk/core/webview/jshandler/c$a;->b:I

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$11;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->n(Lcom/kwad/sdk/feed/widget/l;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/webview/jshandler/c$a;->a:I

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/l$11;->a:Lcom/kwad/sdk/feed/widget/l;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;Z)Z

    return-void
.end method
