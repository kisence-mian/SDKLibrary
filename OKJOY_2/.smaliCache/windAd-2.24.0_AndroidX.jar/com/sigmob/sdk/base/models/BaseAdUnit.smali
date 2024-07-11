.class public Lcom/sigmob/sdk/base/models/BaseAdUnit;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

.field private e:I

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/common/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path: [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " ] calc [ "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " ] origin "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method

.method public static adUnit(Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    if-eqz v1, :cond_70

    new-instance v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;-><init>()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_6a

    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->f:J

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    iput-object v0, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->e:I

    iput-object p0, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    iput-object v0, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    iput-object v0, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->b:Ljava/lang/String;

    iput-object p1, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->j:Ljava/lang/String;

    iget-object p1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    iput-object p1, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->h:Ljava/lang/String;

    iget-object p1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    iput-object p1, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->g:Ljava/lang/String;

    iput-object p2, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    iput-object p0, v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;->i:Ljava/lang/String;

    iget-object p0, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/sigmob/sdk/base/common/j;->c:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result p1

    if-eq p0, p1, :cond_59

    iget-object p0, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result p1

    if-ne p0, p1, :cond_62

    :cond_59
    iget-object p0, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-eqz p0, :cond_62

    iget-object p0, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    :cond_62
    invoke-static {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    :try_end_65
    .catchall {:try_start_11 .. :try_end_65} :catchall_67

    move-object v0, v2

    goto :goto_70

    :catchall_67
    move-exception p0

    move-object v0, v2

    goto :goto_6b

    :catchall_6a
    move-exception p0

    :goto_6b
    const-string p1, "adUnit error"

    invoke-static {p1, p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static createFileRefTable()Lcom/sigmob/sdk/common/a/b$a;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/a/b$a$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/a/b$a$a;-><init>()V

    const-string v1, "file_reference"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a/b$a$a;->a(Ljava/lang/String;)Lcom/sigmob/sdk/common/a/b$a$a;

    const-string v1, "crid"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a/b$a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/a/b$a$a;

    const-string v3, "adslot_id"

    invoke-virtual {v0, v3, v2}, Lcom/sigmob/sdk/common/a/b$a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/a/b$a$a;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_md5"

    const-string v2, "string"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endcard_md5"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/sigmob/sdk/common/a/b$a$a;->a(Ljava/util/Map;)Lcom/sigmob/sdk/common/a/b$a$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a/b$a$a;->a()Lcom/sigmob/sdk/common/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static createTable()Lcom/sigmob/sdk/common/a/b$a;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/a/b$a$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/a/b$a$a;-><init>()V

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a/b$a$a;->a(Ljava/lang/String;)Lcom/sigmob/sdk/common/a/b$a$a;

    const-string v1, "crid"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a/b$a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/a/b$a$a;

    const-string v1, "adslot_id"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/a/b$a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/a/b$a$a;

    const-class v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1}, Lcom/sigmob/sdk/common/f/n;->b(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_35

    const-string v2, "serialVersionUID"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "$change"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TAG"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "macroCommon"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a/b$a$a;->a(Ljava/util/Map;)Lcom/sigmob/sdk/common/a/b$a$a;

    :cond_35
    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a/b$a$a;->a()Lcom/sigmob/sdk/common/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static createTrackersForUrls(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/common/e;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/sigmob/sdk/base/common/e;

    invoke-direct {v2, v1, p1, p2}, Lcom/sigmob/sdk/base/common/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/sigmob/sdk/base/common/e;->a(Ljava/lang/Integer;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_24
    return-object v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    return-object p0
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->e:I

    return p0
.end method

.method static synthetic f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static getSerialVersionUID()J
    .registers 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static getTAG()Ljava/lang/String;
    .registers 1

    const-string v0, "BaseAdUnit"

    return-object v0
.end method

.method static synthetic h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->k:Ljava/lang/String;

    return-object p0
.end method

.method private static j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_tracking()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->l:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;

    iget-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;->tracking_url:Ljava/util/List;

    iget-object v3, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;->tracking_event_type:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTrackingRetryNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->createTrackersForUrls(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->l:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;->tracking_event_type:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_35
    return-void
.end method


# virtual methods
.method public checkEndCardZipValid()Z
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_20

    :cond_13
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0
.end method

.method public checkVideoValid()Z
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_20

    :cond_13
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0
.end method

.method public getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    return-object v0
.end method

.method public getAdExpiredTime()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdTracker(Lcom/sigmob/sdk/base/common/a;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/common/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/common/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdTracker(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/common/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAd_source_channel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_source_logo()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "https://n.sigmob.cn/icon/sig_logo.png"

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAd_tracking()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAd_type()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->e:I

    return v0
.end method

.method public getAdslot_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCamp_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAreaSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;
    .registers 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    if-eqz v1, :cond_25

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;-><init>()V

    :goto_18
    iput-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->bottom:Ljava/lang/Float;

    iput-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->right:Ljava/lang/Float;

    iput-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->top:Ljava/lang/Float;

    iput-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->left:Ljava/lang/Float;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    move-result-object v0

    return-object v0

    :cond_25
    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    if-nez v1, :cond_2f

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting$Builder;-><init>()V

    goto :goto_18

    :cond_2f
    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/ClickAreaSetting;

    return-object v0

    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreate_time()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->f:J

    return-wide v0
.end method

.method public getCreativeResourceType()Lcom/sigmob/sdk/base/views/b$b;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->a:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-ne v0, v1, :cond_25

    :cond_22
    sget-object v0, Lcom/sigmob/sdk/base/views/b$b;->d:Lcom/sigmob/sdk/base/views/b$b;

    return-object v0

    :cond_25
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/sigmob/sdk/base/views/b$b;->b:Lcom/sigmob/sdk/base/views/b$b;

    return-object v0

    :cond_32
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/sigmob/sdk/base/views/b$b;->e:Lcom/sigmob/sdk/base/views/b$b;

    return-object v0

    :cond_3f
    sget-object v0, Lcom/sigmob/sdk/base/views/b$b;->d:Lcom/sigmob/sdk/base/views/b$b;

    return-object v0
.end method

.method public getCreativeType()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getCrid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEndCardDirPath()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/%s/"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndCardIndexPath()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "endcard.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndCardZipPath()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->h:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/%s.tgz"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndCard_OriginMD5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getEndcard_md5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->h:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndcard_url()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullClickOnVideo()Z
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getHtmlData()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1d

    goto :goto_28

    :cond_1d
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    return-object v0
.end method

.method public getInvisibleAdLabel()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLanding_page()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoad_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->m:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->m:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->m:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    return-object v0
.end method

.method public getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayMode()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplashAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplashFilePath()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/j;->g:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    :goto_2b
    invoke-static {v1}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    goto :goto_2b
.end method

.method public getSplashURL()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/j;->g:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    return-object v0

    :cond_19
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingRetryNum()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/%s.mp4"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTmpPath()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/%s.mp4.tmp"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideo_OriginMD5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_md5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->g:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideo_url()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getadslot_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a:Ljava/lang/String;

    return-object v0
.end method

.method public insertToDB(Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/b/c$a;->b()Lcom/sigmob/sdk/common/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/b/c$a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/a/c$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public isEndCardIndexExist()Z
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->a:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-ne v0, v1, :cond_30

    :cond_22
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardIndexPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoExist()Z
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoExist path :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isExist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return v1
.end method

.method public resourcePath()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->a:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-ne v0, v1, :cond_27

    :cond_22
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardIndexPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAd(Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->d:Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    return-void
.end method

.method public setAd_source_channel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->i:Ljava/lang/String;

    return-void
.end method

.method public setAd_type(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->e:I

    return-void
.end method

.method public setAdslot_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a:Ljava/lang/String;

    return-void
.end method

.method public setCamp_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->b:Ljava/lang/String;

    return-void
.end method

.method public setCreate_time(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->f:J

    return-void
.end method

.method public setCrid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->c:Ljava/lang/String;

    return-void
.end method

.method public setEndcard_md5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->h:Ljava/lang/String;

    return-void
.end method

.method public setLoad_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->k:Ljava/lang/String;

    return-void
.end method

.method public setMacroCommon(Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->m:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    return-void
.end method

.method public setRequest_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->j:Ljava/lang/String;

    return-void
.end method

.method public setVideo_md5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->g:Ljava/lang/String;

    return-void
.end method

.method public setadslot_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->a:Ljava/lang/String;

    return-void
.end method
