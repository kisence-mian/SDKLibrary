.class Lcom/kwad/sdk/reward/b/f$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/f$2;->a:Lcom/kwad/sdk/reward/b/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/f$2;->a:Lcom/kwad/sdk/reward/b/f;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/f;->d(Lcom/kwad/sdk/reward/b/f;)V

    return-void
.end method
