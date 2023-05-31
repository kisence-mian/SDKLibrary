.class Lcom/JoyFramework/c/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/JoyFramework/remote/b/c/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 283
    iput-object p1, p0, Lcom/JoyFramework/c/s;->b:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/s;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 286
    const-string v0, "TapTap-Param"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: reportLog,message is[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/JoyFramework/c/s;->b:Lcom/JoyFramework/c/e;

    new-instance v1, Lcom/JoyFramework/d/ce;

    iget-object v2, p0, Lcom/JoyFramework/c/s;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/JoyFramework/c/s;->b:Lcom/JoyFramework/c/e;

    invoke-static {v3}, Lcom/JoyFramework/c/e;->d(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/JoyFramework/d/ce;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/IOnAdListener;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/d/ce;

    .line 289
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 293
    const-string v0, "TapTap-Param"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLog - onNext: [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 296
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    const-string v1, "Data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    const-string v2, "TapTapAppId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 301
    sput-object v2, Lcom/JoyFramework/a/a;->aa:Ljava/lang/String;

    .line 304
    :cond_42
    const-string v2, "TapTapUpdateVersionCode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 305
    const-string v2, "TapTapUpdateVersionCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 307
    sput-object v2, Lcom/JoyFramework/a/a;->ad:Ljava/lang/String;

    .line 311
    :cond_58
    const-string v2, "TapTapUpdateWebsite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 312
    const-string v2, "TapTapUpdateWebsite"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 314
    sput-object v2, Lcom/JoyFramework/a/a;->ae:Ljava/lang/String;

    .line 318
    :cond_6e
    const-string v2, "TapTapLocal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 319
    const-string v2, "TapTapLocal"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 321
    sput-object v2, Lcom/JoyFramework/a/a;->ab:Ljava/lang/String;

    .line 325
    :cond_84
    const-string v2, "TapTapSite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 326
    const-string v2, "TapTapSite"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 328
    sput-object v2, Lcom/JoyFramework/a/a;->ac:Ljava/lang/String;

    .line 333
    :cond_9a
    const-string v2, "TopOnDebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 334
    const-string v2, "TopOnDebug"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 336
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 337
    const/4 v2, 0x1

    sput-boolean v2, Lcom/JoyFramework/a/a;->af:Z

    .line 345
    :cond_b9
    :goto_b9
    const-string v2, "IndeConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    const-string v2, "\u72ec\u7acb\u6e38\u620f\u914d\u7f6e\u53c2\u6570"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indeConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 348
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 349
    if-eqz v2, :cond_e9

    .line 350
    iget-object v1, p0, Lcom/JoyFramework/c/s;->b:Lcom/JoyFramework/c/e;

    invoke-static {v1, v0, v2}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_e9} :catch_100

    .line 358
    :cond_e9
    :goto_e9
    iget-object v0, p0, Lcom/JoyFramework/c/s;->b:Lcom/JoyFramework/c/e;

    new-instance v1, Lcom/JoyFramework/d/ce;

    iget-object v2, p0, Lcom/JoyFramework/c/s;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/JoyFramework/c/s;->b:Lcom/JoyFramework/c/e;

    invoke-static {v3}, Lcom/JoyFramework/c/e;->d(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/JoyFramework/d/ce;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/IOnAdListener;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/d/ce;

    .line 359
    return-void

    .line 339
    :cond_fc
    const/4 v2, 0x0

    :try_start_fd
    sput-boolean v2, Lcom/JoyFramework/a/a;->af:Z
    :try_end_ff
    .catch Lorg/json/JSONException; {:try_start_fd .. :try_end_ff} :catch_100

    goto :goto_b9

    .line 353
    :catch_100
    move-exception v0

    .line 354
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e9
.end method
