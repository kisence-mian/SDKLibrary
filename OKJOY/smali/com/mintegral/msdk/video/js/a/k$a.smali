.class final Lcom/mintegral/msdk/video/js/a/k$a;
.super Ljava/lang/Object;
.source "JSRewardVideoV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/js/a/k;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const-string v0, "android"

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->c:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->a:Ljava/lang/String;

    .line 228
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->b:Ljava/lang/String;

    .line 229
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->d:Ljava/lang/String;

    .line 230
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->e:Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->f:Ljava/lang/String;

    .line 232
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 233
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/video/js/a/k$a;->g:Ljava/lang/String;

    .line 234
    invoke-static {p1, v0}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->h:Ljava/lang/String;

    .line 235
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->i:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->j:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->k:Ljava/lang/String;

    .line 238
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->l:Ljava/lang/String;

    .line 239
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->m:Ljava/lang/String;

    .line 240
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->c(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->o:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7f

    .line 242
    const-string v0, "landscape"

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->n:Ljava/lang/String;

    .line 246
    :goto_7e
    return-void

    .line 244
    :cond_7f
    const-string v0, "portrait"

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/k$a;->n:Ljava/lang/String;

    goto :goto_7e
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 249
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 252
    :try_start_5
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 253
    const-string v0, "device"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v0, "system_version"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v0, "network_type"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v0, "network_type_str"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v0, "device_ua"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_33
    const-string v0, "plantform"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_imei_mac"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 261
    const-string v0, "device_imei"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    :cond_4c
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_android_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 265
    const-string v0, "android_id"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_5e
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 269
    const-string v0, "google_ad_id"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    :cond_70
    const-string v0, "appkey"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "appId"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v0, "screen_width"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v0, "screen_height"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v0, "orientation"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v0, "scale"

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/k$a;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9a} :catch_9b

    .line 280
    :goto_9a
    return-object v1

    .line 278
    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9a
.end method
