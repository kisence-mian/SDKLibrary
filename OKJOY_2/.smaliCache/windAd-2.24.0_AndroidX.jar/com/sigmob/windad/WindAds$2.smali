.class Lcom/sigmob/windad/WindAds$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/e/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/WindAds;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAds;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/WindAds;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAds$2;->a:Lcom/sigmob/windad/WindAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 2

    iget-object p1, p0, Lcom/sigmob/windad/WindAds$2;->a:Lcom/sigmob/windad/WindAds;

    invoke-static {p1}, Lcom/sigmob/windad/WindAds;->b(Lcom/sigmob/windad/WindAds;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_1e

    :try_start_2
    const-string v0, "is_request_in_eea_or_unknown"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/a;->c(Z)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e
    :goto_1e
    iget-object p1, p0, Lcom/sigmob/windad/WindAds$2;->a:Lcom/sigmob/windad/WindAds;

    invoke-static {p1}, Lcom/sigmob/windad/WindAds;->b(Lcom/sigmob/windad/WindAds;)V

    return-void
.end method
