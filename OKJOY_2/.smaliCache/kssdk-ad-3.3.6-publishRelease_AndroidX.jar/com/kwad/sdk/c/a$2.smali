.class Lcom/kwad/sdk/c/a$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/a;->a(Landroid/widget/FrameLayout;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/a$2;->a:Lcom/kwad/sdk/c/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/c/a$2;->a:Lcom/kwad/sdk/c/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/kwad/sdk/c/a;->a(Lcom/kwad/sdk/c/a;Z)Z

    return-void
.end method
