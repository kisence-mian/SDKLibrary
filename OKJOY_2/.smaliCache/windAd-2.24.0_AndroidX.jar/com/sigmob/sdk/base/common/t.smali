.class Lcom/sigmob/sdk/base/common/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/o;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v1, ""

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/t;->e:Ljava/lang/String;

    iput v0, p0, Lcom/sigmob/sdk/base/common/t;->f:I

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/t;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    return p0
.end method

.method private a(I)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    const-string p1, "0"

    return-object p1

    :cond_5
    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/t;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/t;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v1, Lcom/sigmob/sdk/base/common/t$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sigmob/sdk/base/common/t$1;-><init>(Lcom/sigmob/sdk/base/common/t;ILjava/lang/String;)V

    invoke-static {p1, p3, v0, v1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/t;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/base/common/t;->d:I

    return p0
.end method

.method private b(I)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    const-string p1, "0"

    return-object p1

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%.2f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/t;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()Z
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/base/common/t;->f:I

    if-lez v0, :cond_c

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private c()I
    .registers 4

    iget v0, p0, Lcom/sigmob/sdk/base/common/t;->f:I

    if-lez v0, :cond_d

    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    if-ge v1, v2, :cond_d

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_d
    iget v0, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    return v0
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/common/t;)I
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/common/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/t;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/common/t;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/base/common/t;->f:I

    return p0
.end method

