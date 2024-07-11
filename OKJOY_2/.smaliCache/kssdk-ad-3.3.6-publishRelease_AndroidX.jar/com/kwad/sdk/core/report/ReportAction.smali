.class public Lcom/kwad/sdk/core/report/ReportAction;
.super Lcom/kwad/sdk/core/report/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;,
        Lcom/kwad/sdk/core/report/ReportAction$b;,
        Lcom/kwad/sdk/core/report/ReportAction$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:J

.field public G:Lorg/json/JSONArray;

.field public H:Z

.field private I:J

.field private J:Ljava/lang/String;

.field private K:I

.field private L:J

.field private M:J

.field private N:J

.field private O:Lorg/json/JSONObject;

.field private P:Lorg/json/JSONObject;

.field private Q:J

.field private R:I

.field private S:I

.field private T:J

.field private U:J

.field private V:J

.field private W:J

.field private X:J

.field private Y:J

.field private Z:J

.field private aA:Lorg/json/JSONArray;

.field private aB:Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

.field private aC:Lorg/json/JSONArray;

.field private aa:I

.field private ab:I

.field private ac:Ljava/lang/String;

.field private ad:J

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:Lorg/json/JSONArray;

.field private ai:Lorg/json/JSONArray;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:J

.field private an:J

.field private ao:I

.field private ap:Ljava/lang/String;

.field private aq:Lcom/kwad/sdk/core/report/ReportAction$a;

.field private ar:I

.field private as:Ljava/lang/String;

.field private at:J

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:J

.field private ax:I

.field private ay:I

.field private az:I

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Lcom/kwad/sdk/core/scene/URLPackage;

.field public l:Lcom/kwad/sdk/core/scene/URLPackage;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:J

.field public t:Ljava/lang/String;

.field public u:I

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Lorg/json/JSONObject;

