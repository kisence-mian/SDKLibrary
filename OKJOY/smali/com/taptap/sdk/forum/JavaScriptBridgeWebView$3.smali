.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$3;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$3;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$3;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    # getter for: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$600(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 412
    return-void

    .line 411
    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method
