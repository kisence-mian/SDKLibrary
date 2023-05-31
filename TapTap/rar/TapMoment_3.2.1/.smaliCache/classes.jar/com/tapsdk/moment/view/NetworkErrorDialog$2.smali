.class Lcom/tapsdk/moment/view/NetworkErrorDialog$2;
.super Ljava/lang/Object;
.source "NetworkErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/NetworkErrorDialog;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

.field final synthetic val$container:Landroid/widget/LinearLayout;

.field final synthetic val$tip:Landroid/widget/TextView;

.field final synthetic val$ttmGifView:Lcom/tapsdk/moment/view/TTMGifView;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/NetworkErrorDialog;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/tapsdk/moment/view/TTMGifView;)V
    .registers 5
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/NetworkErrorDialog;

    .line 118
    iput-object p1, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->this$0:Lcom/tapsdk/moment/view/NetworkErrorDialog;

    iput-object p2, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$tip:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$container:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$ttmGifView:Lcom/tapsdk/moment/view/TTMGifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;->val$tip:Landroid/widget/TextView;

    new-instance v1, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog$2$1;-><init>(Lcom/tapsdk/moment/view/NetworkErrorDialog$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method
