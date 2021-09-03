.class Lcom/tapsdk/moment/view/MomentDialog$20$1$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$20$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Action1<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tapsdk/moment/view/MomentDialog$20$1;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$20$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/tapsdk/moment/view/MomentDialog$20$1;

    .line 630
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1$1;->this$2:Lcom/tapsdk/moment/view/MomentDialog$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .registers 6
    .param p1, "data"    # Landroid/content/Intent;

    .line 633
    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1$1;->this$2:Lcom/tapsdk/moment/view/MomentDialog$20$1;

    iget-object v2, v2, Lcom/tapsdk/moment/view/MomentDialog$20$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-interface {v2, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 635
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 636
    .local v2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-static {}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v3, "login_success.moment.taptap.action"

    invoke-virtual {v0, v3, v2}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 638
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 630
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/view/MomentDialog$20$1$1;->call(Landroid/content/Intent;)V

    return-void
.end method
