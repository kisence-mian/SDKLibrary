.class public final Lcom/mintegral/msdk/mtgbanner/common/util/b;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "android"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->c:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->a:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->b:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->d:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->e:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->f:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->h:Ljava/lang/String;

    .line 46
    invoke-static {p1, v0}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->i:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->j:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->k:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->l:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->m:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->n:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->c(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->p:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_85

    .line 54
    const-string v0, "landscape"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->o:Ljava/lang/String;

    .line 58
    :goto_7e
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->g:Ljava/lang/String;

    .line 59
    return-void

    .line 56
    :cond_85
    const-string v0, "portrait"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->o:Ljava/lang/String;

    goto :goto_7e
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :try_start_5
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 66
    const-string v0, "device"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v0, "system_version"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v0, "network_type"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v0, "network_type_str"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v0, "device_ua"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_33
    const-string v0, "plantform"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_imei_mac"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 74
    const-string v0, "device_imei"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_4c
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_android_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 78
    const-string v0, "android_id"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_5e
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 82
    const-string v0, "google_ad_id"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v0, "oaid"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_77
    const-string v0, "appkey"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v0, "appId"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v0, "screen_width"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v0, "screen_height"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v0, "orientation"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v0, "scale"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/b;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a1} :catch_a2

    .line 94
    :goto_a1
    return-object v1

    .line 92
    :catch_a2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a1
.end method
