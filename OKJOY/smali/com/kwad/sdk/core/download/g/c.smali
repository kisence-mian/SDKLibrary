.class public Lcom/kwad/sdk/core/download/g/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->deeplinkUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/download/g/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    invoke-static {p1}, Lcom/kwad/sdk/c/f/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_5

    :cond_19
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_30

    const/4 v0, 0x1

    goto :goto_9

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/Exception;)V

    const/4 v0, -0x1

    goto :goto_9
.end method
