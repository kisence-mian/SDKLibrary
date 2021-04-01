.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;
.super Landroid/os/Handler;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->mContextReference:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 91
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_f

    .line 92
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3c

    .line 109
    :cond_f
    :goto_f
    return-void

    .line 94
    :pswitch_10
    iget-object v3, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->_evaluateJavascript(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$000(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;)V

    goto :goto_f

    .line 97
    :pswitch_1a
    iget-object v3, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$101(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;)V

    goto :goto_f

    .line 100
    :pswitch_24
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;

    .line 101
    .local v1, "info":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;
    iget-object v2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v3, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;->url:Ljava/lang/String;

    iget-object v4, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;->headers:Ljava/util/Map;

    # invokes: Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v2, v3, v4}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$201(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_f

    .line 105
    .end local v1    # "info":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;
    :pswitch_32
    iget-object v3, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->handleMessage(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$300(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;)V

    goto :goto_f

    .line 92
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
        :pswitch_24
        :pswitch_32
    .end packed-switch
.end method
