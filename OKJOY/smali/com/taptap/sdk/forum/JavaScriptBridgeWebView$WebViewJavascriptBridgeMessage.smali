.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewJavascriptBridgeMessage"
.end annotation


# instance fields
.field callbackId:Ljava/lang/String;

.field data:Ljava/lang/Object;

.field handlerName:Ljava/lang/String;

.field responseData:Ljava/lang/Object;

.field responseId:Ljava/lang/String;

.field final synthetic this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;


# direct methods
.method private constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    .line 124
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p2, "x1"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    return-void
.end method
