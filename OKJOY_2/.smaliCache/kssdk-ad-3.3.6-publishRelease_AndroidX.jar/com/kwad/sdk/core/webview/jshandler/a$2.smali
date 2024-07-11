.class Lcom/kwad/sdk/core/webview/jshandler/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/a$a;

.field final synthetic b:Lcom/kwad/sdk/core/webview/jshandler/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/a;Lcom/kwad/sdk/core/webview/jshandler/a$a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/a$2;->b:Lcom/kwad/sdk/core/webview/jshandler/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/a$2;->a:Lcom/kwad/sdk/core/webview/jshandler/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/a$2;->b:Lcom/kwad/sdk/core/webview/jshandler/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/a;->a(Lcom/kwad/sdk/core/webview/jshandler/a;)Lcom/kwad/sdk/core/download/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/a$2;->a:Lcom/kwad/sdk/core/webview/jshandler/a$a;

    iget-boolean v1, v1, Lcom/kwad/sdk/core/webview/jshandler/a$a;->a:Z

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/a$2;->b:Lcom/kwad/sdk/core/webview/jshandler/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/a;->c(Lcom/kwad/sdk/core/webview/jshandler/a;)Lcom/kwad/sdk/core/webview/jshandler/a$b;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/a$2;->b:Lcom/kwad/sdk/core/webview/jshandler/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/a;->c(Lcom/kwad/sdk/core/webview/jshandler/a;)Lcom/kwad/sdk/core/webview/jshandler/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/core/webview/jshandler/a$b;->a()V

    :cond_1e
    return-void
.end method
