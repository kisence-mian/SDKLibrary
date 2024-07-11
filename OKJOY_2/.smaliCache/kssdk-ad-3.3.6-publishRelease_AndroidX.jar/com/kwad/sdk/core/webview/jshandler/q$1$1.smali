.class Lcom/kwad/sdk/core/webview/jshandler/q$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/q$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/q$1;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/q$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1$1;->a:Lcom/kwad/sdk/core/webview/jshandler/q$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1$1;->a:Lcom/kwad/sdk/core/webview/jshandler/q$1;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/jshandler/q$1;->b:Lcom/kwad/sdk/core/webview/jshandler/q;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/q;->b(Lcom/kwad/sdk/core/webview/jshandler/q;)Lcom/kwad/sdk/core/webview/jshandler/q$b;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1$1;->a:Lcom/kwad/sdk/core/webview/jshandler/q$1;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/jshandler/q$1;->b:Lcom/kwad/sdk/core/webview/jshandler/q;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/q;->b(Lcom/kwad/sdk/core/webview/jshandler/q;)Lcom/kwad/sdk/core/webview/jshandler/q$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1$1;->a:Lcom/kwad/sdk/core/webview/jshandler/q$1;

    iget v1, v1, Lcom/kwad/sdk/core/webview/jshandler/q$1;->a:I

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/q$b;->a(I)V

    :cond_19
    return-void
.end method
