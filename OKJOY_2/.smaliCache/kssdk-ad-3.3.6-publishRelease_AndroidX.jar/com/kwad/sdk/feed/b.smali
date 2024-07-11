.class public Lcom/kwad/sdk/feed/b;
.super Lcom/kwad/sdk/api/core/AbstractKsFeedAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/feed/b$b;,
        Lcom/kwad/sdk/feed/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;

.field private b:Lcom/kwad/sdk/feed/widget/base/a;

.field private c:Lcom/kwad/sdk/feed/widget/base/a;

.field private d:Z

.field private e:I

.field private f:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private g:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private h:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/kwad/sdk/feed/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;IZ)V
    .registers 6

    invoke-direct {p0}, Lcom/kwad/sdk/api/core/AbstractKsFeedAd;-><init>()V

    new-instance v0, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->dataFlowAutoStart(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/b;->h:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    iput-object p1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v0, 0x1

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/feed/b;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-boolean p3, p0, Lcom/kwad/sdk/feed/b;->d:Z

    iput p2, p0, Lcom/kwad/sdk/feed/b;->e:I

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 4

    invoke-static {p1}, Lcom/kwad/sdk/core/config/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/kwad/sdk/feed/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/kwad/sdk/feed/b;->d:Z

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/feed/widget/l;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->h:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/feed/widget/l;->setVideoPlayConfig(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    invoke-static {v1}, Lcom/kwad/sdk/feed/FeedType;->fromInt(I)Lcom/kwad/sdk/feed/FeedType;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/feed/a;->a(Landroid/content/Context;Lcom/kwad/sdk/feed/FeedType;I)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/b;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/b;->c:Lcom/kwad/sdk/feed/widget/base/a;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/b;Lcom/kwad/sdk/feed/widget/base/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/b;->a(Lcom/kwad/sdk/feed/widget/base/a;)V

    return-void
.end method

.method private a(Lcom/kwad/sdk/feed/widget/base/a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/kwad/sdk/feed/b$2;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/feed/b$2;-><init>(Lcom/kwad/sdk/feed/b;Lcom/kwad/sdk/feed/widget/base/a;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/a;->setAdClickListener(Lcom/kwad/sdk/feed/widget/base/a$a;)V

    return-void
.end method

.method private a()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adStyleInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo;->feedAdInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;->templateConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/kwad/sdk/feed/b;)Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/b;->a:Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/feed/b$b;)Lcom/kwad/sdk/feed/widget/base/a;
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Lcom/kwad/sdk/feed/b$b;->a()V

    :cond_9
    invoke-direct {p0, v0}, Lcom/kwad/sdk/feed/b;->a(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/feed/b;->c:Lcom/kwad/sdk/feed/widget/base/a;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/b;->c:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/feed/widget/base/a;->setMargin(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->c:Lcom/kwad/sdk/feed/widget/base/a;

    if-eqz v0, :cond_50

    instance-of v1, v0, Lcom/kwad/sdk/feed/widget/l;

    if-eqz v1, :cond_36

    check-cast v0, Lcom/kwad/sdk/feed/widget/l;

    iget v1, p0, Lcom/kwad/sdk/feed/b;->e:I

    if-lez v1, :cond_2b

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/l;->setWidth(I)V

    :cond_2b
    iget-object v1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/feed/b$1;

    invoke-direct {v2, p0, p1}, Lcom/kwad/sdk/feed/b$1;-><init>(Lcom/kwad/sdk/feed/b;Lcom/kwad/sdk/feed/b$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/feed/widget/l$a;)V

    goto :goto_55

    :cond_36
    iget-object v1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->c:Lcom/kwad/sdk/feed/widget/base/a;

    instance-of v1, v0, Lcom/kwad/sdk/feed/widget/a;

    if-eqz v1, :cond_48

    check-cast v0, Lcom/kwad/sdk/feed/widget/a;

    iget-object v1, p0, Lcom/kwad/sdk/feed/b;->h:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/a;->a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    :cond_48
    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->c:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/feed/b;->a(Lcom/kwad/sdk/feed/widget/base/a;)V

    if-eqz p1, :cond_55

    goto :goto_52

    :cond_50
    if-eqz p1, :cond_55

    :goto_52
    invoke-interface {p1}, Lcom/kwad/sdk/feed/b$b;->a()V

    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->c:Lcom/kwad/sdk/feed/widget/base/a;

    return-object p1
.end method

.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->v(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    return v0
.end method

.method public getFeedView2(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->c:Lcom/kwad/sdk/feed/widget/base/a;

    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/b;->a(Landroid/content/Context;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    goto :goto_27

    :cond_12
    invoke-virtual {v0}, Lcom/kwad/sdk/feed/widget/base/a;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/a;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    if-eqz p1, :cond_42

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    instance-of v0, p1, Lcom/kwad/sdk/feed/widget/a;

    if-eqz v0, :cond_3d

    check-cast p1, Lcom/kwad/sdk/feed/widget/a;

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->h:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/a;->a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    :cond_3d
    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/b;->a(Lcom/kwad/sdk/feed/widget/base/a;)V

    :cond_42
    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->b:Lcom/kwad/sdk/feed/widget/base/a;

    return-object p1
.end method

.method public setAdInteractionListener(Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/b;->a:Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;

    return-void
.end method

.method public setBidEcpm(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:I

    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public setVideoPlayConfig(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .registers 3

    if-eqz p1, :cond_13

    iput-object p1, p0, Lcom/kwad/sdk/feed/b;->h:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v0, 0x2

    goto :goto_11

    :cond_e
    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v0, 0x1

    :goto_11
    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    :cond_13
    return-void
.end method

.method public setVideoSoundEnable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/b;->h:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->setVideoSoundEnable(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->h:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v0, 0x2

    goto :goto_14

    :cond_11
    iget-object p1, p0, Lcom/kwad/sdk/feed/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v0, 0x1

    :goto_14
    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    return-void
.end method
