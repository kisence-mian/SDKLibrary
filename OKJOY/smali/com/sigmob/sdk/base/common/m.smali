.class public Lcom/sigmob/sdk/base/common/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

.field protected i:Ljava/lang/String;

.field protected j:I

.field private k:Z

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/videoAd/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->UNDEFINED:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/m;->h:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/base/common/m;->j:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/m;->l:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/m;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/m;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/m;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ad;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/utils/ad;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->a:Lcom/sigmob/sdk/base/common/utils/ab;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sigmob/sdk/base/common/utils/ab;

    const/4 v3, 0x0

    sget-object v4, Lcom/sigmob/sdk/base/common/utils/ab;->c:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ad;->a(Lcom/sigmob/sdk/base/common/utils/ab;[Lcom/sigmob/sdk/base/common/utils/ab;)Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v7

    new-instance v0, Lcom/sigmob/sdk/base/common/m$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/m$3;-><init>(Lcom/sigmob/sdk/base/common/m;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/sigmob/sdk/base/common/utils/ad;->a(Lcom/sigmob/sdk/base/common/utils/ae;)Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ad;->a()Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ad;->a(Z)Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ad;->b()Lcom/sigmob/sdk/base/common/utils/ac;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/common/m;
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/base/common/m;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/m;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/m;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_3a

    new-instance v0, Lcom/sigmob/sdk/base/common/m$2;

    invoke-direct {v0, p0, p2, p1, v6}, Lcom/sigmob/sdk/base/common/m$2;-><init>(Lcom/sigmob/sdk/base/common/m;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/sigmob/sdk/base/common/utils/ag;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ah;)V

    :goto_39
    return-void

    :cond_3a
    invoke-virtual {p0, p1, p2, v6, p4}, Lcom/sigmob/sdk/base/common/m;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_9
    const-string v0, "\u5f53\u524d\u6b63\u5728\u52aa\u529b\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u7b49"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_6a

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    move-object v0, p0

    move-object v2, p4

    move-object v3, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_60

    new-instance v0, Lcom/sigmob/sdk/base/c/e;

    new-instance v1, Lcom/sigmob/sdk/base/common/m$1;

    invoke-direct {v1, p0, p2, v6, p1}, Lcom/sigmob/sdk/base/common/m$1;-><init>(Lcom/sigmob/sdk/base/common/m;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v6, v1, v8}, Lcom/sigmob/sdk/base/c/e;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/c/f;I)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v1

    if-nez v1, :cond_57

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request queue is null"

    invoke-static {p2, v0, v1}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_57
    const-string v2, "GDTRequestConvert"

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/c/e;->b(Ljava/lang/Object;)Lcom/sigmob/volley/q;

    invoke-virtual {v1, v0}, Lcom/sigmob/volley/u;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    goto :goto_13

    :cond_60
    iput-object v6, p0, Lcom/sigmob/sdk/base/common/m;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, p2}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_13

    :catch_6a
    move-exception v0

    goto :goto_13
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub_category"

    invoke-interface {v5, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v5, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "9"

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v3

    move-object v1, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;)V
    .registers 3

    if-eqz p1, :cond_b

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->UNDEFINED:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    if-eq p1, v0, :cond_b

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->h:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/m;->k:Z

    :cond_b
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/m;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/f;ZLjava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->r:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz p5, :cond_f

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->C:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    :cond_f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_92

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    move-object v3, p3

    :goto_3e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    sget-object v2, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v2

    if-eq v1, v2, :cond_6c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/m;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object p3

    move-object v3, p3

    goto :goto_3e

    :cond_6c
    sget-object v0, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v0

    if-eq v1, v0, :cond_7c

    sget-object v0, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v0

    if-ne v1, v0, :cond_80

    :cond_7c
    invoke-virtual {p0, p2, p1, v3, v4}, Lcom/sigmob/sdk/base/common/m;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_80
    sget-object v0, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v0

    if-ne v1, v0, :cond_5b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/m;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_90
    move-object v3, p3

    goto :goto_3e

    :cond_92
    move-object p3, v0

    goto :goto_21
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "final_url"

    invoke-interface {v6, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5"

    const/4 v3, 0x1

    move-object v1, p2

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sub_category"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_deeplink"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "target_url"

    invoke-interface {v6, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "coordinate"

    invoke-interface {v6, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const-string v2, "5"

    const/4 v3, 0x1

    move-object v1, p3

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->e:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->f:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/m;->g:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->a:Ljava/util/Map;

    return-object v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/m;->k:Z

    return v0
.end method

.method public j()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->h:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    return-object v0
.end method
