.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$6;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"


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
    .line 429
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$6;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notice(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 433
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 434
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 435
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$6;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    return-void
.end method
