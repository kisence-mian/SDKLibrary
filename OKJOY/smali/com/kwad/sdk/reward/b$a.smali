.class Lcom/kwad/sdk/reward/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b$a;->a:Lcom/kwad/sdk/reward/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b$a;->a:Lcom/kwad/sdk/reward/b;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b$a;->a:Lcom/kwad/sdk/reward/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b;->a(Lcom/kwad/sdk/reward/b;)Lcom/kwad/sdk/reward/b$d;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/reward/b$a;->a:Lcom/kwad/sdk/reward/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b;->a(Lcom/kwad/sdk/reward/b;)Lcom/kwad/sdk/reward/b$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/reward/b$d;->a()V

    :cond_16
    return-void
.end method
