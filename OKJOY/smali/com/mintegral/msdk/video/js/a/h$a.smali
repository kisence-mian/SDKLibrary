.class final Lcom/mintegral/msdk/video/js/a/h$a;
.super Ljava/lang/Object;
.source "JSCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/js/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const-string v0, "android"

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->c:Ljava/lang/String;

    .line 354
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->a:Ljava/lang/String;

    .line 355
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->b:Ljava/lang/String;

    .line 356
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->d:Ljava/lang/String;

    .line 357
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->e:Ljava/lang/String;

    .line 358
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->f:Ljava/lang/String;

    .line 359
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 360
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/video/js/a/h$a;->g:Ljava/lang/String;

    .line 361
    invoke-static {p1, v0}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->h:Ljava/lang/String;

    .line 362
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->i:Ljava/lang/String;

    .line 363
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->j:Ljava/lang/String;

    .line 364
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->k:Ljava/lang/String;

    .line 365
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->l:Ljava/lang/String;

    .line 366
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->m:Ljava/lang/String;

    .line 367
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->c(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->o:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_85

    .line 369
    const-string v0, "landscape"

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->n:Ljava/lang/String;

    .line 373
    :goto_7e
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->p:Ljava/lang/String;

    .line 374
    return-void

    .line 371
    :cond_85
    const-string v0, "portrait"

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h$a;->n:Ljava/lang/String;

    goto :goto_7e
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 377
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 380
    :try_start_5
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 381
    const-string v0, "device"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v0, "system_version"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v0, "network_type"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v0, "network_type_str"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v0, "device_ua"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    :cond_33
    const-string v0, "plantform"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_imei_mac"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 389
    const-string v0, "device_imei"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    :cond_4c
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_android_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 393
    const-string v0, "android_id"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    :cond_5e
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 397
    const-string v0, "google_ad_id"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v0, "oaid"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    :cond_77
    const-string v0, "appkey"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string v0, "appId"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string v0, "screen_width"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v0, "screen_height"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v0, "orientation"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v0, "scale"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h$a;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a1} :catch_a2

    .line 409
    :goto_a1
    return-object v1

    .line 407
    :catch_a2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a1
.end method
