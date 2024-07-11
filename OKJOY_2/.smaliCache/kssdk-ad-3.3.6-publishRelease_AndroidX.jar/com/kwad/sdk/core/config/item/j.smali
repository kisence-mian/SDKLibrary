.class public Lcom/kwad/sdk/core/config/item/j;
.super Lcom/kwad/sdk/core/config/item/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/config/item/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/config/item/a<",
        "Lcom/kwad/sdk/core/config/item/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "sdkPackInfo"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/config/item/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/config/item/j;->a:Ljava/lang/String;

    const-string v1, "sdkPackInfo"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 4

    const-string v0, "sdkPackInfo"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/config/item/j;->a:Ljava/lang/String;

    :try_start_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    :cond_10
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/kwad/sdk/core/config/item/j;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/core/config/item/j$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/j$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/config/item/j$a;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/config/item/j;->a(Ljava/lang/Object;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "sdkPackInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/config/item/j;->a:Ljava/lang/String;

    new-instance v0, Lcom/kwad/sdk/core/config/item/j$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/j$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/config/item/j$a;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/config/item/j;->a(Ljava/lang/Object;)V

    return-void
.end method
