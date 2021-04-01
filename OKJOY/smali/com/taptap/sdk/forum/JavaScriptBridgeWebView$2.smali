.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$2;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->handleMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$2;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iput-object p2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$2;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 280
    new-instance v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$2;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;)V

    .line 281
    .local v0, "msg":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$2;->val$callbackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 282
    iput-object p1, v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$2;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    # invokes: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->dispatchMessage(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    invoke-static {v1, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$500(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    .line 284
    return-void
.end method
