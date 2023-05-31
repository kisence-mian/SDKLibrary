.class public Lcom/kwad/sdk/core/request/model/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/request/model/c;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/request/model/c;

    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/c;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/o;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/c/e/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/e/o;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->l:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/e/o;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->m:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/kwad/sdk/core/request/model/c;->c:I

    invoke-static {}, Lcom/kwad/sdk/e/o;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/e/o;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->e:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/o;->j(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/core/request/model/c;->g:I

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/o;->k(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/core/request/model/c;->f:I

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/d;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->n:Lorg/json/JSONArray;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->h:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/e/o;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->i:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/e/o;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/core/request/model/c;->j:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/e/o;->k()I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/core/request/model/c;->k:I

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->a:Ljava/lang/String;

    const-string v2, "imei"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->b:Ljava/lang/String;

    const-string v2, "oaid"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->l:Ljava/lang/String;

    const-string v2, "deviceModel"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->m:Ljava/lang/String;

    const-string v2, "deviceBrand"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/request/model/c;->c:I

    const-string v2, "osType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->d:Ljava/lang/String;

    const-string v2, "osVersion"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->e:Ljava/lang/String;

    const-string v2, "language"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->h:Ljava/lang/String;

    const-string v2, "androidId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->i:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->j:Ljava/lang/String;

    const-string v2, "deviceVendor"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/request/model/c;->k:I

    const-string v2, "platform"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/request/model/c;->f:I

    const-string v2, "screenWidth"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/request/model/c;->g:I

    const-string v2, "screenHeight"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/c;->n:Lorg/json/JSONArray;

    const-string v2, "appPackageName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object v0
.end method
