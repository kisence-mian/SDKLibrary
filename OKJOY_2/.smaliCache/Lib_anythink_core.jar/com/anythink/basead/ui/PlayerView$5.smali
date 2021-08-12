.class final Lcom/anythink/basead/ui/PlayerView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView;->m()V
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

    .line 509
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 512
    sget-object p1, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v0, "MediaPlayer onPrepared()..."

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->z(Lcom/anythink/basead/ui/PlayerView;)Z

    .line 515
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->v(Lcom/anythink/basead/ui/PlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/PlayerView;->b(Lcom/anythink/basead/ui/PlayerView;I)I

    .line 516
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->r(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/CountDownView;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 517
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->r(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/CountDownView;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->A(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/CountDownView;->setDuration(I)V

    .line 519
    :cond_30
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->A(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/PlayerView;->c(Lcom/anythink/basead/ui/PlayerView;I)I

    .line 520
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->A(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/PlayerView;->d(Lcom/anythink/basead/ui/PlayerView;I)I

    .line 521
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->A(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/PlayerView;->e(Lcom/anythink/basead/ui/PlayerView;I)I

    .line 524
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p1

    if-lez p1, :cond_7b

    .line 525
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->v(Lcom/anythink/basead/ui/PlayerView;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    .line 528
    :cond_7b
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$5;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/PlayerView;->start()V

    .line 530
    return-void
.end method
