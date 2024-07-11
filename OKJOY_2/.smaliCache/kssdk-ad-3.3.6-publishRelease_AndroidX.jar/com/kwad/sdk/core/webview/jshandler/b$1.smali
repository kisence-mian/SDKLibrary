.class Lcom/kwad/sdk/core/webview/jshandler/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/b$1;->a:Lcom/kwad/sdk/core/webview/jshandler/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/b$1;->a:Lcom/kwad/sdk/core/webview/jshandler/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/b;->a(Lcom/kwad/sdk/core/webview/jshandler/b;)Lcom/kwad/sdk/core/webview/jshandler/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/core/webview/jshandler/b$a;->a()V

    return-void
.end method
