.class Lcom/tapsdk/moment/view/MomentDialog$27$1;
.super Landroid/webkit/WebViewClient;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$27;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$27;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$27;)V
    .registers 2
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$27;

    .line 806
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$27$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$27;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 809
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 810
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$27$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$27;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/MomentDialog;->startActivity(Landroid/content/Intent;)V

    .line 811
    const/4 v1, 0x1

    return v1
.end method
