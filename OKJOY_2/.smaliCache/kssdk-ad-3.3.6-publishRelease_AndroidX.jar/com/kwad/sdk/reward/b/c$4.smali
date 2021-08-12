.class Lcom/kwad/sdk/reward/b/c$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/c;->r()V
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

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/c$4;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$4;->a:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/c;->o(Lcom/kwad/sdk/reward/b/c;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
