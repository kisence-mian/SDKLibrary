.class public final Lcom/mintegral/msdk/videocommon/download/a;
.super Ljava/lang/Object;
.source "CampaignDownLoadTask.java"

# interfaces
.implements Lcom/mintegral/msdk/f/b;
.implements Ljava/io/Serializable;


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/mintegral/msdk/base/b/v;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Lcom/mintegral/msdk/videocommon/download/d;

.field private G:Landroid/os/Handler;

.field private H:I

.field private I:Ljava/io/File;

.field private a:Z

.field private b:Ljava/lang/Runnable;

.field private volatile c:I

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mintegral/msdk/videocommon/download/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/mintegral/msdk/videocommon/download/d;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Ljava/lang/Class;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Class;

.field private j:Ljava/lang/Object;

.field private k:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Landroid/content/Context;

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:J

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:J

.field private y:Lcom/mintegral/msdk/videocommon/listener/a;

.field private z:Lcom/mintegral/msdk/videocommon/listener/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->a:Z

    .line 78
    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->m:Z

    .line 124
    iput-boolean v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->r:Z

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->s:J

    .line 130
    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->t:I

    .line 134
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->v:Z

    .line 135
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->w:Z

    .line 143
    const/16 v0, 0x64

    iput v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    .line 144
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->B:Z

    .line 147
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->D:Z

    .line 152
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/a$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/videocommon/download/a$1;-><init>(Lcom/mintegral/msdk/videocommon/download/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->F:Lcom/mintegral/msdk/videocommon/download/d;

    .line 162
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/a$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/videocommon/download/a$2;-><init>(Lcom/mintegral/msdk/videocommon/download/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->G:Landroid/os/Handler;

    .line 202
    if-nez p1, :cond_3d

    if-nez p2, :cond_3d

    .line 2278
    :cond_3c
    :goto_3c
    return-void

    .line 205
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->x:J

    .line 206
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->n:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 208
    iput-object p4, p0, Lcom/mintegral/msdk/videocommon/download/a;->l:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lcom/mintegral/msdk/videocommon/download/a;->f:Ljava/util/concurrent/ExecutorService;

    .line 210
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_77

    .line 211
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 212
    const-string v0, "CampaignDownLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=========CampaignDownLoadTask: title:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_77
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 1644
    const-string v0, ""

    .line 1645
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 1646
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1647
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_89
    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->c:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    .line 217
    const-string v0, "CampaignDownLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoLocalPath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    :try_start_ce
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2258
    const/4 v0, 0x0

    .line 2259
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 2260
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 2262
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2266
    :cond_ef
    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 2267
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->I:Ljava/io/File;

    if-eqz v1, :cond_103

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->I:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12a

    .line 2268
    :cond_103
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/.nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->I:Ljava/io/File;

    .line 2269
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->I:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12a

    .line 2270
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->I:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2274
    :cond_12a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Z)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_12e} :catch_130

    goto/16 :goto_3c

    .line 2276
    :catch_130
    move-exception v0

    .line 2277
    const-string v1, "CampaignDownLoadTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c
.end method

