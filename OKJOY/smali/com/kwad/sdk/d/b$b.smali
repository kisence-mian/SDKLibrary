.class final Lcom/kwad/sdk/d/b$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/d/b;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/d/b$b;->a:Landroid/view/View;

    iput p2, p0, Lcom/kwad/sdk/d/b$b;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/d/b$b;->a:Landroid/view/View;

    iget v1, p0, Lcom/kwad/sdk/d/b$b;->b:I

    invoke-static {v0, v1}, Lcom/kwad/sdk/d/b;->a(Landroid/view/View;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/d/b$b;->a:Landroid/view/View;

    iget v1, p0, Lcom/kwad/sdk/d/b$b;->b:I

    invoke-static {v0, v1}, Lcom/kwad/sdk/d/b;->a(Landroid/view/View;I)V

    return-void
.end method
