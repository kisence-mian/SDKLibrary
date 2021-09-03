.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$2;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->handleMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 271
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$2;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iput-object p2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$2;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/Object;

    .line 274
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$2;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;)V

    .line 275
    .local v0, "msg":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$2;->val$callbackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 276
    iput-object p1, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$2;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    # invokes: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->dispatchMessage(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    invoke-static {v1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$500(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    .line 278
    return-void
.end method
