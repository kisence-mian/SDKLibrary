.class public final Lcom/mintegral/msdk/mtgbanner/a/a;
.super Ljava/lang/Object;
.source "BannerController.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Lcom/mintegral/msdk/out/MTGBannerView;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/mintegral/msdk/out/BannerAdListener;

.field private k:Lcom/mintegral/msdk/base/entity/CampaignUnit;

.field private l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

.field private m:Lcom/mintegral/msdk/c/d;

.field private n:Lcom/mintegral/msdk/c/c;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/mintegral/msdk/mtgbanner/common/b/c;

.field private u:Lcom/mintegral/msdk/mtgbanner/common/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "BannerController"

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/out/MTGBannerView;Lcom/mintegral/msdk/out/BannerSize;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/a/a$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgbanner/a/a$1;-><init>(Lcom/mintegral/msdk/mtgbanner/a/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->t:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    .line 128
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/a/a$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgbanner/a/a$2;-><init>(Lcom/mintegral/msdk/mtgbanner/a/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->u:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    .line 182
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->e:Lcom/mintegral/msdk/out/MTGBannerView;

    .line 183
    if-eqz p2, :cond_21

    .line 184
    invoke-virtual {p2}, Lcom/mintegral/msdk/out/BannerSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->f:I

    .line 185
    invoke-virtual {p2}, Lcom/mintegral/msdk/out/BannerSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->g:I

    .line 187
    :cond_21
    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    .line 1221
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v1

    .line 1242
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->n:Lcom/mintegral/msdk/c/c;

    if-nez v2, :cond_3e

    .line 1243
    new-instance v2, Lcom/mintegral/msdk/c/c;

    invoke-direct {v2}, Lcom/mintegral/msdk/c/c;-><init>()V

    iput-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->n:Lcom/mintegral/msdk/c/c;

    .line 1245
    :cond_3e
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->n:Lcom/mintegral/msdk/c/c;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->d()V

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/a/a;Lcom/mintegral/msdk/base/entity/CampaignUnit;)Lcom/mintegral/msdk/base/entity/CampaignUnit;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->k:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->j:Lcom/mintegral/msdk/out/BannerAdListener;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/a/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/a/a;Z)Z
    .registers 2

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->s:Z

    return p1
.end method

.method private static b(I)I
    .registers 3

    .prologue
    const/16 v1, 0xb4

    const/16 v0, 0xa

    .line 255
    if-lez p0, :cond_9

    .line 256
    if-ge p0, v0, :cond_a

    move p0, v0

    .line 262
    :cond_9
    :goto_9
    return p0

    .line 258
    :cond_a
    if-le p0, v1, :cond_9

    move p0, v1

    .line 259
    goto :goto_9
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgbanner/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->j:Lcom/mintegral/msdk/out/BannerAdListener;

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->j:Lcom/mintegral/msdk/out/BannerAdListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/BannerAdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 355
    :cond_9
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->b()V

    .line 358
    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgbanner/a/a;)I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->g:I

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/mtgbanner/a/a;)I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->f:I

    return v0
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->m:Lcom/mintegral/msdk/c/d;

    .line 227
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->m:Lcom/mintegral/msdk/c/d;

    if-nez v1, :cond_20

    .line 228
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->m:Lcom/mintegral/msdk/c/d;

    .line 230
    :cond_20
    iget v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->i:I

    if-nez v1, :cond_30

    .line 231
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->a()I

    move-result v1

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(I)I

    move-result v1

    iput v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->h:I

    .line 233
    :cond_30
    iget v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->d:I

    if-nez v1, :cond_49

    .line 234
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->b()I

    move-result v1

    if-ne v1, v0, :cond_4a

    :goto_3c
    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->c:Z

    .line 235
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    if-eqz v0, :cond_49

    .line 236
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->c:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Z)V

    .line 239
    :cond_49
    return-void

    .line 234
    :cond_4a
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method static synthetic e(Lcom/mintegral/msdk/mtgbanner/a/a;)I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->h:I

    return v0
.end method

.method private e()V
    .registers 7

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->q:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->r:Z

    if-nez v0, :cond_9

    .line 329
    :cond_8
    :goto_8
    return-void

    .line 314
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->k:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    if-eqz v0, :cond_44

    .line 315
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    if-nez v0, :cond_22

    .line 316
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->e:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->t:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->c:Z

    iget-object v5, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->m:Lcom/mintegral/msdk/c/d;

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/mtgbanner/common/c/c;-><init>(Lcom/mintegral/msdk/out/MTGBannerView;Lcom/mintegral/msdk/mtgbanner/common/b/c;Ljava/lang/String;ZLcom/mintegral/msdk/c/d;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    .line 318
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->o:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Z)V

    .line 319
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->p:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c(Z)V

    .line 320
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->c:Z

    iget v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(ZI)V

    .line 321
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->k:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 328
    :goto_40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->r:Z

    goto :goto_8

    .line 323
    :cond_44
    const-string v0, "banner show failed because campain is exception"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Ljava/lang/String;)V

    goto :goto_40
