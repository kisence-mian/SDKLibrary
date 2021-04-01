.class final Lcom/mintegral/msdk/videofeeds/a/a$2;
.super Lcom/mintegral/msdk/videofeeds/d/b;
.source "VideofeedsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videofeeds/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/a/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/a/a;)V
    .registers 2

    .prologue
    .line 370
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a$2;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 388
    const-string v0, "VideofeedsAdapter"

    invoke-static {v0, p2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadCompaginFailed load\u5931\u8d25 errorCode:"

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

    .line 390
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$2;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$2;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->d(Lcom/mintegral/msdk/videofeeds/a/a;)V

    .line 392
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 4

    .prologue
    .line 376
    :try_start_0
    const-string v0, "VideofeedsAdapter"

    const-string v1, "onLoadCompaginSuccess \u6570\u636e\u521a\u8bf7\u6c42\u56de\u6765"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$2;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 384
    :goto_c
    return-void

    .line 379
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    const-string v0, "VideofeedsAdapter"

    const-string v1, "onLoadCompaginSuccess \u6570\u636e\u521a\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$2;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    const-string v1, "can\'t show because unknow error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$2;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->d(Lcom/mintegral/msdk/videofeeds/a/a;)V

    goto :goto_c
.end method