.method static synthetic f(Lcom/sigmob/sdk/base/common/t;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/sigmob/sdk/base/common/t;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/base/common/t;->c:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->q:Lcom/sigmob/sdk/base/common/a;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result v0

    const-string v1, "endcard"

    const-string v2, "close"

    invoke-direct {p0, v1, v0, v2}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(II)Ljava/lang/Boolean;
    .registers 4

    iput p1, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->end_time:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/common/t;->f:I

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of p2, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz p2, :cond_27

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    iget p2, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "_VIDEOTIME_"

    invoke-virtual {p1, v0, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/t;->e:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/base/common/a;I)Ljava/lang/Boolean;
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/sigmob/sdk/base/common/t$2;->a:[I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2c9

    const-string v2, "_VIDEOTIME_"

    const-string v3, "_COMPLETED_"

    const-string v4, "silent"

    const-string v5, "1"

    const-string v6, "play"

    const-string v7, "_ENDTIME_"

    const-string v8, "0"

    const-string v9, "_PROGRESS_"

    packed-switch v1, :pswitch_data_2d0

    :try_start_1c
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2c0

    :pswitch_22
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object p1

    :goto_26
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;I)V

    goto/16 :goto_2cf

    :pswitch_2b
    const-string p1, "0.85"

    invoke-direct {p0, v6, p2, p1}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_4b

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v7, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string p2, "85"

    invoke-virtual {p1, v9, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->k:Lcom/sigmob/sdk/base/common/a;

    :goto_4f
    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto/16 :goto_2cf

    :pswitch_54
    const-string p1, "0.75"

    invoke-direct {p0, v6, p2, p1}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_74

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v7, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string p2, "75"

    invoke-virtual {p1, v9, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->j:Lcom/sigmob/sdk/base/common/a;

    goto :goto_4f

    :pswitch_79
    const-string p1, "0.50"

    invoke-direct {p0, v6, p2, p1}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_99

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v7, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string p2, "50"

    invoke-virtual {p1, v9, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->i:Lcom/sigmob/sdk/base/common/a;

    goto :goto_4f

    :pswitch_9e
    const-string p1, "0.25"

    invoke-direct {p0, v6, p2, p1}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_be

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v7, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string p2, "25"

    invoke-virtual {p1, v9, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->e:Lcom/sigmob/sdk/base/common/a;

    goto :goto_4f

    :pswitch_c3
    invoke-direct {p0, v6, p2, v8}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2cf

    :pswitch_c8
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    if-eqz p1, :cond_2cf

    const-string p1, "screenswitch"

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->af()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2cf

    :pswitch_dd
    invoke-direct {p0, v4, p2, v8}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2cf

    :pswitch_e2
    invoke-direct {p0, v4, p2, v5}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2cf

    :pswitch_e7
    const-string p1, "vclose"

    goto/16 :goto_26

    :pswitch_eb
    const-string p1, "finish"

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_12f

    iget v1, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    if-lez v1, :cond_112

    if-lez p2, :cond_112

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    mul-int/lit8 v2, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result v4

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    :cond_112
    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {v1, v9, v8}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_118
    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {v1, v3, v5}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_PLAYLASTFRAME_"

    invoke-virtual {v1, v2, v5}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12f
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    goto/16 :goto_4f

    :pswitch_135
    if-nez p2, :cond_13b

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result p2

    :cond_13b
    const-string p1, "complete"

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_15b

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v7, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string p2, "100"

    invoke-virtual {p1, v9, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15b
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->l:Lcom/sigmob/sdk/base/common/a;

    goto/16 :goto_4f

    :pswitch_161
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_1aa

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_SHOWSKIPTIME_"

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    if-lez v1, :cond_18f

    if-lez p2, :cond_18f

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    mul-int/lit8 v3, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_195

    :cond_18f
    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {v1, v9, v8}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_195
    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v7, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    iget p2, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1aa
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    goto/16 :goto_4f

    :pswitch_1b0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_1e0

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    if-lez v1, :cond_1db

    if-lez p2, :cond_1db

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    mul-int/lit8 p2, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e0

    :cond_1db
    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {p1, v9, v8}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e0
    :goto_1e0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    goto/16 :goto_4f

    :pswitch_1e6
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    goto/16 :goto_4f

    :pswitch_1ec
    if-nez p2, :cond_1f2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result p2

    :cond_1f2
    const-string p1, "endcard"

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_22d

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    if-lez v1, :cond_228

    if-lez p2, :cond_228

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    mul-int/lit8 p2, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22d

    :cond_228
    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {p1, v9, v8}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22d
    :goto_22d
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    goto/16 :goto_4f

    :pswitch_233
    const-string p1, "skip"

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of v1, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_268

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    if-lez v1, :cond_263

    if-lez p2, :cond_263

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    mul-int/lit8 p2, p2, 0x64

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->c()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_268

    :cond_263
    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {p1, v9, v8}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_268
    :goto_268
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    goto/16 :goto_4f

    :pswitch_26e
    const-string p1, "start"

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    instance-of p2, p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz p2, :cond_2ba

    move-object p2, p1

    check-cast p2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_SETCLOSETIME_"

    iget v4, p0, Lcom/sigmob/sdk/base/common/t;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {p2, v7, v8}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    iget v1, p0, Lcom/sigmob/sdk/base/common/t;->a:I

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/t;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-virtual {p2, v3, v8}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_PLAYFIRSTFRAME_"

    invoke-virtual {p2, v1, v8}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string p2, "_ISTRUNCATION_"

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/t;->b()Z

    move-result v1

    if-eqz v1, :cond_2b6

    goto :goto_2b7

    :cond_2b6
    move-object v5, v8

    :goto_2b7
    invoke-virtual {p1, p2, v5}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ba
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    goto/16 :goto_4f

    :goto_2c0
    invoke-direct {p0, v1, p2}, Lcom/sigmob/sdk/base/common/t;->a(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/t;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p2, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V
    :try_end_2c8
    .catchall {:try_start_1c .. :try_end_2c8} :catchall_2c9

    goto :goto_2cf

    :catchall_2c9
    move-exception p1

    const-string p2, "recordDisplayEvent "

    invoke-static {p2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2cf
    :goto_2cf
    return-object v0

    :pswitch_data_2d0
    .packed-switch 0x1
        :pswitch_26e
        :pswitch_233
        :pswitch_1ec
        :pswitch_1e6
        :pswitch_1b0
        :pswitch_161
        :pswitch_135
        :pswitch_eb
        :pswitch_eb
        :pswitch_e7
        :pswitch_e2
        :pswitch_dd
        :pswitch_c8
        :pswitch_c3
        :pswitch_9e
        :pswitch_79
        :pswitch_54
        :pswitch_2b
        :pswitch_22
    .end packed-switch
.end method

.method public a(ZI)Ljava/lang/Boolean;
    .registers 3

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/t;->c:Z

    iput p2, p0, Lcom/sigmob/sdk/base/common/t;->d:I

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
