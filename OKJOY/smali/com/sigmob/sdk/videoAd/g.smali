.class public Lcom/sigmob/sdk/videoAd/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private final d:Lcom/sigmob/sdk/base/views/d;

.field private e:Lcom/sigmob/sdk/videoAd/h;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:I


# direct methods
.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/views/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/videoAd/g;->a:I

    iput p2, p0, Lcom/sigmob/sdk/videoAd/g;->b:I

    iput p3, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/g;->d:Lcom/sigmob/sdk/base/views/d;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/g;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->c_()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

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

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_42

    new-instance v0, Lcom/sigmob/sdk/videoAd/g$2;

    invoke-direct {v0, p0, p2, p1, v6}, Lcom/sigmob/sdk/videoAd/g$2;-><init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/sigmob/sdk/base/common/utils/ag;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ah;)V

    goto :goto_11

    :cond_42
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p5

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->b_()V

    goto :goto_11
.end method

.method private a(Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    sget-object v0, Lcom/sigmob/sdk/videoAd/g$4;->a:[I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->r:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    move-object v0, p0

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_27
    return-void

    :pswitch_28
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->C:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    move-object v0, p0

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_27

    :pswitch_45
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->N:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    move-object v0, p0

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_27

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_28
        :pswitch_45
    .end packed-switch
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
    .registers 15

    sget-object v0, Lcom/sigmob/sdk/videoAd/g$4;->a:[I

    invoke-virtual {p5}, Lcom/sigmob/sdk/base/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->r:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_14
    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ad;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/utils/ad;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->a:Lcom/sigmob/sdk/base/common/utils/ab;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sigmob/sdk/base/common/utils/ab;

    const/4 v4, 0x0

    sget-object v5, Lcom/sigmob/sdk/base/common/utils/ab;->c:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ad;->a(Lcom/sigmob/sdk/base/common/utils/ab;[Lcom/sigmob/sdk/base/common/utils/ab;)Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v8

    new-instance v0, Lcom/sigmob/sdk/videoAd/g$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g$1;-><init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sigmob/sdk/base/a;)V

    invoke-virtual {v8, v0}, Lcom/sigmob/sdk/base/common/utils/ad;->a(Lcom/sigmob/sdk/base/common/utils/ae;)Lcom/sigmob/sdk/base/common/utils/ad;

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

    :pswitch_55
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->B:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_14

    :pswitch_5f
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->N:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_14

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_55
        :pswitch_5f
    .end packed-switch
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/sigmob/sdk/videoAd/g;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->r:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/h;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
    .registers 7

    invoke-direct {p0, p5, p2, p3, p4}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->b_()V

    :cond_15
    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/views/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->d:Lcom/sigmob/sdk/base/views/d;

    return-object v0
.end method

.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 11

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "GDTRequestConvert"

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/u;->a(Ljava/lang/Object;)V

    :cond_f
    sget-object v0, Lcom/sigmob/sdk/base/common/a;->q:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->z:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 12

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    const-string v1, "show"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
    .registers 15

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->c:Ljava/lang/String;

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
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_5c

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_52

    new-instance v7, Lcom/sigmob/sdk/base/c/e;

    new-instance v0, Lcom/sigmob/sdk/videoAd/g$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g$3;-><init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    invoke-direct {v7, v6, v0, v8}, Lcom/sigmob/sdk/base/c/e;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/c/f;I)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request queue is null"

    invoke-static {p2, v0, v1}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_49
    const-string v1, "GDTRequestConvert"

    invoke-virtual {v7, v1}, Lcom/sigmob/sdk/base/c/e;->b(Ljava/lang/Object;)Lcom/sigmob/volley/q;

    invoke-virtual {v0, v7}, Lcom/sigmob/volley/u;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    goto :goto_13

    :cond_52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    goto :goto_13

    :catch_5c
    move-exception v0

    goto :goto_13
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 12

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-eq v0, v1, :cond_37

    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_41

    :cond_37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    goto :goto_1a

    :cond_41
    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_55

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    goto :goto_1a

    :cond_55
    const-string v0, "not support interActionType"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->c_()V

    goto :goto_1a

    :cond_64
    const-string v0, "landing page is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/videoAd/h;->c_()V

    goto :goto_1a
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->p:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->a:I

    return v0
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    return-object v0
.end method
