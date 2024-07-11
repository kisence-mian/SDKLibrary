.class Lcom/kwad/sdk/core/webview/a/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/a/g;->callAdBridge(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/a/b;

.field final synthetic b:Lcom/kwad/sdk/core/webview/a/g;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/a/g;Lcom/kwad/sdk/core/webview/a/b;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/g$1;->b:Lcom/kwad/sdk/core/webview/a/g;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/a/g$1;->a:Lcom/kwad/sdk/core/webview/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/webview/a/e;

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/core/webview/a/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/e;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/core/webview/a/g$1;->b:Lcom/kwad/sdk/core/webview/a/g;

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/g$1;->a:Lcom/kwad/sdk/core/webview/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a/b;->c:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/b;)V
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/webview/a/f;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/webview/a/f;-><init>(Lcom/kwad/sdk/core/b;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/f;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/g$1;->b:Lcom/kwad/sdk/core/webview/a/g;

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/a/g$1;->a:Lcom/kwad/sdk/core/webview/a/b;

    iget-object v1, v1, Lcom/kwad/sdk/core/webview/a/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/core/webview/a/g;->a(Lcom/kwad/sdk/core/webview/a/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
