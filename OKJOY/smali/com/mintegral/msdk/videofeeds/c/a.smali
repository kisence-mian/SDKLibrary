.class public Lcom/mintegral/msdk/videofeeds/c/a;
.super Ljava/lang/Object;
.source "AdViewVideoFeedsPlayerListener.java"

# interfaces
.implements Lcom/mintegral/msdk/playercommon/c;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private h:Lcom/mintegral/msdk/videocommon/download/a;

.field private i:Landroid/content/Context;

.field private j:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/mintegral/msdk/base/common/e/b;

.field private n:Lcom/mintegral/msdk/base/b/w;

.field private o:Lcom/mintegral/msdk/videofeeds/c/d;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/mintegral/msdk/videofeeds/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->p:I

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/videocommon/download/a;Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Lcom/mintegral/msdk/videofeeds/c/d;)V
    .registers 7

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->p:I

    .line 83
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->h:Lcom/mintegral/msdk/videocommon/download/a;

    .line 84
    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 86
    iput-object p4, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    .line 88
    if-eqz p2, :cond_23

    .line 89
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {v0, p2}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->m:Lcom/mintegral/msdk/base/common/e/b;

    .line 90
    invoke-static {p2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->n:Lcom/mintegral/msdk/base/b/w;

    .line 92
    :cond_23
    if-eqz p3, :cond_2b

    .line 93
    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvImpList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->l:Ljava/util/Map;

    .line 96
    :cond_2b
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/c/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 8

    .prologue
    .line 345
    if-eqz p1, :cond_23

    :try_start_2
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 350
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 351
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const-string v2, "videofeeds"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 353
    :cond_23
    if-eqz p1, :cond_32

    .line 355
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/videofeeds/c/a$1;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/videofeeds/c/a$1;-><init>(Lcom/mintegral/msdk/videofeeds/c/a;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 369
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_33

    .line 376
    :cond_32
    :goto_32
    return-void

    .line 374
    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 8

    .prologue
    .line 386
    if-eqz p1, :cond_2f

    :try_start_2
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_2f

    .line 388
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 388
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_30

    .line 399
    :cond_2f
    :goto_2f
    return-void

    .line 397
    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method


# virtual methods
.method public OnBufferingEnd()V
    .registers 1

    .prologue
    .line 407
    return-void
.end method

.method public OnBufferingStart(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v0, :cond_b

    .line 275
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v1, "player buffer timeout"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V

    .line 277
    :cond_b
    sget-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    const-string v1, "onBufferTimeOut"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_2c

    const-string v0, ""

    :goto_28
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 279
    return-void

    .line 278
    :cond_2c
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public final a()Lcom/mintegral/msdk/videofeeds/c/d;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    return-object v0
.end method

.method public onPlayCompleted()V
    .registers 5

    .prologue
    .line 151
    sget-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    const-string v1, "onPlayCompleted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->a:Z

    if-nez v0, :cond_19

    .line 153
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/videocommon/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;ILjava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->a:Z

    .line 164
    :cond_18
    :goto_18
    return-void

    .line 156
    :cond_19
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->c:Z

    if-eqz v0, :cond_18

    .line 157
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/videocommon/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;ILjava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->c:Z

    goto :goto_18
.end method

.method public onPlayError(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 168
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->d:Z

    if-nez v0, :cond_10

    .line 169
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V

    .line 170
    iput-boolean v3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->d:Z

    .line 172
    :cond_10
    sget-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayError errorStr:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->h:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_2d

    .line 174
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->h:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/videocommon/download/a;->a(Z)V

    .line 1288
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_64

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    if-eqz v0, :cond_64

    .line 1289
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    .line 1290
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000024"

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1292
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v3

    :goto_51
    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    .line 1293
    invoke-static {v4, v2}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->n:Lcom/mintegral/msdk/base/b/w;

    if-eqz v1, :cond_64

    .line 1295
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->n:Lcom/mintegral/msdk/base/b/w;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J

    .line 1301
    :cond_64
    :goto_64
    return-void

    .line 1292
    :cond_65
    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6a} :catch_6c

    move-result-object v3

    goto :goto_51

    .line 1300
    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64
.end method

.method public onPlayProgress(II)V
    .registers 10

    .prologue
    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_137

    if-nez v0, :cond_8b

    .line 1315
    :try_start_4
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->e:Z

    if-nez v0, :cond_36

    .line 1316
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_36

    .line 1317
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTImp()I

    move-result v0

    if-eqz v0, :cond_119

    .line 1318
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTImp()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1319
    if-ne p1, v0, :cond_36

    .line 1320
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/c/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1321
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/c/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1322
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v0, :cond_33

    .line 1323
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    invoke-interface {v0}, Lcom/mintegral/msdk/videofeeds/c/d;->b()V

    .line 1325
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->e:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_131

    .line 2234
    :cond_36
    :goto_36
    :try_start_36
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_8b

    .line 2235
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->l:Ljava/util/Map;

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13c

    .line 2236
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2239
    :cond_50
    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2240
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2243
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_50

    .line 2244
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->m:Lcom/mintegral/msdk/base/common/e/b;

    if-eqz v0, :cond_50

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 2247
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2248
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_86} :catch_87

    goto :goto_50

    .line 2268
    :catch_87
    move-exception v0

    :try_start_88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :cond_8b
    :goto_8b
    sget-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    const-string v1, "onPlayStarted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->a:Z

    if-nez v0, :cond_185

    .line 196
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->b:Z

    if-nez v0, :cond_a7

    .line 197
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/videocommon/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;ILjava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->b:Z

    .line 210
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->h:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_b1

    .line 211
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->h:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Z)V

    .line 214
    :cond_b1
    sget-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayProgress timeCountDown:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v2

    .line 216
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v1, :cond_198

    const-string v1, ""

    :goto_ec
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->g()I

    move-result v4

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v5

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/f/f;->a(Ljava/lang/String;IIII)V

    .line 218
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->p:I

    if-ne v0, p1, :cond_116

    .line 219
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_1a0

    const-string v0, ""

    :goto_113
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 221
    :cond_116
    iput p1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->p:I
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_118} :catch_137

    .line 225
    :goto_118
    return-void

    .line 1328
    :cond_119
    :try_start_119
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/c/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1329
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videofeeds/c/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->e:Z

    .line 1331
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v0, :cond_36

    .line 1332
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    invoke-interface {v0}, Lcom/mintegral/msdk/videofeeds/c/d;->b()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_12f} :catch_131

    goto/16 :goto_36

    .line 1339
    :catch_131
    move-exception v0

    :try_start_132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_137

    goto/16 :goto_36

    .line 223
    :catch_137
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_118

    .line 2254
    :cond_13c
    :try_start_13c
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdUrlList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8b

    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->f:Z

    if-nez v0, :cond_8b

    .line 2255
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15e
    :goto_15e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_180

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2256
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->m:Lcom/mintegral/msdk/base/common/e/b;

    if-eqz v0, :cond_15e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15e

    .line 2261
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_15e

    .line 2264
    :cond_180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->f:Z
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_183} :catch_87

    goto/16 :goto_8b

    .line 201
    :cond_185
    :try_start_185
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->c:Z

    if-nez v0, :cond_a7

    .line 203
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/c/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/videocommon/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;ILjava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->c:Z

    goto/16 :goto_a7

    .line 216
    :cond_198
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ec

    .line 219
    :cond_1a0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a;->j:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1a5} :catch_137

    move-result-object v0

    goto/16 :goto_113
.end method

.method public onPlayProgressMS(II)V
    .registers 5

    .prologue
    .line 181
    sget-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    const-string v1, "onPlayProgressMS"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 403
    return-void
.end method

.method public onPlayStarted(I)V
    .registers 4

    .prologue
    .line 145
    sget-object v0, Lcom/mintegral/msdk/videofeeds/c/a;->g:Ljava/lang/String;

    const-string v1, "onPlayStarted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