.method public static a(DD)D
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 522
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 523
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, v1, v3, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/a;I)I
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    return p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/a;J)J
    .registers 4

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/base/b/v;)Lcom/mintegral/msdk/base/b/v;
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .registers 13

    .prologue
    const-wide/16 v0, 0x0

    .line 990
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v9

    .line 992
    iget-wide v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->x:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_52

    move-wide v4, v0

    .line 997
    :goto_19
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/mintegral/msdk/videocommon/download/a;->o:J

    iget v8, p0, Lcom/mintegral/msdk/videocommon/download/a;->H:I

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;ILjava/lang/String;JI)V

    .line 999
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->e(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v1, p2}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v9, v1}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J

    .line 1005
    return-void

    .line 995
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->x:J

    sub-long/2addr v0, v2

    move-wide v4, v0

    goto :goto_19
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/a;JI)V
    .registers 11

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 48
    .line 2788
    iput-wide p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->s:J

    .line 2792
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->o:J

    mul-long/2addr v0, v2

    .line 2794
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-ltz v0, :cond_6c

    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->B:Z

    if-nez v0, :cond_6c

    if-eq p3, v5, :cond_6c

    .line 2795
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_20

    .line 2796
    if-ne p3, v6, :cond_10a

    .line 2800
    :cond_20
    iput-boolean v4, p0, Lcom/mintegral/msdk/videocommon/download/a;->B:Z

    .line 2801
    const-string v0, "CampaignDownLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video load sucessed state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mReadyRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 2804
    :cond_56
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->y:Lcom/mintegral/msdk/videocommon/listener/a;

    if-eqz v0, :cond_61

    .line 2805
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->y:Lcom/mintegral/msdk/videocommon/listener/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 2807
    :cond_61
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->z:Lcom/mintegral/msdk/videocommon/listener/a;

    if-eqz v0, :cond_6c

    .line 2808
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->z:Lcom/mintegral/msdk/videocommon/listener/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 2819
    :cond_6c
    :goto_6c
    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->a:Z

    if-nez v0, :cond_97

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_97

    .line 2820
    iput-boolean v4, p0, Lcom/mintegral/msdk/videocommon/download/a;->a:Z

    .line 2821
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    if-nez v0, :cond_8e

    .line 2822
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/v;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    .line 2824
    :cond_8e
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    iget v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/mintegral/msdk/base/b/v;->a(Ljava/lang/String;JI)J

    .line 2826
    :cond_97
    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->m:Z

    if-eqz v0, :cond_10a

    .line 2827
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_ec

    .line 2828
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a5
    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/d;

    .line 2829
    if-eqz v0, :cond_a5

    .line 2830
    invoke-interface {v0, p1, p2, p3}, Lcom/mintegral/msdk/videocommon/download/d;->a(JI)V

    goto :goto_a5

    .line 2811
    :cond_b7
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->y:Lcom/mintegral/msdk/videocommon/listener/a;

    if-eqz v1, :cond_d1

    .line 2812
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->y:Lcom/mintegral/msdk/videocommon/listener/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file is not effective"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/mintegral/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    :cond_d1
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->z:Lcom/mintegral/msdk/videocommon/listener/a;

    if-eqz v1, :cond_6c

    .line 2815
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->z:Lcom/mintegral/msdk/videocommon/listener/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file is not effective"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/mintegral/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 2834
    :cond_ec
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->e:Lcom/mintegral/msdk/videocommon/download/d;

    if-eqz v0, :cond_10a

    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    if-eq v0, v6, :cond_102

    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    if-eq v0, v5, :cond_102

    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_102

    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10a

    .line 2836
    :cond_102
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->e:Lcom/mintegral/msdk/videocommon/download/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/mintegral/msdk/videocommon/download/d;->a(JI)V

    .line 2837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->e:Lcom/mintegral/msdk/videocommon/download/d;

    .line 48
    :cond_10a
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mintegral/msdk/videocommon/download/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/a;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/videocommon/download/a;)J
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->s:J

    return-wide v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 48
    .line 2930
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->t:I

    .line 2931
    const-string v0, "CampaignDownLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retryReq"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    :try_start_1c
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->n:Landroid/content/Context;

    if-eqz v0, :cond_46

    .line 2934
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->n:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2935
    const/4 v1, 0x0

    .line 2936
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_62

    .line 2937
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2939
    :goto_2f
    if-eqz v0, :cond_46

    .line 2940
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 2941
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_3e} :catch_42

    move-result v0

    if-nez v0, :cond_46

    .line 2954
    :goto_41
    return-void

    .line 2948
    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2951
    :cond_46
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->t:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_57

    .line 2952
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/a;->q()V

    .line 2954
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->G:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_41

    .line 2957
    :cond_57
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/a;->r()V

    .line 2958
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/mintegral/msdk/videocommon/download/a;->a(ILjava/lang/String;)V

    .line 2959
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Ljava/lang/String;)V

    goto :goto_41

    :cond_62
    move-object v0, v1

    goto :goto_2f
.end method

.method static synthetic c(Lcom/mintegral/msdk/videocommon/download/a;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    return v0
.end method

.method private c(Z)V
    .registers 8

    .prologue
    const/4 v4, 0x2

    .line 708
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/v;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/b/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/p;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/p;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->s:J

    .line 713
    iget v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    if-eq v1, v4, :cond_2d

    .line 714
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/p;->d()I

    move-result v1

    iput v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 716
    :cond_2d
    if-eqz p1, :cond_36

    iget v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 717
    iput v4, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 719
    :cond_36
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/p;->c()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->o:J

    .line 720
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/p;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4d

    .line 721
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->x:J

    .line 724
    :cond_4d
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f5

    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->v:Z

    if-nez v0, :cond_f5

    .line 726
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dltmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    .line 751
    :cond_bf
    :goto_bf
    return-void

    .line 733
    :cond_c0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dltmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    goto :goto_bf

    .line 736
    :cond_ea
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/a;->q()V

    .line 737
    const-string v0, "CampaignDownLoadTask"

    const-string v1, "restore state==5 \u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    .line 740
    :cond_f5
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    if-eqz v0, :cond_bf

    .line 741
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_103

    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    if-nez v0, :cond_150

    :cond_103
    const-string v0, ""

    .line 742
    :goto_105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    .line 743
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_bf

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dltmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    goto/16 :goto_bf

    .line 741
    :cond_150
    const-string v0, ".dltmp"

    goto :goto_105
.end method

.method static synthetic d(Lcom/mintegral/msdk/videocommon/download/a;)Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->a:Z

    return v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/videocommon/download/a;)V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videocommon/download/a;->c(Z)V

    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/videocommon/download/a;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/videocommon/download/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/videocommon/download/a;)J
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->o:J

    return-wide v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/videocommon/download/a;)Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->r:Z

    return v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/videocommon/download/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/videocommon/download/a;)Lcom/mintegral/msdk/base/b/v;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    return-object v0
