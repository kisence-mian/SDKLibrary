.class public final Lcom/mintegral/msdk/base/entity/CampaignEx$c;
.super Ljava/lang/Object;
.source "CampaignEx.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/entity/CampaignEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2297
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a:Ljava/lang/String;

    .line 2298
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;
    .registers 4

    .prologue
    .line 2356
    :try_start_0
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2357
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 2362
    :goto_f
    return-object v0

    .line 2359
    :catch_10
    move-exception v0

    .line 2360
    sget-object v1, Lcom/mintegral/msdk/base/entity/CampaignEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2362
    :cond_1a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;
    .registers 8

    .prologue
    .line 2367
    if-eqz p0, :cond_7f

    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2369
    new-instance v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;-><init>(Ljava/lang/String;)V

    .line 2371
    const-string v0, "video_template"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3319
    iput v0, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->b:I

    .line 2372
    const-string v0, "template_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3343
    iput-object v0, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->e:Ljava/lang/String;

    .line 2373
    const-string v0, "orientation"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 4327
    iput v0, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->c:I

    .line 2374
    const-string v0, "paused_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4335
    iput-object v0, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d:Ljava/lang/String;

    .line 2376
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2377
    if-eqz v2, :cond_83

    .line 2378
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 2380
    :cond_47
    :goto_47
    if-eqz v4, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 2381
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2382
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/k;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 2383
    if-eqz v5, :cond_47

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 2384
    new-instance v6, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;-><init>()V

    .line 2385
    iput-object v0, v6, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->a:Ljava/lang/String;

    .line 2386
    iget-object v0, v6, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2387
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_74} :catch_75

    goto :goto_47

    .line 2394
    :catch_75
    move-exception v0

    .line 2395
    sget-object v1, Lcom/mintegral/msdk/base/entity/CampaignEx;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2397
    :cond_7f
    const/4 v0, 0x0

    :goto_80
    return-object v0

    .line 4351
    :cond_81
    :try_start_81
    iput-object v3, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->f:Ljava/util/List;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_83} :catch_75

    :cond_83
    move-object v0, v1

    .line 2392
    goto :goto_80
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 2323
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->f:Ljava/util/List;

    return-object v0
.end method
