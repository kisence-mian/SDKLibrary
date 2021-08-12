.class final Lcom/anythink/basead/ui/web/WebLandPageActivity$6;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/web/WebLandPageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/web/WebLandPageActivity;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .line 292
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/basead/ui/web/WebProgressBarView;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 293
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/basead/ui/web/WebProgressBarView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/web/WebProgressBarView;->setProgress(I)V

    .line 294
    const/16 p1, 0x64

    if-ne p2, p1, :cond_23

    .line 295
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/ui/web/WebLandPageActivity$6$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$6$1;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity$6;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 304
    :cond_23
    return-void
.end method