.end method

.method static synthetic n(Lcom/mintegral/msdk/videocommon/download/a;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/videocommon/download/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->G:Landroid/os/Handler;

    return-object v0
.end method

.method private q()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 885
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    if-nez v0, :cond_17

    .line 886
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/v;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    .line 891
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/v;->a(Ljava/lang/String;)V

    .line 892
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 895
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_34} :catch_37
    .catchall {:try_start_17 .. :try_end_34} :catchall_42

    .line 900
    :cond_34
    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 901
    :goto_36
    return-void

    .line 898
    :catch_37
    move-exception v0

    :try_start_38
    const-string v0, "CampaignDownLoadTask"

    const-string v1, "del DB or file failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_42

    .line 900
    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    goto :goto_36

    :catchall_42
    move-exception v0

    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    throw v0
.end method

.method private r()V
    .registers 6

    .prologue
    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->g:Ljava/lang/Class;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->h:Ljava/lang/Object;

    if-nez v0, :cond_3f

    .line 967
    :cond_8
    const-string v0, "com.mintegral.msdk.reward.b.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->g:Ljava/lang/Class;

    .line 968
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->h:Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->g:Ljava/lang/Class;

    const-string v1, "insertExcludeId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/mintegral/msdk/base/entity/CampaignEx;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->h:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a;->l:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    :cond_3f
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->i:Ljava/lang/Class;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->j:Ljava/lang/Object;

    if-nez v0, :cond_7e

    .line 976
    :cond_47
    const-string v0, "com.mintegral.msdk.mtgnative.c.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->i:Ljava/lang/Class;

    .line 977
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->i:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->j:Ljava/lang/Object;

    .line 978
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->i:Ljava/lang/Class;

    const-string v1, "insertExcludeId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/mintegral/msdk/base/entity/CampaignEx;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->j:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a;->l:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    .line 986
    :cond_7e
    :goto_7e
    return-void

    .line 984
    :catch_7f
    move-exception v0

    const-string v0, "CampaignDownLoadTask"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    .prologue
    .line 762
    iput p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    .line 763
    const-string v0, "CampaignDownLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mReadyRate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public final a(JZ)V
    .registers 7

    .prologue
    .line 535
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->A:I

    if-nez v0, :cond_18

    .line 536
    :cond_a
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->o:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_18

    if-nez p3, :cond_18

    .line 537
    const-string v0, "File downloaded is smaller than the file"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/download/a;->a(Ljava/lang/String;)V

    .line 546
    :goto_17
    return-void

    .line 541
    :cond_18
    const-string v0, "CampaignDownLoadTask"

    const-string v1, "=========\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 543
    const/4 v1, 0x5

    iput v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 544
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 545
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_17
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 2

    .prologue
    .line 699
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 700
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/videocommon/download/d;)V
    .registers 3

    .prologue
    .line 772
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_9

    .line 773
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_9
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/videocommon/listener/a;)V
    .registers 2

    .prologue
    .line 754
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->y:Lcom/mintegral/msdk/videocommon/listener/a;

    .line 755
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->y:Lcom/mintegral/msdk/videocommon/listener/a;

    if-eqz v0, :cond_12

    .line 550
    const-string v0, "CampaignDownLoadTask"

    const-string v1, "video load retry fail"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->y:Lcom/mintegral/msdk/videocommon/listener/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_12
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->z:Lcom/mintegral/msdk/videocommon/listener/a;

    if-eqz v0, :cond_1d

    .line 555
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->z:Lcom/mintegral/msdk/videocommon/listener/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_1d
    const/4 v0, 0x4

    iput v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 558
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 559
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 560
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->D:Z

    .line 228
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->D:Z

    return v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->x:J

    return-wide v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 1014
    iput p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->H:I

    .line 1015
    return-void
.end method

.method public final b(Lcom/mintegral/msdk/videocommon/download/d;)V
    .registers 2

    .prologue
    .line 778
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->e:Lcom/mintegral/msdk/videocommon/download/d;

    .line 779
    return-void
