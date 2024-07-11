.class Lcom/kwad/sdk/core/webview/jshandler/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/i;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/i$a;

.field final synthetic b:Lcom/kwad/sdk/core/webview/jshandler/i;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/i;Lcom/kwad/sdk/core/webview/jshandler/i$a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->b:Lcom/kwad/sdk/core/webview/jshandler/i;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->a:Lcom/kwad/sdk/core/webview/jshandler/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->b:Lcom/kwad/sdk/core/webview/jshandler/i;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/i;->a(Lcom/kwad/sdk/core/webview/jshandler/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->a:Lcom/kwad/sdk/core/webview/jshandler/i$a;

    iget v1, v1, Lcom/kwad/sdk/core/webview/jshandler/i$a;->a:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->a:Lcom/kwad/sdk/core/webview/jshandler/i$a;

    iget v1, v1, Lcom/kwad/sdk/core/webview/jshandler/i$a;->b:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->a:Lcom/kwad/sdk/core/webview/jshandler/i$a;

    iget v1, v1, Lcom/kwad/sdk/core/webview/jshandler/i$a;->c:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->a:Lcom/kwad/sdk/core/webview/jshandler/i$a;

    iget v1, v1, Lcom/kwad/sdk/core/webview/jshandler/i$a;->d:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->b:Lcom/kwad/sdk/core/webview/jshandler/i;

    invoke-static {v1}, Lcom/kwad/sdk/core/webview/jshandler/i;->a(Lcom/kwad/sdk/core/webview/jshandler/i;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->b:Lcom/kwad/sdk/core/webview/jshandler/i;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/i;->b(Lcom/kwad/sdk/core/webview/jshandler/i;)Lcom/kwad/sdk/core/webview/jshandler/i$b;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->b:Lcom/kwad/sdk/core/webview/jshandler/i;

    invoke-static {v0}, Lcom/kwad/sdk/core/webview/jshandler/i;->b(Lcom/kwad/sdk/core/webview/jshandler/i;)Lcom/kwad/sdk/core/webview/jshandler/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/i$1;->a:Lcom/kwad/sdk/core/webview/jshandler/i$a;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/i$b;->a(Lcom/kwad/sdk/core/webview/jshandler/i$a;)V

    :cond_43
    return-void
.end method
