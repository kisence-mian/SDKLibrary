.class Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1$1;
.super Ljava/lang/Object;
.source "NetworkErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;

    .line 133
    iput-object p1, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1$1;->this$2:Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1$1;->this$2:Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;

    iget-object v0, v0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$container:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1$1;->this$2:Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;

    iget-object v0, v0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;->this$1:Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$ttmGifView:Lcom/tapsdk/moment/view/TTMGifView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/TTMGifView;->setVisibility(I)V

    .line 138
    return-void
.end method