.end method

.method static synthetic f(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/mtgbanner/common/b/b;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->u:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    return-object v0
.end method

.method private f()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 384
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->e:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_60

    .line 387
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->o:Z

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->p:Z

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->s:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->e:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/util/c;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 388
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/mtgbanner/common/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->h:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-direct {v3, v4, v5}, Lcom/mintegral/msdk/mtgbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->u:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    .line 393
    :goto_49
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->o:Z

    if-nez v0, :cond_60

    .line 394
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v6, v6}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    .line 395
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Ljava/lang/String;)V

    .line 398
    :cond_60
    return-void

    .line 390
    :cond_61
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v6, v6}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    goto :goto_49
.end method

.method static synthetic g(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/base/entity/CampaignUnit;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->k:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->f()V

    .line 402
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    if-eqz v0, :cond_15

    .line 403
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->o:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Z)V

    .line 404
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->p:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c(Z)V

    .line 406
    :cond_15
    return-void
.end method

.method static synthetic h(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/MTGBannerView;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->e:Lcom/mintegral/msdk/out/MTGBannerView;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/mtgbanner/a/a;)Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->r:Z

    return v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/mtgbanner/a/a;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->e()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->q:Z

    .line 285
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->j:Lcom/mintegral/msdk/out/BannerAdListener;

    if-eqz v0, :cond_a

    .line 286
    iput-object v3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->j:Lcom/mintegral/msdk/out/BannerAdListener;

    .line 289
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->u:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    if-eqz v0, :cond_10

    .line 290
    iput-object v3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->u:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    .line 292
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->t:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_16

    .line 293
    iput-object v3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->t:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    .line 295
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->e:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_1c

    .line 296
    iput-object v3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->e:Lcom/mintegral/msdk/out/MTGBannerView;

    .line 298
    :cond_1c
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    .line 299
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->b()V

    .line 301
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    if-eqz v0, :cond_3f

    .line 302
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a()V

    .line 304
    :cond_3f
    return-void
.end method

.method public final a(I)V
    .registers 3

    .prologue
    .line 202
    invoke-static {p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->i:I

    .line 203
    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->i:I

    iput v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->h:I

    .line 208
    return-void
.end method

.method public final a(IIII)V
    .registers 6

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    if-eqz v0, :cond_9

    .line 410
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->l:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(IIII)V

    .line 412
    :cond_9
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/out/BannerAdListener;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->j:Lcom/mintegral/msdk/out/BannerAdListener;

    .line 281
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/out/BannerSize;)V
    .registers 3

    .prologue
    .line 192
    if-eqz p1, :cond_e

    .line 193
    invoke-virtual {p1}, Lcom/mintegral/msdk/out/BannerSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->f:I

    .line 194
    invoke-virtual {p1}, Lcom/mintegral/msdk/out/BannerSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->g:I

    .line 196
    :cond_e
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 266
    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->f:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->g:I

    if-gtz v0, :cond_14

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->j:Lcom/mintegral/msdk/out/BannerAdListener;

    if-eqz v0, :cond_13

    .line 268
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->j:Lcom/mintegral/msdk/out/BannerAdListener;

    const-string v1, "banner load failed because params are exception"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/BannerAdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 277
    :cond_13
    :goto_13
    return-void

    .line 272
    :cond_14
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    .line 273
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->a(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->u:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    .line 275
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->u:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    goto :goto_13
.end method

.method public final a(Z)V
    .registers 3

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->c:Z

    .line 212
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->d:I

    .line 216
    return-void

    .line 212
    :cond_8
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->q:Z

    if-eqz v0, :cond_5

    .line 370
    :goto_4
    return-void

    .line 364
    :cond_5
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->f()V

    .line 366
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->d()V

    .line 367
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    .line 369
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->u:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    goto :goto_4
.end method

.method public final b(Z)V
    .registers 2

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->o:Z

    .line 374
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->g()V

    .line 375
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->e()V

    .line 376
    return-void
.end method

.method public final c(Z)V
    .registers 2

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a;->p:Z

    .line 380
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/a/a;->g()V

    .line 381
    return-void
.end method
