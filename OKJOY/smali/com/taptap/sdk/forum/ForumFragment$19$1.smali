.class Lcom/taptap/sdk/forum/ForumFragment$19$1;
.super Landroid/webkit/WebViewClient;
.source "ForumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/ForumFragment$19;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/forum/ForumFragment$19;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/ForumFragment$19;)V
    .registers 2
    .param p1, "this$1"    # Lcom/taptap/sdk/forum/ForumFragment$19;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$19$1;->this$1:Lcom/taptap/sdk/forum/ForumFragment$19;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 381
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment$19$1;->this$1:Lcom/taptap/sdk/forum/ForumFragment$19;

    iget-object v1, v1, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/forum/ForumFragment;->startActivity(Landroid/content/Intent;)V

    .line 382
    const/4 v1, 0x1

    return v1
.end method
