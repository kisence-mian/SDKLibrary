.class public Lcom/sigmob/sdk/base/models/BaseAdUnit;
.super Lcom/sigmob/sdk/base/a/e;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAdUnit"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

.field private adTrackersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private ad_source_channel:Ljava/lang/String;

.field private ad_type:I

.field private adslot_id:Ljava/lang/String;

.field private camp_id:Ljava/lang/String;

.field private create_time:J

.field private crid:Ljava/lang/String;

.field private endcard_md5:Ljava/lang/String;

.field private load_id:Ljava/lang/String;

.field private macroCommon:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

.field private request_id:Ljava/lang/String;

.field private video_md5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/a/e;-><init>()V

    return-void
.end method

.method public static adUnit(Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    if-eqz v0, :cond_7a

    new-instance v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;-><init>()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_6c

    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->create_time:J

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adslot_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad_type:I

    iput-object p0, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->crid:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->camp_id:Ljava/lang/String;

    iput-object p1, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->request_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->endcard_md5:Ljava/lang/String;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->video_md5:Ljava/lang/String;

    iput-object p2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->load_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad_source_channel:Ljava/lang/String;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sigmob/sdk/base/common/q;->c:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v3

    if-eq v2, v3, :cond_59

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sigmob/sdk/base/common/q;->e:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v3

    if-ne v2, v3, :cond_67

    :cond_59
    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v2, :cond_67

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_67

    :cond_67
    invoke-static {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->initAdTrackerMap(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_6a} :catch_75

    move-object v0, v1

    :goto_6b
    return-object v0

    :catch_6c
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_6f
    const-string v2, "adUnit error"

    invoke-static {v2, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    :catch_75
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_6f

    :cond_7a
    move-object v0, v2

    goto :goto_6b
.end method

.method private static checkFileMD5(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path: [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] calc [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] origin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public static createFileRefTable()Lcom/sigmob/sdk/base/a/g;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/a/h;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/h;-><init>()V

    const-string v1, "file_reference"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;

    const-string v1, "crid"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;

    const-string v1, "adslot_id"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "crid"

    const-string v3, "text"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adslot_id"

    const-string v3, "text"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "video_md5"

    const-string v3, "string"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "endcard_md5"

    const-string v3, "string"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/util/Map;)Lcom/sigmob/sdk/base/a/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/h;->a()Lcom/sigmob/sdk/base/a/g;

    move-result-object v0

    return-object v0
.end method

.method public static createTable()Lcom/sigmob/sdk/base/a/g;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/a/h;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/h;-><init>()V

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;

    const-string v1, "crid"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;

    const-string v1, "adslot_id"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;

    const-class v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/w;->b(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_37

    const-string v2, "serialVersionUID"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "$change"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TAG"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "macroCommon"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/h;->a(Ljava/util/Map;)Lcom/sigmob/sdk/base/a/h;

    :cond_37
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/h;->a()Lcom/sigmob/sdk/base/a/g;

    move-result-object v0

    return-object v0
.end method

.method public static createTrackersForUrls(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/j;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/sigmob/sdk/base/common/j;

    invoke-direct {v3, v0, p1, p2}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/Integer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_24
    return-object v1
.end method

.method public static createTriggerDelete()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/base/a/i;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/i;-><init>()V

    const-string v1, "trigger_delete"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/i;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/i;->c(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/i;->b(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;

    const-string v1, "delete from file_reference where crid = old.crid  and adslot_id == old.adslot_id;"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/i;->d(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createTriggerInsert()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/base/a/i;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/i;-><init>()V

    const-string v1, "trigger_insert"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/i;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/i;->c(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;

    const-string v1, "insert"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/i;->b(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;

    const-string v1, "insert or replace into file_reference (crid,adslot_id,video_md5,endcard_md5) values(new.crid,new.adslot_id,new.video_md5,new.endcard_md5) ;"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/i;->d(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method private static initAdTrackerMap(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_tracking()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adTrackersMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Tracking;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Tracking;->tracking_url:Ljava/util/List;

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Tracking;->tracking_event_type:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->request_id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTrackingRetryNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->createTrackersForUrls(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adTrackersMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Tracking;->tracking_event_type:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->endcard_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->checkFileMD5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_13
.end method

.method public checkVideoValid()Z
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->video_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_OriginMD5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->checkFileMD5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_13
.end method

.method public getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    return-object v0
.end method

.method public getAdExpiredTime()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_18
.end method

.method public getAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAdTracker(Lcom/sigmob/sdk/base/common/a;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/common/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adTrackersMap:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adTrackersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAdTracker(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adTrackersMap:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adTrackersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getAd_source_channel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad_source_channel:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_source_logo()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "https://n.sigmob.cn/icon/sig_logo.png"

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAd_tracking()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Tracking;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAd_type()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad_type:I

    return v0
.end method

.method public getAdslot_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adslot_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCamp_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->camp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAreaSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;
    .registers 4

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;-><init>()V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->bottom:Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->right:Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->top:Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->left:Ljava/lang/Float;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    iget-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    if-nez v1, :cond_57

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;-><init>()V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->bottom:Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->right:Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->top:Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->left:Ljava/lang/Float;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    move-result-object v0

    goto :goto_30

    :cond_57
    if-eqz v0, :cond_5c

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->click_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/ClickAreaSetting;

    goto :goto_30

    :cond_5c
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public getCreate_time()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->create_time:J

    return-wide v0
.end method

.method public getCreativeResourceType()Lcom/sigmob/sdk/base/views/f;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->d:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_25

    :cond_22
    sget-object v0, Lcom/sigmob/sdk/base/views/f;->d:Lcom/sigmob/sdk/base/views/f;

    :goto_24
    return-object v0

    :cond_25
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/sigmob/sdk/base/views/f;->b:Lcom/sigmob/sdk/base/views/f;

    goto :goto_24

    :cond_32
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/sigmob/sdk/base/views/f;->e:Lcom/sigmob/sdk/base/views/f;

    goto :goto_24

    :cond_3f
    sget-object v0, Lcom/sigmob/sdk/base/views/f;->d:Lcom/sigmob/sdk/base/views/f;

    goto :goto_24
.end method

.method public getCreativeType()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getCrid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->crid:Ljava/lang/String;

    return-object v0
.end method

.method public getEndCardDirPath()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%s/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%s.tgz"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->endcard_md5:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndCard_OriginMD5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->endcard_md5:Ljava/lang/String;

    return-object v0
.end method

.method public getEndcard_md5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->endcard_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->endcard_md5:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getEndcard_url()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getFullClickOnVideo()Z
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->full_click_on_video:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :cond_17
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getHtmlData()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    goto :goto_7
.end method

.method public getInvisibleAdLabel()Z
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->invisible_ad_label:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLanding_page()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getLoad_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->load_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->macroCommon:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->macroCommon:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->macroCommon:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    return-object v0
.end method

.method public getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->request_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->request_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->rv_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getSplashAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->splash_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getSplashFilePath()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    return-object v0

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method public getSplashURL()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    goto :goto_18
.end method

.method public getTrackingRetryNum()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getVideoPath()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%s.mp4"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTmpPath()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%s.mp4.tmp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideo_OriginMD5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->video_md5:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_md5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->video_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->video_md5:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getVideo_url()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getadslot_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adslot_id:Ljava/lang/String;

    return-object v0
.end method

.method public insertToDB(Lcom/sigmob/sdk/base/a/m;)V
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/base/a/k;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/k;-><init>()V

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/k;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "adslot_id"

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adslot_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "camp_id"

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->camp_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "crid"

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->crid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ad"

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->encode()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ad_type"

    iget v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad_type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "create_time"

    iget-wide v4, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->create_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "video_md5"

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "endcard_md5"

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "request_id"

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->request_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ad_source_channel"

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad_source_channel:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "load_id"

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->load_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/a/k;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/a/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/k;->a()Lcom/sigmob/sdk/base/a/j;

    move-result-object v0

    new-instance v3, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;

    invoke-direct {v3, p0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/a/m;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/base/a/l;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/sigmob/sdk/base/a/j;Lcom/sigmob/sdk/base/a/m;)V

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

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->d:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_30

    :cond_22
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardIndexPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public isVideoExist()Z
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoExist path :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_b
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

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->d:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_27

    :cond_22
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardIndexPath()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_36
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public setAd(Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad:Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    return-void
.end method

.method public setAd_source_channel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad_source_channel:Ljava/lang/String;

    return-void
.end method

.method public setAd_type(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->ad_type:I

    return-void
.end method

.method public setAdslot_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adslot_id:Ljava/lang/String;

    return-void
.end method

.method public setCamp_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->camp_id:Ljava/lang/String;

    return-void
.end method

.method public setCreate_time(J)V
    .registers 4

    iput-wide p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->create_time:J

    return-void
.end method

.method public setCrid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->crid:Ljava/lang/String;

    return-void
.end method

.method public setEndcard_md5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->endcard_md5:Ljava/lang/String;

    return-void
.end method

.method public setLoad_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->load_id:Ljava/lang/String;

    return-void
.end method

.method public setMacroCommon(Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->macroCommon:Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    return-void
.end method

.method public setRequest_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->request_id:Ljava/lang/String;

    return-void
.end method

.method public setVideo_md5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->video_md5:Ljava/lang/String;

    return-void
.end method

.method public setadslot_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adslot_id:Ljava/lang/String;

    return-void
.end method

.method public tableName()Ljava/lang/String;
    .registers 2

    const-string v0, "ads"

    return-object v0
.end method
