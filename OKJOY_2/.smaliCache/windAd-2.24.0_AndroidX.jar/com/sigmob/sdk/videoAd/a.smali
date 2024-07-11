.class public Lcom/sigmob/sdk/videoAd/a;
.super Lcom/sigmob/sdk/base/common/f;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final serialVersionUID:J = 0x2L


# instance fields
.field protected e:Z

.field protected f:I

.field protected g:I

.field protected h:F

.field protected i:I

.field protected j:I

.field protected k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/sigmob/sdk/videoAd/d;

.field private p:I

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videoAd/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/f;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->h:F

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->l:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->o:Lcom/sigmob/sdk/videoAd/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->k:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/a;->q:Ljava/util/List;

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->e:Z

    return-void
.end method

.method public static b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/a;
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/videoAd/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/videoAd/a;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_16

    move v1, v3

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->c(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->f(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v4

    if-eq v1, v4, :cond_3a

    move v2, v3

    :cond_3a
    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/a;->b(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object p0

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/SDKConfig;->getCloseDialogSetting()Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/videoAd/d;

    if-eqz v1, :cond_59

    iget-object v3, v1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    iget-object v5, v1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    :cond_59
    invoke-static {}, Lcom/sigmob/sdk/base/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sigmob/sdk/base/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sigmob/sdk/base/b;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6c
    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/videoAd/d;)V

    if-eqz p0, :cond_c2

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->a(Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->h(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->j(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->b(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->c(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->d(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->a(F)V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->e(I)V

    iget-object p0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/videoAd/a;->g(I)V

    :cond_c2
    return-object v0
.end method

.method public static c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/g;
    .registers 14

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    sget-object v1, Lcom/sigmob/sdk/base/views/b$a;->b:Lcom/sigmob/sdk/base/views/b$a;

    goto :goto_14

    :cond_12
    sget-object v1, Lcom/sigmob/sdk/base/views/b$a;->c:Lcom/sigmob/sdk/base/views/b$a;

    :goto_14
    move-object v5, v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->resourcePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeResourceType()Lcom/sigmob/sdk/base/views/b$b;

    move-result-object v4

    new-instance v12, Lcom/sigmob/sdk/base/views/b;

    const/16 v6, 0x2d0

    const/16 v7, 0x400

    move-object v2, v12

    invoke-direct/range {v2 .. v7}, Lcom/sigmob/sdk/base/views/b;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/views/b$b;Lcom/sigmob/sdk/base/views/b$a;II)V

    new-instance p0, Lcom/sigmob/sdk/videoAd/g;

    const/16 v7, 0x300

    const/16 v8, 0x400

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    iget-object v11, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/sigmob/sdk/videoAd/g;-><init>(IIILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/views/b;)V

    return-object p0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->p:I

    if-eqz v0, :cond_c

    mul-int/lit16 v1, v0, 0x3e8

    if-le v1, p1, :cond_9

    goto :goto_c

    :cond_9
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_c
    :goto_c
    return p1
.end method

.method public a(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/common/e;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_38

    if-ltz p1, :cond_38

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/videoAd/e;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/videoAd/e;-><init>(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, p1, :cond_37

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/a;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/videoAd/e;

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/e;)I

    move-result v3

    if-lez v3, :cond_2b

    goto :goto_37

    :cond_2b
    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/e;->i()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_37
    :goto_37
    return-object p2

    :cond_38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->h:F

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 3

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoAd/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->o:Lcom/sigmob/sdk/videoAd/d;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videoAd/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fractionalTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->q:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->n:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    if-lez p1, :cond_7

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->f:I

    :cond_7
    return-void
.end method

.method public b(Landroid/content/Context;I)V
    .registers 3

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->k:Z

    return-void
.end method

.method public c()Lcom/sigmob/sdk/common/a$a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->c:Lcom/sigmob/sdk/common/a$a;

    return-object v0
.end method

.method public c(I)V
    .registers 3

    if-lez p1, :cond_7

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->d:I

    :cond_7
    return-void
.end method

.method public c(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->p:I

    return v0
.end method

.method public d(I)V
    .registers 3

    if-lez p1, :cond_7

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->g:I

    :cond_7
    return-void
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->m:I

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->n:Z

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->f:I

    return v0
.end method

.method public f(I)V
    .registers 2

    if-eqz p1, :cond_4

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->i:I

    :cond_4
    return-void
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->d:I

    return v0
.end method

.method public g(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->p:I

    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->g:I

    return v0
.end method

.method public h(I)V
    .registers 3

    if-gez p1, :cond_6

    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->j:I

    goto :goto_c

    :cond_6
    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->j:I

    :goto_c
    return-void
.end method

.method public i()F
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->h:F

    return v0
.end method

.method public i(I)I
    .registers 4

    int-to-float p1, p1

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->j:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->m:I

    return v0
.end method

.method public j(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->l:I

    return-void
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->i:I

    return v0
.end method

.method public l()Lcom/sigmob/sdk/videoAd/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->o:Lcom/sigmob/sdk/videoAd/d;

    return-object v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->j:I

    return v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->l:I

    return v0
.end method
