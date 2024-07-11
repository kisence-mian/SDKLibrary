.class public Lcom/sigmob/sdk/base/common/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/s$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/pm/PackageInfo;)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityBase;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityBase;-><init>()V

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityBase;->setAc_type(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_f
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_2b

    goto :goto_2c

    :catchall_2b
    move-exception v2

    :goto_2c
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "package_name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "update"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "app_version"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityBase;->setOptions(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityBase;->commit()V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/volley/j;Lcom/sigmob/sdk/base/common/s$a;)V
    .registers 9

    new-instance p4, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    invoke-direct {p4}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;-><init>()V

    const-string v0, "13"

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setUrl(Ljava/lang/String;)V

    if-eqz p0, :cond_85

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->b()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_18

    const-string p1, "1"

    goto :goto_1a

    :cond_18
    const-string p1, "0"

    :goto_1a
    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setRetry(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setTimestamp(Ljava/lang/String;)V

    :cond_40
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setSource(Ljava/lang/String;)V

    if-eqz p3, :cond_85

    iget-object p0, p3, Lcom/sigmob/volley/j;->b:[B

    if-eqz p0, :cond_55

    iget-object p0, p3, Lcom/sigmob/volley/j;->b:[B

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    goto :goto_56

    :cond_55
    const/4 p0, 0x0

    :goto_56
    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setResponse(Ljava/lang/String;)V

    iget p0, p3, Lcom/sigmob/volley/j;->a:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setHttp_code(Ljava/lang/String;)V

    iget-wide p0, p3, Lcom/sigmob/volley/j;->f:J

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setTime_spend(Ljava/lang/String;)V

    iget-object p0, p3, Lcom/sigmob/volley/j;->c:Ljava/util/Map;

    const-string p1, "Content-Type"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setContent_type(Ljava/lang/String;)V

    iget-object p0, p3, Lcom/sigmob/volley/j;->c:Ljava/util/Map;

    const-string p1, "Content-Length"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setContent_length(Ljava/lang/String;)V

    :cond_85
    invoke-static {p2, p4}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/mta/PointEntitySigmob;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->commit()V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/volley/t;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    iget-object v1, p3, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/j;

    goto :goto_7

    :cond_6
    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_a

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/sigmob/sdk/base/common/s$3;

    invoke-direct {v0, p3}, Lcom/sigmob/sdk/base/common/s$3;-><init>(Lcom/sigmob/volley/t;)V

    :goto_f
    invoke-static {p0, p1, p2, v1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/volley/j;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityClick;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityClick;-><init>()V

    const-string v1, "102"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setCategory(Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, p2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, p2, v5

    const-string v1, "{x:%f,y:%f}"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setLocation(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setClick_duration(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setPressure(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setTouchSize(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setTouchType(Ljava/lang/String;)V

    if-eqz p3, :cond_65

    const-string p1, "1"

    goto :goto_67

    :cond_65
    const-string p1, "0"

    :goto_67
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setIs_valid_click(Ljava/lang/String;)V

    if-eqz p0, :cond_73

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->setLoad_id(Ljava/lang/String;)V

    :cond_73
    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityClick;->commit()V

    return-void
.end method

.method private static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/mta/PointEntitySigmob;)V
    .registers 3

    if-eqz p0, :cond_7e

    :try_start_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setCampaign_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setCreative_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setLoad_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPlay_mode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setCreative_type(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setPrice(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setProduct_id(Ljava/lang/String;)V

    :cond_64
    invoke-virtual {p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->getTarget_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setTarget_url(Ljava/lang/String;)V

    :cond_75
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAd_source_channel(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_2 .. :try_end_7c} :catchall_7d

    goto :goto_7e

    :catchall_7d
    move-exception p0

    :cond_7e
    :goto_7e
    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/common/s$1;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/common/s$1;-><init>(Ljava/lang/String;)V

    const-string p1, "target_url"

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/sigmob/sdk/common/b/c$a;->b()Lcom/sigmob/sdk/common/b/c$a;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/common/s$4;

    invoke-direct {v1, p1, p3, p0, p2}, Lcom/sigmob/sdk/base/common/s$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/b/c$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;-><init>()V

    const-string v1, "30"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAc_type(Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/volley/toolbox/d;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setIssuccess(Ljava/lang/String;)V

    if-eqz p3, :cond_18

    const-string p3, "1"

    goto :goto_1a

    :cond_18
    const-string p3, "0"

    :goto_1a
    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setIscached(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sigmob/volley/toolbox/d;->f:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setDuration(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sigmob/volley/toolbox/d;->e:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setFile_size(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p3, 0x2

    invoke-static {p0, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setFile_name(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setError_message(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/mta/PointEntitySigmob;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityCommon;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;-><init>()V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    move-result-object p0

    if-eqz p4, :cond_9

    invoke-interface {p4, p0}, Lcom/sigmob/sdk/base/common/s$a;->a(Ljava/lang/Object;)V

    :cond_9
    invoke-static {p3, p0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/mta/PointEntitySigmob;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setAc_type(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/mta/PointEntitySigmob;)V

    if-eqz p2, :cond_10

    invoke-interface {p2, v0}, Lcom/sigmob/sdk/base/common/s$a;->a(Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->SigmobTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setSub_category(Ljava/lang/String;)V

    if-eqz p3, :cond_d

    invoke-interface {p3, p0}, Lcom/sigmob/sdk/base/common/s$a;->a(Ljava/lang/Object;)V

    :cond_d
    invoke-static {p2, p0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/mta/PointEntitySigmob;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->commit()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/base/common/s$5;

    invoke-direct {v0, p3, p4, p5}, Lcom/sigmob/sdk/base/common/s$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/base/common/s$6;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/sigmob/sdk/base/common/s$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityCommon;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;-><init>()V

    const-string v1, "102"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setCategory(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setSha1(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setMd5(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->commit()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/common/s$2;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/common/s$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method
