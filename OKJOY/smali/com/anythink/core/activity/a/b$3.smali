.class final Lcom/anythink/core/activity/a/b$3;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/activity/a/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/activity/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/activity/a/b;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/anythink/core/activity/a/b$3;->a:Lcom/anythink/core/activity/a/b;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 235
    iget-object v0, p0, Lcom/anythink/core/activity/a/b$3;->a:Lcom/anythink/core/activity/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/core/activity/a/b;->j:Z

    .line 237
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 238
    return-void
.end method
