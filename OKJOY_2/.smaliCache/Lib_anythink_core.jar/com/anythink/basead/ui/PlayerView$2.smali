.class final Lcom/anythink/basead/ui/PlayerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/PlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/PlayerView;)V
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 366
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->e(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 367
    return-void

    .line 370
    :cond_9
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->s(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;Z)Z

    .line 371
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->s(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 372
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->u(Lcom/anythink/basead/ui/PlayerView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->t(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 373
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->v(Lcom/anythink/basead/ui/PlayerView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 374
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->v(Lcom/anythink/basead/ui/PlayerView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 376
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 377
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/PlayerView$a;->f()V

    return-void

    .line 381
    :cond_4f
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->u(Lcom/anythink/basead/ui/PlayerView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->w(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 382
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->v(Lcom/anythink/basead/ui/PlayerView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 383
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->v(Lcom/anythink/basead/ui/PlayerView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 385
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 386
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$2;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/PlayerView$a;->g()V

    .line 391
    :cond_82
    return-void
.end method
