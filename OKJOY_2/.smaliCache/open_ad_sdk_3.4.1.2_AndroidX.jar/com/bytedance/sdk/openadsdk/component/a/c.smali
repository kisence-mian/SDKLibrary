.class Lcom/bytedance/sdk/openadsdk/component/a/c;
.super Lcom/bytedance/sdk/openadsdk/core/e/a;
.source "TTFeedAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;
.implements Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

.field b:Z

.field c:Z

.field d:I

.field e:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field f:I

.field private n:[I

.field private o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

.field private p:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

.field private q:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/e/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 39
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->n:[I

    .line 47
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 48
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    .line 53
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->q:Z

    .line 57
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->f:I

    .line 58
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 59
    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->d:I

    .line 61
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(I)V

    .line 62
    return-void
.end method

.method static synthetic A(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic B(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic C(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic D(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic E(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic F(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic G(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic H(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic I(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/o;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->g:Lcom/bytedance/sdk/openadsdk/core/o;

    return-object p0
.end method

.method private a(I)V
    .registers 5

    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result p1

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_11

    .line 137
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 138
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    goto :goto_3e

    .line 139
    :cond_11
    const/4 v1, 0x1

    if-ne v1, p1, :cond_21

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 140
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 141
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    goto :goto_3e

    .line 142
    :cond_21
    const/4 v2, 0x2

    if-ne v2, p1, :cond_39

    .line 143
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 144
    :cond_34
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 145
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    goto :goto_3e

    .line 147
    :cond_39
    const/4 v0, 0x4

    if-ne v0, p1, :cond_3e

    .line 148
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    .line 150
    :cond_3e
    :goto_3e
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/a/c;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/o;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->g:Lcom/bytedance/sdk/openadsdk/core/o;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/a/c;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->q:Z

    return p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private i()Z
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->k()I

    move-result v0

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 116
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 115
    :goto_1f
    return v1
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic s(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic t(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic u(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic v(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic w(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic x(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic y(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic z(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method


# virtual methods
.method public a(II)V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_7

    .line 301
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoError(II)V

    .line 303
    :cond_7
    return-void
.end method

.method public a(JJ)V
    .registers 6

    .line 337
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_7

    .line 338
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onProgressUpdate(JJ)V

    .line 340
    :cond_7
    return-void
.end method

.method public c()V
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_7

    .line 331
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 333
    :cond_7
    return-void
.end method

.method public d()V
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_7

    .line 345
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 347
    :cond_7
    return-void
.end method

.method public d_()V
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_7

    .line 311
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 313
    :cond_7
    return-void
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    return-object v0
.end method

.method public e_()V
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_7

    .line 321
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 323
    :cond_7
    return-void
.end method

.method public f()V
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_7

    .line 294
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 296
    :cond_7
    return-void
.end method

.method public g()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->q:Z

    return v0
.end method

.method public getAdView()Landroid/view/View;
    .registers 11

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    if-nez v0, :cond_b

    goto/16 :goto_84

    .line 72
    :cond_b
    nop

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 75
    :try_start_12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->i:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->f:I

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ZZLjava/lang/String;ZZ)V

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->i()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 77
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/a/c$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/c;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdClickListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V

    .line 86
    :cond_34
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/a/c$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/a/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/c;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 96
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V

    .line 97
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V

    .line 98
    const/4 v2, 0x5

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->f:I

    if-ne v2, v3, :cond_58

    .line 99
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->b:Z

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    move-result v2

    goto :goto_54

    :cond_52
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    :goto_54
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    goto :goto_5d

    .line 101
    :cond_58
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->c:Z

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 103
    :goto_5d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->d:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6a} :catch_6b

    .line 106
    goto :goto_6f

    .line 104
    :catch_6b
    move-exception v0

    .line 105
    move-object v0, v1

    goto :goto_6f

    .line 73
    :cond_6e
    move-object v0, v1

    .line 108
    :goto_6f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->h()Z

    move-result v2

    if-eqz v2, :cond_83

    if-eqz v0, :cond_83

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JZZ)Z

    move-result v2

    if-nez v2, :cond_82

    goto :goto_83

    .line 111
    :cond_82
    return-object v0

    .line 109
    :cond_83
    :goto_83
    return-object v1

    .line 71
    :cond_84
    :goto_84
    return-object v1
.end method

.method public getAdViewHeight()I
    .registers 5

    .line 184
    const/16 v0, 0x2d0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->n:[I

    if-nez v1, :cond_e

    .line 185
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->n:[I

    .line 187
    :cond_e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->n:[I

    if-eqz v1, :cond_1b

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_17

    goto :goto_1b

    .line 190
    :cond_17
    const/4 v2, 0x1

    aget v0, v1, v2
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    return v0

    .line 188
    :cond_1b
    :goto_1b
    return v0

    .line 191
    :catchall_1c
    move-exception v1

    .line 192
    const-string v2, "TTFeedAdImpl"

    const-string v3, "getAdViewHeight error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    return v0
.end method

.method public getAdViewWidth()I
    .registers 5

    .line 168
    const/16 v0, 0x500

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->n:[I

    if-nez v1, :cond_e

    .line 169
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->n:[I

    .line 171
    :cond_e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->n:[I

    if-eqz v1, :cond_1b

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_17

    goto :goto_1b

    .line 174
    :cond_17
    const/4 v2, 0x0

    aget v0, v1, v2
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    return v0

    .line 172
    :cond_1b
    :goto_1b
    return v0

    .line 175
    :catchall_1c
    move-exception v1

    .line 176
    const-string v2, "TTFeedAdImpl"

    const-string v3, "getAdViewWidth error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    return v0
.end method

.method public getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->p:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    if-nez v0, :cond_15

    .line 203
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/a/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->p:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 288
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->p:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    return-object v0
.end method

.method public getVideoDuration()D
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->e()D

    move-result-wide v0

    return-wide v0

    .line 162
    :cond_17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method h()Z
    .registers 2

    .line 120
    nop

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->h:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 122
    const/4 v0, 0x1

    goto :goto_c

    .line 121
    :cond_b
    const/4 v0, 0x0

    .line 124
    :goto_c
    return v0
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c;->o:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    .line 155
    return-void
.end method
