.class public Lcom/tencent/smtt/sdk/TbsVideo;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUseTbsPlayer(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/bd;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bd;->a()Z

    move-result v0

    return v0
.end method

.method public static canUseYunbo(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/bd;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bd;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->canUseVideoFeatrue(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static openVideo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsVideo;->openVideo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static openVideo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "TbsVideo"

    const-string v1, "videoUrl is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_e
    if-nez p2, :cond_15

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_15
    const-string v0, "videoUrl"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.smtt.tbs.video.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extraData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public static openYunboVideo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tbs/video/interfaces/a;)Z
    .registers 5

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsVideo;->canUseYunbo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/tencent/smtt/sdk/bd;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/bd;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/bd;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tbs/video/interfaces/a;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
