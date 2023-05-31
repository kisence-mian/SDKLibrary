.class Lcom/taptap/sdk/forum/ForumFragment$14;
.super Ljava/lang/Object;
.source "ForumFragment.java"

# interfaces
.implements Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/ForumFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/forum/ForumFragment;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/ForumFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$14;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$14;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # invokes: Lcom/taptap/sdk/forum/ForumFragment;->deviceInfo2Json()Ljava/lang/String;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$400(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 309
    return-void
.end method
