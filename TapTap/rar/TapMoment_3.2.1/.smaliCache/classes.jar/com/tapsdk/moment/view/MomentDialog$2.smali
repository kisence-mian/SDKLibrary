.class Lcom/tapsdk/moment/view/MomentDialog$2;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 194
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 197
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/MomentDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 198
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-static {}, Lcom/tapsdk/moment/notch/NotchTools;->getFullScreenTools()Lcom/tapsdk/moment/notch/NotchTools;

    move-result-object v1

    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v2}, Lcom/tapsdk/moment/view/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapsdk/moment/notch/NotchTools;->isNotchScreen(Landroid/view/Window;)Z

    move-result v1

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->isNotch:Z
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$002(Lcom/tapsdk/moment/view/MomentDialog;Z)Z

    .line 199
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->getOrientation()I
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$100(Lcom/tapsdk/moment/view/MomentDialog;)I

    move-result v1

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->handleLayout(I)V
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$200(Lcom/tapsdk/moment/view/MomentDialog;I)V

    .line 200
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->baseUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/tapsdk/moment/view/MomentDialog;->access$300(Lcom/tapsdk/moment/view/MomentDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%s/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->clientId:Ljava/lang/String;
    invoke-static {v5}, Lcom/tapsdk/moment/view/MomentDialog;->access$400(Lcom/tapsdk/moment/view/MomentDialog;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    iget-object v2, v2, Lcom/tapsdk/moment/view/MomentDialog;->urlExtra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/tapsdk/moment/Utils;->getNetworkState(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_99

    .line 203
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    new-instance v2, Lcom/tapsdk/moment/view/NetworkErrorDialog;

    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->isNotch:Z
    invoke-static {v3}, Lcom/tapsdk/moment/view/MomentDialog;->access$000(Lcom/tapsdk/moment/view/MomentDialog;)Z

    move-result v3

    new-instance v4, Lcom/tapsdk/moment/view/MomentDialog$2$1;

    invoke-direct {v4, p0}, Lcom/tapsdk/moment/view/MomentDialog$2$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$2;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/tapsdk/moment/view/NetworkErrorDialog;-><init>(Landroid/content/Context;ZLcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;)V

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->networkErrorDialog:Lcom/tapsdk/moment/view/NetworkErrorDialog;
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$602(Lcom/tapsdk/moment/view/MomentDialog;Lcom/tapsdk/moment/view/NetworkErrorDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog;

    .line 216
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$2;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->networkErrorDialog:Lcom/tapsdk/moment/view/NetworkErrorDialog;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$600(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->show()V

    .line 219
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_99
    return-void
.end method
