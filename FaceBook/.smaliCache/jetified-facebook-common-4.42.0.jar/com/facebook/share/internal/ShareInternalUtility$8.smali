.class final Lcom/facebook/share/internal/ShareInternalUtility$8;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForWeb(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
    .registers 7
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .line 447
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    .line 448
    .local v0, "photoUri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 452
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 454
    .local v1, "photoJSONObject":Lorg/json/JSONObject;
    :try_start_f
    const-string v2, "url"

    .line 455
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_18} :catch_1a

    .line 458
    nop

    .line 459
    return-object v1

    .line 456
    :catch_1a
    move-exception v2

    .line 457
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Unable to attach images"

    invoke-direct {v3, v4, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 449
    .end local v1    # "photoJSONObject":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_23
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Only web images may be used in OG objects shared via the web dialog"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
