.class Lcom/kwad/sdk/reward/b/b/b/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/b/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/d$1;->a:Lcom/kwad/sdk/reward/b/b/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d$1;->a:Lcom/kwad/sdk/reward/b/b/b/d;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/d;->a(Lcom/kwad/sdk/reward/b/b/b/d;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d$1;->a:Lcom/kwad/sdk/reward/b/b/b/d;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/d;->a(Lcom/kwad/sdk/reward/b/b/b/d;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b/d$1$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/b/b/d$1$1;-><init>(Lcom/kwad/sdk/reward/b/b/b/d$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
