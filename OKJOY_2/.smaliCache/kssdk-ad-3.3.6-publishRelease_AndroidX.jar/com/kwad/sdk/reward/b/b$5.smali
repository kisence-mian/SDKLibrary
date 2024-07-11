.class Lcom/kwad/sdk/reward/b/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b$5;->a:Lcom/kwad/sdk/reward/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b$5;->a:Lcom/kwad/sdk/reward/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b;->e(Lcom/kwad/sdk/reward/b/b;)Lcom/kwad/sdk/reward/a;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->a()V

    return-void
.end method
