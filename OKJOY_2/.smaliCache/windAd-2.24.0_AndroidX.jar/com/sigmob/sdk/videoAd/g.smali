.class public Lcom/sigmob/sdk/videoAd/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/videoAd/g$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private final d:Lcom/sigmob/sdk/base/views/b;

.field private e:Lcom/sigmob/sdk/videoAd/g$a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private final i:I


# direct methods
.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/views/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/videoAd/g;->a:I

    iput p2, p0, Lcom/sigmob/sdk/videoAd/g;->b:I

    iput p3, p0, Lcom/sigmob/sdk/videoAd/g;->i:I

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/g;->d:Lcom/sigmob/sdk/base/views/b;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/videoAd/g;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    return p0
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/g$a;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->c_()V

    :cond_f
    return-void

    :cond_10
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v8, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    const-string v3, "click"

    const-string v5, "1"

    move-object v2, p3

    move-object v4, p2

    move-object v6, v0

    move-object v7, p5

    invoke-static/range {v2 .. v8}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget p3, p0, Lcom/sigmob/sdk/videoAd/g;->i:I

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne p3, v1, :cond_3a

    new-instance p3, Lcom/sigmob/sdk/videoAd/g$2;

    invoke-direct {p3, p0, p2, p1, v0}, Lcom/sigmob/sdk/videoAd/g$2;-><init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/sigmob/sdk/common/f/r;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/r$a;)V

    goto :goto_4a

    :cond_3a
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p5

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/g$a;

    if-eqz p1, :cond_4a

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->b_()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    sget-object v0, Lcom/sigmob/sdk/videoAd/g$4;->a:[I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget v6, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    packed-switch v0, :pswitch_data_3e

    const-string v0, "endcard"

    const-string v1, "click"

    const-string v3, "0"

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_3c

    :pswitch_1d
    const-string v0, "full_video_click"

    const-string v1, "click"

    const-string v3, "0"

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_3c

    :pswitch_2d
    const-string v0, "companion"

    const-string v1, "click"

    const-string v3, "0"

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
    .registers 15

    sget-object v0, Lcom/sigmob/sdk/videoAd/g$4;->a:[I

    invoke-virtual {p5}, Lcom/sigmob/sdk/base/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v0, "endcard"

    goto :goto_1c

    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/g;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v0, "full_video_click"

    goto :goto_1c

    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v0, "companion"

    :goto_1c
    move-object v4, v0

    new-instance v0, Lcom/sigmob/sdk/common/f/q$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/f/q$a;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/common/f/p;->a:Lcom/sigmob/sdk/common/f/p;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sigmob/sdk/common/f/p;

    const/4 v3, 0x0

    sget-object v5, Lcom/sigmob/sdk/common/f/p;->c:Lcom/sigmob/sdk/common/f/p;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    sget-object v5, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/f/q$a;->a(Lcom/sigmob/sdk/common/f/p;[Lcom/sigmob/sdk/common/f/p;)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object v0

    new-instance v8, Lcom/sigmob/sdk/videoAd/g$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/videoAd/g$1;-><init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/sigmob/sdk/base/a;)V

    invoke-virtual {v0, v8}, Lcom/sigmob/sdk/common/f/q$a;->a(Lcom/sigmob/sdk/common/f/q$b;)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sigmob/sdk/common/f/q$a;->a()Lcom/sigmob/sdk/common/f/q$a;

    move-result-object p4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/common/f/q$a;->a(Z)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/f/q$a;->b()Lcom/sigmob/sdk/common/f/q;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/sigmob/sdk/common/f/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_11
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

.method static synthetic b(Lcom/sigmob/sdk/videoAd/g;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
    .registers 6

    invoke-direct {p0, p5, p2, p3, p4}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/g$a;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->b_()V

    :cond_13
    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/g$a;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/views/b;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->d:Lcom/sigmob/sdk/base/views/b;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/videoAd/g;->h:I

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    sget-object p1, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    const-string p1, "endcard"

    const-string p2, "show"

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V
    .registers 19

    move-object v0, p1

    move-object v7, p2

    move-object v8, p0

    iget-object v1, v8, Lcom/sigmob/sdk/videoAd/g;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/common/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_18

    :try_start_c
    const-string v1, "\u5f53\u524d\u6b63\u5728\u52aa\u529b\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u7b49"

    invoke-static {p1, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_17

    :catchall_16
    move-exception v0

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_5d

    new-instance v11, Lcom/sigmob/sdk/common/e/d;

    new-instance v12, Lcom/sigmob/sdk/videoAd/g$3;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/videoAd/g$3;-><init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    invoke-direct {v11, v10, v12, v9}, Lcom/sigmob/sdk/common/e/d;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/common/e/d$a;I)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    if-nez v0, :cond_54

    const-string v0, "download_start"

    const-string v1, "0"

    invoke-static {v0, v1, p2}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 v1, 0x0

    const-string v2, "request queue is null"

    invoke-static {v0, v1, v2, p2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_68

    :cond_54
    const-string v1, "GDTRequestConvert"

    invoke-virtual {v11, v1}, Lcom/sigmob/sdk/common/e/d;->b(Ljava/lang/Object;)Lcom/sigmob/volley/m;

    invoke-virtual {v0, v11}, Lcom/sigmob/volley/n;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;

    goto :goto_68

    :cond_5d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/videoAd/g;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    :goto_68
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 12

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

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

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoAd/g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/g$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g;->g:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    goto :goto_6c

    :cond_1b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->i:I

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-eq v0, v1, :cond_56

    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->i:I

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_38

    goto :goto_56

    :cond_38
    iget v0, p0, Lcom/sigmob/sdk/videoAd/g;->i:I

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_4c

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    goto :goto_6c

    :cond_4c
    const-string p1, "not support interActionType"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/g$a;

    if-eqz p1, :cond_6c

    goto :goto_69

    :cond_56
    :goto_56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a;)V

    goto :goto_6c

    :cond_60
    const-string p1, "landing page is null"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g;->e:Lcom/sigmob/sdk/videoAd/g$a;

    if-eqz p1, :cond_6c

    :goto_69
    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->c_()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->p:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method
