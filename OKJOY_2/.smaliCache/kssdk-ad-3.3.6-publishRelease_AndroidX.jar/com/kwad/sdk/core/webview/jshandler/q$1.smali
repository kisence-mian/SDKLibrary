.class Lcom/kwad/sdk/core/webview/jshandler/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/q;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kwad/sdk/core/webview/jshandler/q;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/q;I)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1;->b:Lcom/kwad/sdk/core/webview/jshandler/q;

    iput p2, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1;->b:Lcom/kwad/sdk/core/webview/jshandler/q;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/q;->a(Lcom/kwad/sdk/core/webview/jshandler/q;)Lcom/kwad/sdk/core/webview/a;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1;->b:Lcom/kwad/sdk/core/webview/jshandler/q;

    invoke-static {v1}, Lcom/kwad/sdk/core/webview/jshandler/q;->a(Lcom/kwad/sdk/core/webview/jshandler/q;)Lcom/kwad/sdk/core/webview/a;

    move-result-object v1

    iget-object v1, v1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/core/webview/jshandler/q$1$1;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/core/webview/jshandler/q$1$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/q$1;)V

    iget-object v3, p0, Lcom/kwad/sdk/core/webview/jshandler/q$1;->b:Lcom/kwad/sdk/core/webview/jshandler/q;

    invoke-static {v3}, Lcom/kwad/sdk/core/webview/jshandler/q;->c(Lcom/kwad/sdk/core/webview/jshandler/q;)Lcom/kwad/sdk/core/download/b/b;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    return-void
.end method