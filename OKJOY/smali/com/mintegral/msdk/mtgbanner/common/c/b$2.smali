.class final Lcom/mintegral/msdk/mtgbanner/common/c/b$2;
.super Lcom/mintegral/msdk/mtgbanner/common/f/a;
.source "BannerLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 166
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestCampaign--> Fail errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->c(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 6

    .prologue
    .line 152
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestCampaign--> Succeed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->c(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Lcom/mintegral/msdk/base/entity/CampaignUnit;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Lcom/mintegral/msdk/mtgbanner/common/c/b;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 162
    :goto_21
    return-void

    .line 157
    :catch_22
    move-exception v0

    .line 158
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestCampaign--> Fail with exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->d(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->c(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/b/b;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->a:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->e(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Lcom/mintegral/msdk/mtgbanner/common/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/b/d;->a(Ljava/lang/String;)V

    goto :goto_21
.end method
