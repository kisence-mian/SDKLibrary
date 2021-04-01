.class public Lcom/kwad/sdk/c/f/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/f/g$b;,
        Lcom/kwad/sdk/c/f/g$a;
    }
.end annotation


# instance fields
.field private A:Lcom/kwad/sdk/c/f/g$a;

.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:I

.field public r:I

.field private s:J

.field public t:I

.field public u:I

.field public v:I

.field public w:Lorg/json/JSONArray;

.field public x:Lorg/json/JSONArray;

.field public y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->i:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->q:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->r:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->v:I

    return-void
.end method

.method constructor <init>(Lcom/kwad/sdk/c/f/a;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->i:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->q:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->r:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->v:I

    iget-wide v0, p1, Lcom/kwad/sdk/c/f/a;->b:J

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->f:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->b:J

    invoke-static {}, Lcom/kwad/sdk/c/f/i;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->c:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/c/f/i;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->d:J

    invoke-static {}, Lcom/kwad/sdk/c/f/i;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->e:J

    iget-wide v0, p1, Lcom/kwad/sdk/c/f/a;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->k:J

    iget-wide v0, p1, Lcom/kwad/sdk/c/f/a;->d:J

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->m:J

    iget-wide v0, p1, Lcom/kwad/sdk/c/f/a;->e:J

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->n:J

    iget-wide v0, p1, Lcom/kwad/sdk/c/f/a;->f:J

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->o:J

    iget-wide v0, p1, Lcom/kwad/sdk/c/f/a;->g:J

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->p:J

    iget v0, p1, Lcom/kwad/sdk/c/f/a;->h:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->q:I

    iget v0, p1, Lcom/kwad/sdk/c/f/a;->i:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->r:I

    iget v0, p1, Lcom/kwad/sdk/c/f/a;->j:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->t:I

    iget v0, p1, Lcom/kwad/sdk/c/f/a;->k:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->u:I

    iget v0, p1, Lcom/kwad/sdk/c/f/a;->l:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->v:I

    iget-object v0, p1, Lcom/kwad/sdk/c/f/a;->m:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->w:Lorg/json/JSONArray;

    iget-object v0, p1, Lcom/kwad/sdk/c/f/a;->n:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->x:Lorg/json/JSONArray;

    iget-object v0, p1, Lcom/kwad/sdk/c/f/a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->y:Ljava/lang/String;

    iget-object v0, p1, Lcom/kwad/sdk/c/f/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_a8

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/c/f/g;->g:J

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/c/f/g;->h:J

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/c/f/g;->i:I

    iget v1, p0, Lcom/kwad/sdk/c/f/g;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_af

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/c;->k(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/c/f/g;->j:J

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/c;->n(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/c/f/g;->l:J

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/c;->b(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/c/f/g;->s:J

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->m(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->z:Ljava/lang/String;

    :cond_a8
    :goto_a8
    invoke-static {}, Lcom/kwad/sdk/c/f/g$a;->a()Lcom/kwad/sdk/c/f/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->A:Lcom/kwad/sdk/c/f/g$a;

    return-void

    :cond_af
    const/4 v2, 0x2

    if-ne v1, v2, :cond_a8

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->d(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/c/f/g;->j:J

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->w(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->l:J

    goto :goto_a8
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->i:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->q:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->r:I

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->v:I

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/c/f/g;->a(Lorg/json/JSONObject;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_14
.end method

.method public static a(Lcom/kwad/sdk/c/f/a;)Lcom/kwad/sdk/c/f/g;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/c/f/g;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/f/g;-><init>(Lcom/kwad/sdk/c/f/a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string v0, "actionType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->f:J

    const-string v0, "actionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "actionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->a:Ljava/lang/String;

    :cond_1b
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->b:J

    const-string v0, "sessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "sessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->c:Ljava/lang/String;

    :cond_33
    const-string v0, "seq"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->d:J

    const-string v0, "listId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->e:J

    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->k:J

    const-string v0, "effectivePlayDuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->m:J

    const-string v0, "playDuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->n:J

    const-string v0, "startDuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->o:J

    const-string v0, "stayDuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->p:J

    const-string v0, "enterType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->q:I

    const-string v0, "leaveType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->r:I

    const-string v0, "likeStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->t:I

    const-string v0, "likeType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->u:I

    const-string v0, "shareResult"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->v:I

    const-string v0, "appInstalled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string v0, "appInstalled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->w:Lorg/json/JSONArray;

    :cond_a3
    const-string v0, "appUninstalled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "appUninstalled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->x:Lorg/json/JSONArray;

    :cond_b3
    const-string v0, "coverUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    const-string v0, "coverUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->y:Ljava/lang/String;

    :cond_c3
    const-string v0, "llsid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->g:J

    const-string v0, "posId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->h:J

    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/c/f/g;->i:I

    const-string v0, "photoId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->j:J

    const-string v0, "photoDuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->l:J

    const-string v0, "authorId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/c/f/g;->s:J

    const-string v0, "clientExt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/kwad/sdk/c/f/g$a;

    invoke-direct {v0}, Lcom/kwad/sdk/c/f/g$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/c/f/g;->A:Lcom/kwad/sdk/c/f/g$a;

    iget-object v0, p0, Lcom/kwad/sdk/c/f/g;->A:Lcom/kwad/sdk/c/f/g$a;

    const-string v1, "clientExt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/f/g$a;->a(Lorg/json/JSONObject;)V
    :try_end_10d
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_10d} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10d} :catch_115

    goto/16 :goto_2

    :catch_10f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :catch_115
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/c/f/g;->a:Ljava/lang/String;

    const-string v2, "actionId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->b:J

    const-string v1, "timestamp"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/c/f/g;->c:Ljava/lang/String;

    const-string v2, "sessionId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->d:J

    const-string v1, "seq"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->e:J

    const-string v1, "listId"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->k:J

    const-string v1, "position"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->f:J

    const-string v1, "actionType"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->g:J

    const-string v1, "llsid"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->h:J

    const-string v1, "posId"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/c/f/g;->i:I

    const-string v2, "contentType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->j:J

    const-string v1, "photoId"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->l:J

    const-string v1, "photoDuration"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->o:J

    const-string v1, "startDuration"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->n:J

    const-string v1, "playDuration"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->p:J

    const-string v1, "stayDuration"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->m:J

    const-string v1, "effectivePlayDuration"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/c/f/g;->q:I

    const-string v2, "enterType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/c/f/g;->r:I

    const-string v2, "leaveType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-wide v2, p0, Lcom/kwad/sdk/c/f/g;->s:J

    const-string v1, "authorId"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/c/f/g;->t:I

    const-string v2, "likeStatus"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/c/f/g;->u:I

    const-string v2, "likeType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/c/f/g;->v:I

    const-string v2, "shareResult"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/c/f/g;->w:Lorg/json/JSONArray;

    if-eqz v1, :cond_a8

    const-string v2, "appInstalled"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_a8
    iget-object v1, p0, Lcom/kwad/sdk/c/f/g;->x:Lorg/json/JSONArray;

    if-eqz v1, :cond_b1

    const-string v2, "appUninstalled"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_b1
    iget-object v1, p0, Lcom/kwad/sdk/c/f/g;->y:Ljava/lang/String;

    const-string v2, "coverUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/c/f/g;->z:Ljava/lang/String;

    const-string v2, "recoExt"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/c/f/g;->A:Lcom/kwad/sdk/c/f/g$a;

    if-eqz v1, :cond_c8

    const-string v2, "clientExt"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    :cond_c8
    return-object v0
.end method