.field public z:J


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/report/a;)V
    .registers 9

    invoke-direct {p0}, Lcom/kwad/sdk/core/report/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->K:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->R:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->S:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->g:J

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aa:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ab:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ag:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->n:I

    new-instance v4, Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;-><init>(Lcom/kwad/sdk/core/report/ReportAction$1;)V

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->aB:Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->v:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->D:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->E:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->F:J

    const/4 v4, 0x3

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->ar:I

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->c:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->M:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->I:J

    invoke-static {}, Lcom/kwad/sdk/core/report/m;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->J:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/core/report/m;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->b:J

    invoke-static {}, Lcom/kwad/sdk/core/report/m;->e()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->L:J

    invoke-virtual {p1}, Lcom/kwad/sdk/core/report/a;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->U:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->d:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->W:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->e:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->X:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->f:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->Y:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->g:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->Z:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->i:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->d:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->l:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->e:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->m:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->f:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->n:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->g:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->j:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->h:J

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->o:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->aa:I

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->p:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->ab:I

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->q:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->ae:I

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->r:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->af:I

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->s:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->ag:I

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->t:Lorg/json/JSONArray;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->ah:Lorg/json/JSONArray;

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->u:Lorg/json/JSONArray;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->ai:Lorg/json/JSONArray;

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->v:Ljava/lang/String;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->aj:Ljava/lang/String;

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->A:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->ao:I

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->x:Ljava/lang/String;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->al:Ljava/lang/String;

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->y:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->am:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->z:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->an:J

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->h:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->c:J

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->B:Ljava/lang/String;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->i:Ljava/lang/String;

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->G:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->j:I

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->J:Lorg/json/JSONArray;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->aA:Lorg/json/JSONArray;

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->N:Ljava/lang/String;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->t:Ljava/lang/String;

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->O:Ljava/lang/String;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->x:Ljava/lang/String;

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->Q:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->v:I

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->P:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->u:I

    iget-wide v4, p1, Lcom/kwad/sdk/core/report/a;->R:J

    iput-wide v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->z:J

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->K:Lorg/json/JSONArray;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->aC:Lorg/json/JSONArray;

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->L:Lorg/json/JSONObject;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->y:Lorg/json/JSONObject;

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->U:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->C:I

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->V:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->D:I

    iget v4, p1, Lcom/kwad/sdk/core/report/a;->W:I

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->E:I

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->S:Ljava/lang/String;

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->w:Ljava/lang/String;

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->b:Lcom/kwad/sdk/internal/api/SceneImpl;

    if-eqz v4, :cond_ff

    :goto_ec
    invoke-virtual {v4}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->Q:J

    invoke-virtual {v4}, Lcom/kwad/sdk/internal/api/SceneImpl;->getUrlPackage()Lcom/kwad/sdk/core/scene/URLPackage;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    invoke-virtual {v4}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdStyle()I

    move-result v4

    iput v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->K:I

    goto :goto_10e

    :cond_ff
    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v4, :cond_10e

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    if-eqz v4, :cond_10e

    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    goto :goto_ec

    :cond_10e
    :goto_10e
    iget-object v4, p1, Lcom/kwad/sdk/core/report/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v4, :cond_203

    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->N:J

    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/c;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12e

    :try_start_122
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/kwad/sdk/core/report/ReportAction;->O:Lorg/json/JSONObject;
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_129} :catch_12a

    goto :goto_12e

    :catch_12a
    move-exception v5

    invoke-static {v5}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_12e
    :goto_12e
    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/c;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_144

    :try_start_138
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/kwad/sdk/core/report/ReportAction;->P:Lorg/json/JSONObject;
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13f} :catch_140

    goto :goto_144

    :catch_140
    move-exception v5

    invoke-static {v5}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_144
    :goto_144
    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->Q:J

    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/c;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    move-result v5

    iput v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->R:I

    iget v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->realShowType:I

    iput v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->S:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1ae

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->c(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->T:J

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->b(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->V:J

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->e(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->ad:J

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->d(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->ap:Ljava/lang/String;

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->g(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->as:Ljava/lang/String;

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->f(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->at:J

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->h(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->au:Ljava/lang/String;

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->i(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->aw:J

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v5}, Lcom/kwad/sdk/core/response/b/d;->j(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->av:Ljava/lang/String;

    iget-object v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPreloadData:Lcom/kwad/sdk/core/response/model/PreloadData;

    if-eqz v5, :cond_1ab

    iget-object v1, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPreloadData:Lcom/kwad/sdk/core/response/model/PreloadData;

    iget-boolean v1, v1, Lcom/kwad/sdk/core/response/model/PreloadData;->isPreload:Z

    :cond_1ab
    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->az:I

    goto :goto_1ed

    :cond_1ae
    const/4 v1, 0x2

    if-ne v5, v1, :cond_1d1

    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->T:J

    iget-object v5, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-wide v5, v5, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->creativeId:J

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->s:J

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->V:J

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->advertiserInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;

    iget-wide v5, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;->userId:J

    :goto_1ce
    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->ad:J

    goto :goto_1ed

    :cond_1d1
    const/4 v1, 0x4

    if-ne v5, v1, :cond_1ed

    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/c;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/live/mode/LiveInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->aB:Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

    invoke-static {v1}, Lcom/kwad/sdk/live/mode/a;->a(Lcom/kwad/sdk/live/mode/LiveInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;->liveStreamId:Ljava/lang/String;

    iget-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->aB:Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

    invoke-static {v1}, Lcom/kwad/sdk/live/mode/a;->c(Lcom/kwad/sdk/live/mode/LiveInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;->expTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/kwad/sdk/live/mode/a;->b(Lcom/kwad/sdk/live/mode/LiveInfo;)J

    move-result-wide v5

    goto :goto_1ce

    :cond_1ed
    :goto_1ed
    iget v1, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mMediaPlayerType:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->m:I

    iget v1, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsLeftSlipStatus:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ay:I

    iget v1, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPhotoResponseType:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->p:I

    iget-object v1, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    if-eqz v1, :cond_203

    iget-object v1, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/PageInfo;->pageType:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->A:I

    :cond_203
    iget-wide v5, p1, Lcom/kwad/sdk/core/report/a;->C:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_20d

    iget-wide v1, p1, Lcom/kwad/sdk/core/report/a;->C:J

    iput-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aw:J

    :cond_20d
    iget-object v1, p1, Lcom/kwad/sdk/core/report/a;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_219

    iget-object v1, p1, Lcom/kwad/sdk/core/report/a;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->av:Ljava/lang/String;

    :cond_219
    iget v1, p1, Lcom/kwad/sdk/core/report/a;->E:I

    if-eq v1, v0, :cond_221

    iget v0, p1, Lcom/kwad/sdk/core/report/a;->E:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->n:I

    :cond_221
    iget v0, p1, Lcom/kwad/sdk/core/report/a;->F:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->ax:I

    iget-object v0, p1, Lcom/kwad/sdk/core/report/a;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/kwad/sdk/core/report/a;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->r:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/core/report/ReportAction$a;->a()Lcom/kwad/sdk/core/report/ReportAction$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->aq:Lcom/kwad/sdk/core/report/ReportAction$a;

    iget v0, p1, Lcom/kwad/sdk/core/report/a;->M:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->o:I

    iget v0, p1, Lcom/kwad/sdk/core/report/a;->T:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->B:I

    iget-object v0, p1, Lcom/kwad/sdk/core/report/a;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_247

    iget-object v0, p1, Lcom/kwad/sdk/core/report/a;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->ak:Ljava/lang/String;

    :cond_247
    iget-object v0, p1, Lcom/kwad/sdk/core/report/a;->b:Lcom/kwad/sdk/internal/api/SceneImpl;

    if-nez v0, :cond_24f

    if-eqz v4, :cond_24f

    iget-object v0, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    :cond_24f
    if-eqz v0, :cond_25d

    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->Q:J

    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getUrlPackage()Lcom/kwad/sdk/core/scene/URLPackage;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    :cond_25d
    iget-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    if-eqz v0, :cond_283

    invoke-static {}, Lcom/kwad/sdk/core/scene/a;->a()Lcom/kwad/sdk/core/scene/a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    iget-object v1, v1, Lcom/kwad/sdk/core/scene/URLPackage;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/scene/a;->b(Ljava/lang/String;)Lcom/kwad/sdk/core/scene/EntryPackage;

    move-result-object v0

    iget-object v1, v0, Lcom/kwad/sdk/core/scene/EntryPackage;->entryPageSource:Ljava/lang/String;

    iput-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ac:Ljava/lang/String;

    iget-object v0, v0, Lcom/kwad/sdk/core/scene/EntryPackage;->entryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->ak:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/core/scene/a;->a()Lcom/kwad/sdk/core/scene/a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    iget-object v1, v1, Lcom/kwad/sdk/core/scene/URLPackage;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/scene/a;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/scene/URLPackage;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->l:Lcom/kwad/sdk/core/scene/URLPackage;

    :cond_283
    iget-wide v0, p1, Lcom/kwad/sdk/core/report/a;->k:J

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->F:J

    iget-object v0, p1, Lcom/kwad/sdk/core/report/a;->X:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->G:Lorg/json/JSONArray;

    iget-boolean p1, p1, Lcom/kwad/sdk/core/report/a;->Y:Z

    iput-boolean p1, p0, Lcom/kwad/sdk/core/report/ReportAction;->H:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/kwad/sdk/core/report/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->K:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->R:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->S:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->g:J

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aa:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ab:I

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ag:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->n:I

    new-instance v1, Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;-><init>(Lcom/kwad/sdk/core/report/ReportAction$1;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aB:Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->v:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->D:I

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->E:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->F:J

    :try_start_29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/report/ReportAction;->a(Lorg/json/JSONObject;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_36
    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/report/a;)Lcom/kwad/sdk/core/report/ReportAction;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/report/ReportAction;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/report/ReportAction;-><init>(Lcom/kwad/sdk/core/report/a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 13

    const-string v0, "preloadPhotoList"

    const-string v1, "clientExt"

    const-string v2, "recoExt"

    const-string v3, "referURLPackage"

    const-string v4, "urlPackage"

    const-string v5, "coverUrl"

    const-string v6, "appUninstalled"

    const-string v7, "appInstalled"

    const-string v8, "sessionId"

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/report/d;->a(Lorg/json/JSONObject;)V

    if-nez p1, :cond_18

    return-void

    :cond_18
    const/4 v9, 0x3

    :try_start_19
    iput v9, p0, Lcom/kwad/sdk/core/report/ReportAction;->ar:I

    const-string v9, "actionType"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/kwad/sdk/core/report/ReportAction;->M:J

    const-string v9, "timestamp"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/kwad/sdk/core/report/ReportAction;->I:J

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->J:Ljava/lang/String;

    :cond_37
    const-string v8, "seq"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->b:J

    const-string v8, "listId"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->L:J

    const-string v8, "position"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->U:J

    const-string v8, "entryId"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->ak:Ljava/lang/String;

    const-string v8, "pushUrl"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->al:Ljava/lang/String;

    const-string v8, "effectivePlayDuration"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->W:J

    const-string v8, "playDuration"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->X:J

    const-string v8, "startDuration"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->Y:J

    const-string v8, "stayDuration"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->Z:J

    const-string v8, "blockDuration"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->d:J

    const-string v8, "intervalDuration"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->e:J

    const-string v8, "allIntervalDuration"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->f:J

    const-string v8, "flowSdk"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->g:J

    const-string v8, "blockTimes"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->h:J

    const-string v8, "enterType"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->aa:I

    const-string v8, "leaveType"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->ab:I

    const-string v8, "likeStatus"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->ae:I

    const-string v8, "likeType"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->af:I

    const-string v8, "shareResult"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->ag:I

    const-string v8, "stayLength"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/kwad/sdk/core/report/ReportAction;->c:J

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    iput-object v7, p0, Lcom/kwad/sdk/core/report/ReportAction;->ah:Lorg/json/JSONArray;

    :cond_e7
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f3

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, p0, Lcom/kwad/sdk/core/report/ReportAction;->ai:Lorg/json/JSONArray;

    :cond_f3
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ff

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->aj:Ljava/lang/String;

    :cond_ff
    const-string v5, "llsid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->N:J

    const-string v5, "extra"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->O:Lorg/json/JSONObject;

    const-string v5, "impAdExtra"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->P:Lorg/json/JSONObject;

    const-string v5, "posId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->Q:J

    const-string v5, "adStyle"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->K:I

    const-string v5, "contentType"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->R:I

    const-string v5, "realShowType"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->S:I

    const-string v5, "photoId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/kwad/sdk/core/report/ReportAction;->T:J

    const-string v5, "photoDuration"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/kwad/sdk/core/report/ReportAction;->V:J

    const-string v5, "authorId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/kwad/sdk/core/report/ReportAction;->ad:J

    const-string v5, "entryPageSource"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->ac:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16c

    new-instance v5, Lcom/kwad/sdk/core/scene/URLPackage;

    invoke-direct {v5}, Lcom/kwad/sdk/core/scene/URLPackage;-><init>()V

    iput-object v5, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/kwad/sdk/core/scene/URLPackage;->parseJson(Lorg/json/JSONObject;)V

    :cond_16c
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_180

    new-instance v4, Lcom/kwad/sdk/core/scene/URLPackage;

    invoke-direct {v4}, Lcom/kwad/sdk/core/scene/URLPackage;-><init>()V

    iput-object v4, p0, Lcom/kwad/sdk/core/report/ReportAction;->l:Lcom/kwad/sdk/core/scene/URLPackage;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/kwad/sdk/core/scene/URLPackage;->parseJson(Lorg/json/JSONObject;)V

    :cond_180
    const-string v3, "commentId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kwad/sdk/core/report/ReportAction;->am:J

    const-string v3, "seenCount"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kwad/sdk/core/report/ReportAction;->an:J

    const-string v3, "clickType"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kwad/sdk/core/report/ReportAction;->ao:I

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->ap:Ljava/lang/String;

    :cond_1a4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b8

    new-instance v2, Lcom/kwad/sdk/core/report/ReportAction$a;

    invoke-direct {v2}, Lcom/kwad/sdk/core/report/ReportAction$a;-><init>()V

    iput-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->aq:Lcom/kwad/sdk/core/report/ReportAction$a;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/core/report/ReportAction$a;->a(Lorg/json/JSONObject;)V

    :cond_1b8
    const-string v1, "playerType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->m:I

    const-string v1, "tabName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->i:Ljava/lang/String;

    const-string v1, "tubeName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->as:Ljava/lang/String;

    const-string v1, "tubeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->at:J

    const-string v1, "episodeName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->au:Ljava/lang/String;

    const-string v1, "trendId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aw:J

    const-string v1, "trendName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->av:Ljava/lang/String;

    const-string v1, "preloadType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->az:I

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_204

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->aA:Lorg/json/JSONArray;

    :cond_204
    const-string v0, "closeType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->ax:I

    const-string v0, "hotCompType"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->n:I

    const-string v0, "nextPageType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->j:I

    iget-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->aB:Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

    const-string v1, "liveLogInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;->parseJson(Lorg/json/JSONObject;)V

    const-string v0, "failUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->q:Ljava/lang/String;

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->r:Ljava/lang/String;

    const-string v0, "creativeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->s:J

    const-string v0, "isLeftSlipStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->ay:I

    const-string v0, "photoResponseType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->p:I

    const-string v0, "refreshType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->o:I

    const-string v0, "moduleName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->t:Ljava/lang/String;

    const-string v0, "componentPosition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->x:Ljava/lang/String;

    const-string v0, "num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->v:I

    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->u:I

    const-string v0, "appRunningInfoList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->aC:Lorg/json/JSONArray;

    const-string v0, "downloadDuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->z:J

    const-string v0, "pageType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->A:I

    const-string v0, "guideTimes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->B:I

    const-string v0, "speedLimitStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->C:I

    const-string v0, "speedLimitThreshold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->D:I

    const-string v0, "currentRealDownloadSpeed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->E:I

    const-string v0, "appExt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->y:Lorg/json/JSONObject;

    const-string v0, "cacheFailedReason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->w:Ljava/lang/String;

    const-string v0, "timeSpend"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->F:J

    const-string v0, "sdkPlatform"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/ReportAction;->G:Lorg/json/JSONArray;

    const-string v0, "isKsUnion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/report/ReportAction;->H:Z
    :try_end_2d7
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d7} :catch_2d8

    goto :goto_2dc

    :catch_2d8
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_2dc
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 6

    invoke-super {p0}, Lcom/kwad/sdk/core/report/d;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ar:I

    const-string v2, "uiType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->I:J

    const-string v3, "timestamp"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->J:Ljava/lang/String;

    const-string v2, "sessionId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->b:J

    const-string v3, "seq"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->L:J

    const-string v3, "listId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->U:J

    const-string v3, "position"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ak:Ljava/lang/String;

    const-string v2, "entryId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->al:Ljava/lang/String;

    const-string v2, "pushUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->M:J

    const-string v3, "actionType"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->N:J

    const-string v3, "llsid"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->O:Lorg/json/JSONObject;

    if-eqz v1, :cond_53

    const-string v2, "extra"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_53
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->P:Lorg/json/JSONObject;

    if-eqz v1, :cond_5c

    const-string v2, "impAdExtra"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_5c
    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->Q:J

    const-string v3, "posId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->K:I

    if-lez v1, :cond_6c

    const-string v2, "adStyle"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_6c
    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->R:I

    const-string v2, "contentType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->S:I

    const-string v2, "realShowType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->T:J

    const-string v3, "photoId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->V:J

    const-string v3, "photoDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->Y:J

    const-string v3, "startDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->X:J

    const-string v3, "playDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->Z:J

    const-string v3, "stayDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->e:J

    const-string v3, "intervalDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->f:J

    const-string v3, "allIntervalDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->g:J

    const-string v3, "flowSdk"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->W:J

    const-string v3, "effectivePlayDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->d:J

    const-string v3, "blockDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->h:J

    const-string v3, "blockTimes"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aa:I

    const-string v2, "enterType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ab:I

    const-string v2, "leaveType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ac:Ljava/lang/String;

    const-string v2, "entryPageSource"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    if-eqz v1, :cond_e9

    invoke-virtual {v1}, Lcom/kwad/sdk/core/scene/URLPackage;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "urlPackage"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_e9
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->l:Lcom/kwad/sdk/core/scene/URLPackage;

    if-eqz v1, :cond_f6

    invoke-virtual {v1}, Lcom/kwad/sdk/core/scene/URLPackage;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "referURLPackage"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_f6
    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->c:J

    const-string v3, "stayLength"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ad:J

    const-string v3, "authorId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ae:I

    const-string v2, "likeStatus"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->af:I

    const-string v2, "likeType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ag:I

    const-string v2, "shareResult"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ah:Lorg/json/JSONArray;

    if-eqz v1, :cond_122

    const-string v2, "appInstalled"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_122
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ai:Lorg/json/JSONArray;

    if-eqz v1, :cond_12b

    const-string v2, "appUninstalled"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_12b
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13a

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->q:Ljava/lang/String;

    const-string v2, "failUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13a
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_149

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->r:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_149
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_158

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->t:Ljava/lang/String;

    const-string v2, "moduleName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_158
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_167

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->x:Ljava/lang/String;

    const-string v2, "componentPosition"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_167
    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->v:I

    if-lez v1, :cond_170

    const-string v2, "num"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_170
    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->u:I

    if-eqz v1, :cond_179

    const-string v2, "state"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_179
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_188

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->w:Ljava/lang/String;

    const-string v2, "cacheFailedReason"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_188
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aj:Ljava/lang/String;

    const-string v2, "coverUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->am:J

    const-string v3, "commentId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->an:J

    const-string v3, "seenCount"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ao:I

    const-string v2, "clickType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ap:Ljava/lang/String;

    const-string v2, "recoExt"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aq:Lcom/kwad/sdk/core/report/ReportAction$a;

    if-eqz v1, :cond_1b4

    const-string v2, "clientExt"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    :cond_1b4
    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->m:I

    const-string v2, "playerType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->i:Ljava/lang/String;

    const-string v2, "tabName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->as:Ljava/lang/String;

    const-string v2, "tubeName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->at:J

    const-string v3, "tubeId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->au:Ljava/lang/String;

    const-string v2, "episodeName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aw:J

    const-string v3, "trendId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->av:Ljava/lang/String;

    const-string v2, "trendName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->az:I

    const-string v2, "preloadType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aA:Lorg/json/JSONArray;

    if-eqz v1, :cond_1fd

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1fd

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aA:Lorg/json/JSONArray;

    const-string v2, "preloadPhotoList"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_1fd
    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_207

    const-string v2, "hotCompType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_207
    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ax:I

    const-string v2, "closeType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->j:I

    const-string v2, "nextPageType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aB:Lcom/kwad/sdk/core/report/ReportAction$LiveLogInfo;

    const-string v2, "liveLogInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->s:J

    const-string v3, "creativeId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->ay:I

    const-string v2, "isLeftSlipStatus"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->p:I

    const-string v2, "photoResponseType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->o:I

    const-string v2, "refreshType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->aC:Lorg/json/JSONArray;

    const-string v2, "appRunningInfoList"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->y:Lorg/json/JSONObject;

    if-eqz v1, :cond_248

    const-string v2, "appExt"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_248
    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->z:J

    const-string v3, "downloadDuration"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->A:I

    const-string v2, "pageType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->B:I

    const-string v2, "guideTimes"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->C:I

    const-string v2, "speedLimitStatus"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->D:I

    const-string v2, "speedLimitThreshold"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->E:I

    const-string v2, "currentRealDownloadSpeed"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->F:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_27f

    const-string v3, "timeSpend"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    :cond_27f
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->G:Lorg/json/JSONArray;

    if-eqz v1, :cond_288

    const-string v2, "sdkPlatform"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_288
    iget-boolean v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->H:Z

    const-string v2, "isKsUnion"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[actionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->M:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",moduleName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",componentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",tubeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->at:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",entryId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->ak:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",blockDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",blockTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",intervalDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",allIntervalDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",flowSdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",trendId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->aw:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",trendName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->av:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",tubeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->as:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",episodeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->au:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->O:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",impAdExtra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->P:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",actionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->U:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",contentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",playerType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",preloadType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->az:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",realShowType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",photoDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->V:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",startDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->Y:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",playDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->X:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",stayDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->Z:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",enterType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->aa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",entryPageSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",stayLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_17c

    const-string v1, ",hotCompType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/kwad/sdk/core/report/ReportAction;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_17c
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    if-eqz v1, :cond_18d

    const-string v1, ",urlPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/report/ReportAction;->k:Lcom/kwad/sdk/core/scene/URLPackage;

    iget v3, v3, Lcom/kwad/sdk/core/scene/URLPackage;->page:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_18d
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->l:Lcom/kwad/sdk/core/scene/URLPackage;

    if-eqz v1, :cond_19e

    const-string v1, ",referPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/report/ReportAction;->l:Lcom/kwad/sdk/core/scene/URLPackage;

    iget v3, v3, Lcom/kwad/sdk/core/scene/URLPackage;->page:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_19e
    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->v:I

    if-le v1, v2, :cond_1ad

    const-string v1, ",num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1ad
    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->u:I

    if-eqz v1, :cond_1bc

    const-string v1, ",state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1bc
    iget-object v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->y:Lorg/json/JSONObject;

    if-eqz v1, :cond_1cb

    const-string v1, ",appExt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->y:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1cb
    iget-wide v1, p0, Lcom/kwad/sdk/core/report/ReportAction;->F:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1de

    const-string v1, ",timeSpend:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/kwad/sdk/core/report/ReportAction;->F:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_1de
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
