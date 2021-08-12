.class Lcom/kwad/sdk/reward/b/b/b/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/b/b/d$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/b/d$1;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/d$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/d$1$1;->a:Lcom/kwad/sdk/reward/b/b/b/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d$1$1;->a:Lcom/kwad/sdk/reward/b/b/b/d$1;

    iget-object v0, v0, Lcom/kwad/sdk/reward/b/b/b/d$1;->a:Lcom/kwad/sdk/reward/b/b/b/d;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/d;->a(Lcom/kwad/sdk/reward/b/b/b/d;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d$1$1;->a:Lcom/kwad/sdk/reward/b/b/b/d$1;

    iget-object v0, v0, Lcom/kwad/sdk/reward/b/b/b/d$1;->a:Lcom/kwad/sdk/reward/b/b/b/d;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/d;->b(Lcom/kwad/sdk/reward/b/b/b/d;)Lcom/kwad/sdk/reward/c/a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/kwad/sdk/reward/c/a;->a(ZZ)V

    return-void
.end method
