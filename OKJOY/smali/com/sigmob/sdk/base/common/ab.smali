.class Lcom/sigmob/sdk/base/common/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/v;


# instance fields
.field private a:I

.field private b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->e:Ljava/lang/String;

    iput v1, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_14

    const-string v1, "sub_category"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v1, "vtime"

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "skip_show_time"

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/sigmob/sdk/base/common/ab;->d:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "current_time"

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    int-to-float v4, p2

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "play_process"

    div-int/lit16 v2, p2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->h:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "ad_scene"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/ab;->e:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    const-string v1, "play_time"

    const-string v2, "%d"

    new-array v3, v7, [Ljava/lang/Object;

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "set_close_time"

    const-string v2, "%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_truncation"

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->b()Z

    move-result v1

    if-eqz v1, :cond_d3

    const-string v1, "1"

    :goto_b0
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_force"

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/common/ab;->c:Z

    if-eqz v1, :cond_d6

    const-string v1, "1"

    :goto_bb
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "5"

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_d3
    const-string v1, "0"

    goto :goto_b0

    :cond_d6
    const-string v1, "0"

    goto :goto_bb
.end method

.method private b()Z
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c()I
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    if-ge v0, v1, :cond_11

    iget v0, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    goto :goto_10
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->q:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->r:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->c()I

    move-result v1

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->z:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(II)Ljava/lang/Boolean;
    .registers 6

    iput p1, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    iput p2, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    instance-of v1, v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_1d

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_VIDEOTIME_"

    iget v2, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/ab;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/base/common/a;I)Ljava/lang/Boolean;
    .registers 10

    const/4 v6, 0x0

    :try_start_1
    sget-object v1, Lcom/sigmob/sdk/base/common/ab$1;->a:[I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_380

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1, p1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    :cond_18
    :goto_18
    return-object v6

    :pswitch_19
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->h:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_8c

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_SETCLOSETIME_"

    iget v4, p0, Lcom/sigmob/sdk/base/common/ab;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ADSCENE_"

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/ab;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_VIDEOTIME_"

    iget v4, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_COMPLETED_"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_PLAYFIRSTFRAME_"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_ISTRUNCATION_"

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->b()Z

    move-result v1

    if-eqz v1, :cond_9c

    const-string v1, "1"

    :goto_89
    invoke-virtual {v2, v3, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_93} :catch_94

    goto :goto_18

    :catch_94
    move-exception v1

    const-string v2, "recordDisplayEvent "

    invoke-static {v2, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :cond_9c
    :try_start_9c
    const-string v1, "0"

    goto :goto_89

    :pswitch_9f
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->o:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_d7

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    if-lez v1, :cond_d7

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PROGRESS_"

    mul-int/lit8 v3, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->c()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_e0
    if-nez p2, :cond_e6

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->c()I

    move-result p2

    :cond_e6
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->r:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_124

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    if-lez v1, :cond_124

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PROGRESS_"

    mul-int/lit8 v3, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->c()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_124
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_12d
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_136
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_165

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    if-lez v1, :cond_165

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PROGRESS_"

    mul-int/lit8 v3, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->c()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_165
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_16e
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_1bd

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_SHOWSKIPTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_PROGRESS_"

    mul-int/lit8 v4, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->c()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    if-lez v1, :cond_1bd

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_VIDEOTIME_"

    iget v3, p0, Lcom/sigmob/sdk/base/common/ab;->a:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bd
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_1c6
    if-nez p2, :cond_1cc

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->c()I

    move-result p2

    :cond_1cc
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->q:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_1f7

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PROGRESS_"

    const-string v3, "100"

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f7
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->l:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_200
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->p:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_24a

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_PROGRESS_"

    mul-int/lit8 v4, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ab;->c()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_COMPLETED_"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_PLAYLASTFRAME_"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_ENDTIME_"

    div-int/lit16 v3, p2, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24a
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_253
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->s:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;I)V

    goto/16 :goto_18

    :pswitch_25e
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->k:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_18

    :pswitch_26b
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->k:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_18

    :pswitch_278
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->j:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_18

    :pswitch_291
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_18

    :pswitch_29e
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.25"

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_2cb

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PROGRESS_"

    const-string v3, "25"

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2cb
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->e:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_2d4
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.50"

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_301

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PROGRESS_"

    const-string v3, "50"

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_301
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->i:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_30a
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.75"

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_337

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PROGRESS_"

    const-string v3, "75"

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_337
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->j:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_340
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.85"

    invoke-direct {p0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v1, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_36d

    move-object v0, v2

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-object v1, v0

    const-string v3, "_ENDTIME_"

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PROGRESS_"

    const-string v3, "85"

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36d
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ab;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->k:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_18

    :pswitch_376
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sigmob/sdk/base/common/ab;->a(Ljava/lang/String;I)V
    :try_end_37d
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_37d} :catch_94

    goto/16 :goto_18

    nop

    :pswitch_data_380
    .packed-switch 0x1
        :pswitch_19
        :pswitch_9f
        :pswitch_e0
        :pswitch_12d
        :pswitch_136
        :pswitch_16e
        :pswitch_1c6
        :pswitch_200
        :pswitch_200
        :pswitch_253
        :pswitch_25e
        :pswitch_26b
        :pswitch_278
        :pswitch_291
        :pswitch_29e
        :pswitch_2d4
        :pswitch_30a
        :pswitch_340
        :pswitch_376
    .end packed-switch
.end method

.method public a(ZI)Ljava/lang/Boolean;
    .registers 4

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/ab;->c:Z

    iput p2, p0, Lcom/sigmob/sdk/base/common/ab;->d:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
