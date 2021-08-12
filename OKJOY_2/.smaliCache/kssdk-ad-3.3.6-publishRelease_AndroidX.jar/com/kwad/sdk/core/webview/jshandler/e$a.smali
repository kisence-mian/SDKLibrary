.class public final Lcom/kwad/sdk/core/webview/jshandler/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/webview/jshandler/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/e$a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/e$a;->a:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/core/webview/jshandler/e$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v4, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    :try_start_24
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_10

    :catch_2f
    move-exception v4

    invoke-static {v4}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_33
    invoke-virtual {v3}, Lcom/kwad/sdk/core/response/model/AdTemplate;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_10

    :cond_3b
    const-string v2, "impAdInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object v0
.end method
