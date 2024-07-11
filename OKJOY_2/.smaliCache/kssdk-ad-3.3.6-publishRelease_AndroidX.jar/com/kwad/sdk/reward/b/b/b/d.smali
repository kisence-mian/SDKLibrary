.class public Lcom/kwad/sdk/reward/b/b/b/d;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Lcom/kwad/sdk/reward/c/a;

.field private d:Lcom/kwad/sdk/utils/g$a;

.field private e:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/b/b/d$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b/b/d$1;-><init>(Lcom/kwad/sdk/reward/b/b/b/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->d:Lcom/kwad/sdk/utils/g$a;

    new-instance v0, Lcom/kwad/sdk/reward/b/b/b/d$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b/b/d$2;-><init>(Lcom/kwad/sdk/reward/b/b/b/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->e:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/d;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b/b/d;)Lcom/kwad/sdk/reward/c/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/b/b/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/d;->e()V

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->c:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/utils/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_2e

    :cond_1e
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/d;->b:Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_2e

    :cond_2a
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    goto :goto_1a

    :goto_2e
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/d;->e:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/d;->d:Lcom/kwad/sdk/utils/g$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/utils/g$a;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_sound_switch:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->b:Landroid/widget/ImageView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/d;->e:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/d;->d:Lcom/kwad/sdk/utils/g$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/utils/g$a;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/d;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(ZZ)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_19
    return-void
.end method
