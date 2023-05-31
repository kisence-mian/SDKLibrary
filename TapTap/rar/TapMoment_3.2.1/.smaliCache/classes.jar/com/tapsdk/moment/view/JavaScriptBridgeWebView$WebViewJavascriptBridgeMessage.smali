.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
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

.field final synthetic this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;


# direct methods
.method private constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p2, "x1"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;

    .line 116
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    return-void
.end method
