.class public Lcom/sigmob/sdk/videoAd/a;
.super Lcom/sigmob/sdk/base/common/m;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final serialVersionUID:J = 0x2L


# instance fields
.field protected k:Lcom/sigmob/sdk/videoAd/g;

.field protected l:Lcom/sigmob/sdk/videoAd/g;

.field protected m:Z

.field protected n:I

.field protected o:I

.field protected p:F

.field protected q:I

.field protected r:I

.field protected s:Z

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lcom/sigmob/sdk/videoAd/d;

.field private x:I

.field private y:Z

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/videoAd/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/m;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->n:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->o:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->p:F

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->q:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->t:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->v:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->w:Lcom/sigmob/sdk/videoAd/d;

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoAd/a;->s:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->z:Ljava/util/List;

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoAd/a;->m:Z

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_26

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    const-string v3, "%%VIDEO_EVENT%%"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_26
    move-object v0, v1

    goto :goto_6
.end method

.method private a(Ljava/util/List;FLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/sigmob/sdk/videoAd/e;

    sget-object v4, Lcom/sigmob/sdk/base/common/k;->a:Lcom/sigmob/sdk/base/common/k;

    invoke-direct {v3, v4, v0, p2, p3}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;FLjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_23
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/videoAd/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/sigmob/sdk/videoAd/e;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/sigmob/sdk/videoAd/e;-><init>(Ljava/lang/String;F)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/videoAd/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public static c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/a;
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/sigmob/sdk/videoAd/a;

    invoke-direct {v3}, Lcom/sigmob/sdk/videoAd/a;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->d(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/videoAd/a;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    if-ne v0, v1, :cond_af

    move v0, v1

    :goto_18
    invoke-direct {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->c(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->f(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/sigmob/sdk/base/common/q;->e:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v4

    if-eq v0, v4, :cond_b2

    :goto_3a
    invoke-virtual {v3, v1}, Lcom/sigmob/sdk/videoAd/a;->b(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getCloseDialogSetting()Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    move-result-object v2

    if-eqz v2, :cond_b4

    new-instance v0, Lcom/sigmob/sdk/videoAd/d;

    iget-object v4, v2, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->title:Ljava/lang/String;

    iget-object v5, v2, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->body_text:Ljava/lang/String;

    iget-object v6, v2, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->cancel_button_text:Ljava/lang/String;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->close_button_text:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6, v2}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_58
    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/videoAd/d;)V

    if-eqz v1, :cond_ae

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->enable_exit_on_video_close:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->a(Z)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_percent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->h(I)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->j(I)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->endcard_close_position:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->b(I)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->video_close_position:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->c(I)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->mute_postion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->d(I)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->finished:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->a(F)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->if_mute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->e(I)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/videoAd/a;->g(I)V

    :cond_ae
    return-object v3

    :cond_af
    move v0, v2

    goto/16 :goto_18

    :cond_b2
    move v1, v2

    goto :goto_3a

    :cond_b4
    new-instance v0, Lcom/sigmob/sdk/videoAd/d;

    invoke-static {}, Lcom/sigmob/sdk/base/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/base/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sigmob/sdk/base/b;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sigmob/sdk/base/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58
.end method

.method private c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->m:Z

    return-void
.end method

.method private d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 12

    const/16 v5, 0x400

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v8

    iget-object v0, v8, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    sget-object v3, Lcom/sigmob/sdk/base/views/e;->b:Lcom/sigmob/sdk/base/views/e;

    :goto_13
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->resourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeResourceType()Lcom/sigmob/sdk/base/views/f;

    move-result-object v2

    new-instance v0, Lcom/sigmob/sdk/base/views/d;

    const/16 v4, 0x2d0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/views/d;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/views/f;Lcom/sigmob/sdk/base/views/e;II)V

    new-instance v3, Lcom/sigmob/sdk/videoAd/g;

    const/16 v4, 0x300

    iget-object v1, v8, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v8, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    iget-object v8, v8, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/sigmob/sdk/videoAd/g;-><init>(IIILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/views/d;)V

    iput-object v3, p0, Lcom/sigmob/sdk/videoAd/a;->l:Lcom/sigmob/sdk/videoAd/g;

    :cond_36
    return-void

    :cond_37
    sget-object v3, Lcom/sigmob/sdk/base/views/e;->c:Lcom/sigmob/sdk/base/views/e;

    goto :goto_13
.end method

.method private z()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->l:Lcom/sigmob/sdk/videoAd/g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->x:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->x:I

    mul-int/lit16 v0, v0, 0x3e8

    if-le v0, p1, :cond_b

    :cond_a
    :goto_a
    return p1

    :cond_b
    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->x:I

    mul-int/lit16 p1, v0, 0x3e8

    goto :goto_a
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(II)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/j;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_3a

    if-ltz p1, :cond_3a

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/sigmob/sdk/videoAd/e;

    const-string v2, ""

    invoke-direct {v3, v2, v0}, Lcom/sigmob/sdk/videoAd/e;-><init>(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1b
    if-ge v2, v4, :cond_2b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videoAd/e;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/e;)I

    move-result v5

    if-lez v5, :cond_2d

    :cond_2b
    move-object v0, v1

    :goto_2c
    return-object v0

    :cond_2d
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/e;->j()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_3a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2c
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->p:F

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;)V
    .registers 3

    if-eqz p1, :cond_b

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->UNDEFINED:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    if-eq p1, v0, :cond_b

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->h:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->y:Z

    :cond_b
    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoAd/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->w:Lcom/sigmob/sdk/videoAd/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/videoAd/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fractionalTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->z:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->v:Z

    return-void
.end method

.method public a(ZIILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    return-void
.end method

.method public b(I)V
    .registers 3

    if-lez p1, :cond_7

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->n:I

    :cond_7
    return-void
.end method

.method public b(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/a;->s:Z

    return-void
.end method

.method public c(I)V
    .registers 3

    if-lez p1, :cond_7

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->j:I

    :cond_7
    return-void
.end method

.method public c(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public d(I)V
    .registers 3

    if-lez p1, :cond_7

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->o:I

    :cond_7
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->u:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->e:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->q:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->f:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->x:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/a;->g:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public h(I)V
    .registers 3

    const/16 v0, 0x64

    if-gez p1, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->r:I

    :goto_7
    return-void

    :cond_8
    if-le p1, v0, :cond_d

    iput v0, p0, Lcom/sigmob/sdk/videoAd/a;->r:I

    goto :goto_7

    :cond_d
    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->r:I

    goto :goto_7
.end method

.method public i(I)I
    .registers 5

    int-to-float v0, p1

    iget v1, p0, Lcom/sigmob/sdk/videoAd/a;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public j()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->h:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    return-object v0
.end method

.method public j(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/a;->t:I

    return-void
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->x:I

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->v:Z

    return v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->n:I

    return v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->j:I

    return v0
.end method

.method public o()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->o:I

    return v0
.end method

.method public p()F
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->p:F

    return v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->u:I

    return v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->q:I

    return v0
.end method

.method public s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->s:Z

    return v0
.end method

.method public t()Lcom/sigmob/sdk/videoAd/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->w:Lcom/sigmob/sdk/videoAd/d;

    return-object v0
.end method

.method public u()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public v()Lcom/sigmob/sdk/videoAd/g;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/a;->l:Lcom/sigmob/sdk/videoAd/g;

    return-object v0
.end method

.method public w()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->r:I

    return v0
.end method

.method public x()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/a;->m:Z

    return v0
.end method

.method public y()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/a;->t:I

    return v0
.end method
