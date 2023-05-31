.class final Lcom/anythink/myoffer/ui/f$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/f;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/f;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/f;)V
    .registers 2

    .prologue
    .line 499
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 502
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "MediaPlayer onPrepared()..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->z(Lcom/anythink/myoffer/ui/f;)Z

    .line 505
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/f;->b(Lcom/anythink/myoffer/ui/f;I)I

    .line 506
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->r(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/b;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 507
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->r(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->A(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/b;->a(I)V

    .line 509
    :cond_32
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    const/high16 v1, 0x3e800000    # 0.25f

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/f;->A(Lcom/anythink/myoffer/ui/f;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/f;->c(Lcom/anythink/myoffer/ui/f;I)I

    .line 510
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/f;->A(Lcom/anythink/myoffer/ui/f;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/f;->d(Lcom/anythink/myoffer/ui/f;I)I

    .line 511
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    const/high16 v1, 0x3f400000    # 0.75f

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/f;->A(Lcom/anythink/myoffer/ui/f;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/f;->e(Lcom/anythink/myoffer/ui/f;I)I

    .line 514
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v0

    if-lez v0, :cond_83

    .line 515
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 520
    :goto_82
    return-void

    .line 518
    :cond_83
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$5;->a:Lcom/anythink/myoffer/ui/f;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/f;->b()V

    goto :goto_82
.end method
