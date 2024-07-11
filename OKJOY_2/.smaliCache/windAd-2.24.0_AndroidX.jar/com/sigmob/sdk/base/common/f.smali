.class public Lcom/sigmob/sdk/base/common/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/sigmob/sdk/common/a$a;

.field protected d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videoAd/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/a$a;->d:Lcom/sigmob/sdk/common/a$a;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/f;->c:Lcom/sigmob/sdk/common/a$a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/base/common/f;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/f;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/f;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/sigmob/sdk/base/common/f;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 17

    new-instance v0, Lcom/sigmob/sdk/common/f/q$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/f/q$a;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/common/f/p;->a:Lcom/sigmob/sdk/common/f/p;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sigmob/sdk/common/f/p;

    sget-object v3, Lcom/sigmob/sdk/common/f/p;->c:Lcom/sigmob/sdk/common/f/p;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/f/q$a;->a(Lcom/sigmob/sdk/common/f/p;[Lcom/sigmob/sdk/common/f/p;)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object v0

    new-instance v9, Lcom/sigmob/sdk/base/common/f$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p6

    move-object v5, p4

    move-object v6, p3

    move-object v7, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/sigmob/sdk/base/common/f$3;-><init>(Lcom/sigmob/sdk/base/common/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Lcom/sigmob/sdk/common/f/q$a;->a(Lcom/sigmob/sdk/common/f/q$b;)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/f/q$a;->a()Lcom/sigmob/sdk/common/f/q$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/f/q$a;->a(Z)Lcom/sigmob/sdk/common/f/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/f/q$a;->b()Lcom/sigmob/sdk/common/f/q;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual {v0, p2, p3}, Lcom/sigmob/sdk/common/f/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_19

    const-string v3, "click"

    const-string v5, "1"

    move-object v2, p3

    move-object v4, p2

    move-object v6, v0

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p3

    iget-object p3, p3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne p3, v1, :cond_34

    new-instance p3, Lcom/sigmob/sdk/base/common/f$2;

    invoke-direct {p3, p0, p2, p1, v0}, Lcom/sigmob/sdk/base/common/f$2;-><init>(Lcom/sigmob/sdk/base/common/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/sigmob/sdk/common/f/r;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/r$a;)V

    goto :goto_3d

    :cond_34
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/sdk/base/common/f;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3d
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    :try_start_9
    const-string p2, "\u5f53\u524d\u6b63\u5728\u52aa\u529b\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u7b49"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    move-exception p1

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p5, :cond_2a

    const/4 v7, 0x0

    const-string v3, "click"

    const-string v5, "0"

    move-object v2, p4

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p4

    iget-object p4, p4, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, v1, :cond_5d

    new-instance p4, Lcom/sigmob/sdk/common/e/d;

    new-instance p5, Lcom/sigmob/sdk/base/common/f$1;

    invoke-direct {p5, p0, p2, p1}, Lcom/sigmob/sdk/base/common/f$1;-><init>(Lcom/sigmob/sdk/base/common/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;)V

    invoke-direct {p4, p3, p5, v1}, Lcom/sigmob/sdk/common/e/d;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/common/e/d$a;I)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object p1

    if-nez p1, :cond_54

    const-string p1, "download_start"

    const-string p3, "0"

    invoke-static {p1, p3, p2}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 p3, 0x0

    const-string p4, "request queue is null"

    invoke-static {p1, p3, p4, p2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_66

    :cond_54
    const-string p2, "GDTRequestConvert"

    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/common/e/d;->b(Ljava/lang/Object;)Lcom/sigmob/volley/m;

    invoke-virtual {p1, p4}, Lcom/sigmob/volley/n;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;

    goto :goto_66

    :cond_5d
    iput-object p3, p0, Lcom/sigmob/sdk/base/common/f;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_66
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V
    .registers 7

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p4, p5, p2, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/f;ZLjava/lang/String;Z)V
    .registers 15

    if-eqz p5, :cond_5

    const-string p4, "companion"

    goto :goto_7

    :cond_5
    const-string p4, "endcard"

    :goto_7
    move-object v4, p4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_10

    goto :goto_11

    :cond_10
    move-object p3, p5

    :goto_11
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p4

    iget-object p4, p4, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p5

    iget-object p5, p5, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    goto :goto_3c

    :cond_2e
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object p3

    :cond_3c
    :goto_3c
    move-object v3, p3

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5c

    sget-object p3, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {p3}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result p3

    if-eq p4, p3, :cond_5c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7d

    :cond_5c
    sget-object p3, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {p3}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result p3

    if-eq p4, p3, :cond_76

    sget-object p3, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {p3}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result p3

    if-ne p4, p3, :cond_6d

    goto :goto_76

    :cond_6d
    sget-object p3, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {p3}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result p3

    if-ne p4, p3, :cond_7d

    goto :goto_53

    :cond_76
    :goto_76
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/f;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/f;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public c()Lcom/sigmob/sdk/common/a$a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f;->c:Lcom/sigmob/sdk/common/a$a;

    return-object v0
.end method

.method public c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public d(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public e(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method
