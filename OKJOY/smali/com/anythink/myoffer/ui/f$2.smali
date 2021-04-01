.class final Lcom/anythink/myoffer/ui/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/f;->j()V
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
    .line 360
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->e(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 380
    :cond_b
    :goto_b
    return-void

    .line 367
    :cond_c
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->s(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x1

    :goto_17
    invoke-static {v1, v0}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;Z)Z

    .line 368
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->s(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 369
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->u(Lcom/anythink/myoffer/ui/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->t(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 370
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 371
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_b

    .line 367
    :cond_43
    const/4 v0, 0x0

    goto :goto_17

    .line 374
    :cond_45
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->u(Lcom/anythink/myoffer/ui/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->w(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 375
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 376
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$2;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_b
.end method
