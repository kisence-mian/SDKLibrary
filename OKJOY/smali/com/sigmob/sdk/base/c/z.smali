.class public Lcom/sigmob/sdk/base/c/z;
.super Lcom/sigmob/sdk/base/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/base/c/s",
        "<",
        "Lcom/sigmob/volley/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I

.field private static d:I


# instance fields
.field private final c:Lcom/sigmob/sdk/base/c/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/sigmob/sdk/base/c/z;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/sigmob/sdk/base/c/aa;)V
    .registers 9

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lcom/sigmob/sdk/base/c/s;-><init>(Ljava/lang/String;ILcom/sigmob/volley/y;)V

    iput-object p4, p0, Lcom/sigmob/sdk/base/c/z;->c:Lcom/sigmob/sdk/base/c/aa;

    if-gez p2, :cond_1d

    move p2, v0

    :cond_a
    :goto_a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/c/z;->b(Z)Lcom/sigmob/volley/q;

    new-instance v1, Lcom/sigmob/volley/g;

    const/16 v2, 0x2710

    const/4 v3, 0x0

    invoke-direct {v1, p3, v2, p2, v3}, Lcom/sigmob/volley/g;-><init>(IIIF)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/z;->a(Z)Lcom/sigmob/volley/q;

    return-void

    :cond_1d
    if-le p2, v1, :cond_a

    move p2, v1

    goto :goto_a
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sigmob/sdk/base/c/aa;)V
    .registers 5

    const/16 v0, 0x2710

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sigmob/sdk/base/c/z;-><init>(Ljava/lang/String;IILcom/sigmob/sdk/base/c/aa;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)I
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdTracker(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v0, -0x2

    goto :goto_7

    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/j;

    if-eqz p2, :cond_2d

    const-string v1, "js"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    instance-of v3, v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v3, :cond_3e

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_PLAYFIRSTFRAME_"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    invoke-static {v0, p0, p1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/common/j;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_1a

    :cond_42
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Lcom/sigmob/sdk/base/common/j;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 12

    const/4 v6, 0x0

    if-eqz p0, :cond_ad

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->f()Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/k;->a:Lcom/sigmob/sdk/base/common/k;

    if-ne v0, v1, :cond_ad

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->j()Z

    move-result v0

    if-nez v0, :cond_ad

    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1f
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->i()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b4

    const/4 v3, 0x1

    :goto_29
    new-instance v7, Lcom/sigmob/sdk/base/c/z;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v0, Lcom/sigmob/sdk/base/c/z$1;

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/c/z$1;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZLcom/sigmob/sdk/base/common/j;Ljava/lang/String;)V

    invoke-direct {v7, v1, v8, v0}, Lcom/sigmob/sdk/base/c/z;-><init>(Ljava/lang/String;ILcom/sigmob/sdk/base/c/aa;)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->h()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    if-nez v0, :cond_b7

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http_code"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time_spend"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_a0

    const-string v1, "retry"

    const-string v2, "1"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    const-string v2, "request_id"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->e()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_a0

    const-string v1, "created_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    const-string v2, "13"

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "RequestQueue is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_ad
    :goto_ad
    return-void

    :cond_ae
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->h()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1f

    :cond_b4
    move v3, v6

    goto/16 :goto_29

    :cond_b7
    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    goto :goto_ad
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V
    .registers 7

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdTracker(Lcom/sigmob/sdk/base/common/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    instance-of v3, v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v3, :cond_34

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_PLAYFIRSTFRAME_"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/common/j;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static f()V
    .registers 4

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/j;->b(J)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->h()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/t;->a()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Z)V

    const/16 v0, 0xbb8

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->getADTrackerExpiredTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/base/common/j;->a(IJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/j;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/common/j;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_22

    :cond_37
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getADTrackerExpiredTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/j;->a(J)V

    return-void
.end method

.method static synthetic g()I
    .registers 1

    sget v0, Lcom/sigmob/sdk/base/c/z;->d:I

    return v0
.end method

.method static synthetic h()I
    .registers 2

    sget v0, Lcom/sigmob/sdk/base/c/z;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sigmob/sdk/base/c/z;->d:I

    return v0
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<",
            "Lcom/sigmob/volley/n;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/c/z;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/c/s;->a(Lcom/sigmob/volley/ae;)V

    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/volley/n;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/c/z;->b(Lcom/sigmob/volley/n;)V

    return-void
.end method

.method public a_()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/sigmob/volley/n;)V
    .registers 5

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/z;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/z;->c:Lcom/sigmob/sdk/base/c/aa;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send tracking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/c/z;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/c/aa;->a(Lcom/sigmob/volley/n;)V

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public bridge synthetic c()[B
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