.end method

.method public final b(Lcom/mintegral/msdk/videocommon/listener/a;)V
    .registers 2

    .prologue
    .line 758
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->z:Lcom/mintegral/msdk/videocommon/listener/a;

    .line 759
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/a;->r()V

    .line 593
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/mintegral/msdk/videocommon/download/a;->a(ILjava/lang/String;)V

    .line 594
    const/4 v0, 0x4

    iput v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 595
    return-void
.end method

.method public final b(Z)V
    .registers 2

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/mintegral/msdk/videocommon/download/a;->w:Z

    .line 237
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .registers 3

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->o:J

    return-wide v0
.end method

.method public final e()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final f()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 567
    const-string v0, "CampaignDownLoadTask"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 569
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 570
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->m:Z

    .line 576
    :goto_15
    return-void

    .line 572
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 2290
    new-instance v1, Lcom/mintegral/msdk/videocommon/download/a$3;

    invoke-direct {v1, p0, v0}, Lcom/mintegral/msdk/videocommon/download/a$3;-><init>(Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->b:Ljava/lang/Runnable;

    .line 573
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 574
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->m:Z

    goto :goto_15
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->m:Z

    return v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 603
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    return v0
.end method

.method public final i()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 607
    iput v4, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 608
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    if-nez v0, :cond_19

    .line 609
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/v;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    .line 612
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->C:Lcom/mintegral/msdk/base/b/v;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->p:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/base/b/v;->a(Ljava/lang/String;JI)J

    .line 613
    return-void
.end method

.method public final j()Ljava/lang/String;
    .registers 7

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    :try_start_20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 623
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 624
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 625
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4f

    .line 626
    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    .line 627
    const-string v0, ""
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_40} :catch_5b

    .line 646
    :goto_40
    iget v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 647
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/a;->q()V

    .line 649
    :cond_4e
    return-object v0

    .line 629
    :cond_4f
    :try_start_4f
    const-string v0, "file length is 0 "

    goto :goto_40

    .line 632
    :cond_52
    const-string v0, "file can not readed "

    goto :goto_40

    .line 635
    :cond_55
    const-string v0, "file is not file "

    goto :goto_40

    .line 638
    :cond_58
    const-string v0, "file is not exist "
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_5a} :catch_5b

    goto :goto_40

    .line 640
    :catch_5b
    move-exception v0

    .line 641
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_63

    .line 642
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 644
    :cond_63
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_40
.end method

.method public final k()Ljava/lang/String;
    .registers 7

    .prologue
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dltmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    :try_start_26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 660
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 661
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 662
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_55

    .line 663
    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->u:Ljava/lang/String;

    .line 664
    const-string v0, ""
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_46} :catch_61

    .line 683
    :goto_46
    iget v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_54

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 684
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/a;->q()V

    .line 686
    :cond_54
    return-object v0

    .line 666
    :cond_55
    :try_start_55
    const-string v0, "file length is 0 "

    goto :goto_46

    .line 669
    :cond_58
    const-string v0, "file can not readed "

    goto :goto_46

    .line 672
    :cond_5b
    const-string v0, "file is not file "

    goto :goto_46

    .line 675
    :cond_5e
    const-string v0, "file is not exist "
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_46

    .line 677
    :catch_61
    move-exception v0

    .line 678
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_69

    .line 679
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 681
    :cond_69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_46
.end method

.method public final l()Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method public final m()V
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    .line 848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 851
    :cond_7
    return-void
.end method

.method public final n()J
    .registers 3

    .prologue
    .line 868
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->s:J

    return-wide v0
.end method

.method public final o()Lcom/mintegral/msdk/videocommon/download/d;
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->F:Lcom/mintegral/msdk/videocommon/download/d;

    return-object v0
.end method

.method public final onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 1022
    :try_start_0
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->s:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 1027
    :goto_6
    return-void

    .line 1024
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public final onCacheError(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 1031
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/download/a;->a(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public final p()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 910
    :try_start_1
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/a;->q()V

    .line 911
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 912
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_22
    .catchall {:try_start_1 .. :try_end_d} :catchall_2d

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 924
    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    .line 925
    :goto_13
    return-void

    .line 915
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_1f

    .line 918
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/a;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/a/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_22
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2d

    .line 924
    :cond_1f
    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    goto :goto_13

    .line 922
    :catch_22
    move-exception v0

    :try_start_23
    const-string v0, "CampaignDownLoadTask"

    const-string v1, "del file is failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2d

    .line 924
    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    goto :goto_13

    :catchall_2d
    move-exception v0

    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/a;->c:I

    throw v0
.end method
