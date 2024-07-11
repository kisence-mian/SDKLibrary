.class Lcom/kwad/sdk/core/webview/jshandler/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/k;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/k$a;

.field final synthetic b:Lcom/kwad/sdk/core/webview/jshandler/k;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/k;Lcom/kwad/sdk/core/webview/jshandler/k$a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/k$1;->b:Lcom/kwad/sdk/core/webview/jshandler/k;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/k$1;->a:Lcom/kwad/sdk/core/webview/jshandler/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/k$1;->b:Lcom/kwad/sdk/core/webview/jshandler/k;

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/k$1;->a:Lcom/kwad/sdk/core/webview/jshandler/k$a;

    iget v1, v1, Lcom/kwad/sdk/core/webview/jshandler/k$a;->a:I

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/k;->a(Lcom/kwad/sdk/core/webview/jshandler/k;I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/k$1;->b:Lcom/kwad/sdk/core/webview/jshandler/k;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/k;->a(Lcom/kwad/sdk/core/webview/jshandler/k;)Lcom/kwad/sdk/core/webview/a/c;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/k$1;->b:Lcom/kwad/sdk/core/webview/jshandler/k;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/k;->a(Lcom/kwad/sdk/core/webview/jshandler/k;)Lcom/kwad/sdk/core/webview/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    :cond_1b
    return-void
.end method
