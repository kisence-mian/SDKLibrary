.class Lcom/kwad/sdk/nativead/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/download/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/nativead/a;->a(Landroid/view/View;Lcom/kwad/sdk/e/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/e/g$a;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/kwad/sdk/nativead/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/nativead/a;Lcom/kwad/sdk/e/g$a;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/nativead/a$e;->c:Lcom/kwad/sdk/nativead/a;

    iput-object p2, p0, Lcom/kwad/sdk/nativead/a$e;->a:Lcom/kwad/sdk/e/g$a;

    iput-object p3, p0, Lcom/kwad/sdk/nativead/a$e;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$e;->c:Lcom/kwad/sdk/nativead/a;

    invoke-static {v0}, Lcom/kwad/sdk/nativead/a;->a(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/nativead/a$e;->a:Lcom/kwad/sdk/e/g$a;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/e/g$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$e;->c:Lcom/kwad/sdk/nativead/a;

    invoke-static {v0}, Lcom/kwad/sdk/nativead/a;->b(Lcom/kwad/sdk/nativead/a;)Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/nativead/a$e;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/kwad/sdk/nativead/a$e;->c:Lcom/kwad/sdk/nativead/a;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/export/i/KsNativeAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/kwad/sdk/export/i/KsNativeAd;)V

    return-void
.end method
