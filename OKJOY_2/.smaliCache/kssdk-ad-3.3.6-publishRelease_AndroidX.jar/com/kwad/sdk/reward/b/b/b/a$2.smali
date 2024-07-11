.class Lcom/kwad/sdk/reward/b/b/b/a$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/b/b/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/a$2;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/a$2;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/b/a;->c(Lcom/kwad/sdk/reward/b/b/b/a;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
