.class Lcom/kwad/sdk/reward/b/c$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/c$9;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$9;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/c;->j(Lcom/kwad/sdk/reward/b/c;)Lcom/kwad/sdk/reward/a;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object p2, p0, Lcom/kwad/sdk/reward/b/c$9;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p2}, Lcom/kwad/sdk/reward/b/c;->a(Lcom/kwad/sdk/reward/b/c;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/core/report/e;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
