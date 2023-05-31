.class Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;
.super Lcom/kwad/sdk/b/e/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-direct {p0}, Lcom/kwad/sdk/b/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->d(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/contentalliance/widget/a;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/contentalliance/widget/a;->B:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/widget/a;->a(J)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->f(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/b/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/b/e/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_78

    const/4 v0, 0x0

    move v1, v0

    :goto_39
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_78

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/ksad/lottie/LottieAnimationView;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->b()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/ksad/lottie/LottieAnimationView;->a()V

    :cond_74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    :cond_78
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->g(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_92
    return-void
.end method

.method public c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->c(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/b/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)Lcom/kwad/sdk/b/e/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
