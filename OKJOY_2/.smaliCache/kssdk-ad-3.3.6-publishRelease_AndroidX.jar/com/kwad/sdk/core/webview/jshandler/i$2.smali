.class Lcom/kwad/sdk/core/webview/jshandler/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/i;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/i;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/i;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/i$2;->a:Lcom/kwad/sdk/core/webview/jshandler/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i$2;->a:Lcom/kwad/sdk/core/webview/jshandler/i;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/i;->c(Lcom/kwad/sdk/core/webview/jshandler/i;)Lcom/kwad/sdk/core/webview/a/c;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i$2;->a:Lcom/kwad/sdk/core/webview/jshandler/i;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/i;->c(Lcom/kwad/sdk/core/webview/jshandler/i;)Lcom/kwad/sdk/core/webview/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    :cond_12
    return-void
.end method
