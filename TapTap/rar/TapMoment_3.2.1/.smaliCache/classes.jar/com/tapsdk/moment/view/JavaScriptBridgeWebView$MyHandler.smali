.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;
.super Landroid/os/Handler;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p2, "context"    # Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->mContextReference:Ljava/lang/ref/WeakReference;

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 85
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3b

    .line 86
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3c

    goto :goto_3b

    .line 99
    :pswitch_10
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->handleMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$300(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;)V

    goto :goto_3b

    .line 94
    :pswitch_1a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$RequestInfo;

    .line 95
    .local v1, "info":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$RequestInfo;
    iget-object v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v3, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$RequestInfo;->url:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$RequestInfo;->headers:Ljava/util/Map;

    # invokes: Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v2, v3, v4}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$201(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    .end local v1    # "info":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$RequestInfo;
    goto :goto_3b

    .line 91
    :pswitch_28
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$101(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;)V

    .line 92
    goto :goto_3b

    .line 88
    :pswitch_32
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->_evaluateJavascript(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$000(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;)V

    .line 103
    :cond_3b
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_32
        :pswitch_28
        :pswitch_1a
        :pswitch_10
    .end packed-switch
.end method
