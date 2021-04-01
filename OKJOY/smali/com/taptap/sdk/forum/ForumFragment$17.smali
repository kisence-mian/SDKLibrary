.class Lcom/taptap/sdk/forum/ForumFragment$17;
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
    .line 347
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$17;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 350
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment$17;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-virtual {v2}, Lcom/taptap/sdk/forum/ForumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 351
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1c

    .line 352
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_18

    .line 354
    const-string v2, "content"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    :cond_18
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 358
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1c
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 359
    return-void
.end method
