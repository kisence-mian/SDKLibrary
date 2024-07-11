.class Lcom/kwad/sdk/core/webview/jshandler/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/h;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/h;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/h;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/h$1;->a:Lcom/kwad/sdk/core/webview/jshandler/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/h$1;->a:Lcom/kwad/sdk/core/webview/jshandler/h;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/h;->a(Lcom/kwad/sdk/core/webview/jshandler/h;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/h$1;->a:Lcom/kwad/sdk/core/webview/jshandler/h;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/h;->b(Lcom/kwad/sdk/core/webview/jshandler/h;)Lcom/kwad/sdk/core/webview/a/c;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/h$1;->a:Lcom/kwad/sdk/core/webview/jshandler/h;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/h;->b(Lcom/kwad/sdk/core/webview/jshandler/h;)Lcom/kwad/sdk/core/webview/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    :cond_17
    return-void
.end method
