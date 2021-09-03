.class Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;
.super Ljava/lang/Object;
.source "NetworkErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/NetworkErrorDialog$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    .line 121
    iput-object p1, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$container:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$ttmGifView:Lcom/tapsdk/moment/view/TTMGifView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/TTMGifView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapsdk/moment/Utils;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    .line 127
    .local v0, "state":I
    if-lez v0, :cond_3b

    .line 128
    iget-object v1, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v1, v1, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    # getter for: Lcom/tapsdk/moment/view/NetworkErrorDialog;->refreshCallback:Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;
    invoke-static {v1}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->access$000(Lcom/tapsdk/moment/view/NetworkErrorDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 129
    iget-object v1, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v1, v1, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    # getter for: Lcom/tapsdk/moment/view/NetworkErrorDialog;->refreshCallback:Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;
    invoke-static {v1}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->access$000(Lcom/tapsdk/moment/view/NetworkErrorDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;->onRefresh()V

    .line 131
    :cond_33
    iget-object v1, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v1, v1, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->dismiss()V

    goto :goto_49

    .line 133
    :cond_3b
    iget-object v1, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v1, v1, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$tip:Landroid/widget/TextView;

    new-instance v2, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1$1;

    invoke-direct {v2, p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1$1;-><init>(Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :goto_49
    return-void
.end method
