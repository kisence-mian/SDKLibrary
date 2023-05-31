.class Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$6;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 422
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$6;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notice(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 426
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 427
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 428
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$6;->this$0:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    return-void
.end method
