.class final Lcom/mintegral/msdk/videofeeds/a/a$3;
.super Ljava/lang/Object;
.source "VideofeedsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mintegral/msdk/base/entity/CampaignUnit;

.field final synthetic c:Lcom/mintegral/msdk/videofeeds/a/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/util/List;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 4

    .prologue
    .line 801
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->c:Lcom/mintegral/msdk/videofeeds/a/a;

    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->b:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 805
    const-string v0, "VideofeedsAdapter"

    const-string v1, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->a:Ljava/util/List;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_38

    .line 809
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onload \u628a\u5e7f\u544a\u5b58\u5728\u672c\u5730 size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->c:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->e(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 814
    :cond_38
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->c:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->f(Lcom/mintegral/msdk/videofeeds/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/m;->d()V

    .line 818
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->b:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->b:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->b:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6c

    .line 819
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->c:Lcom/mintegral/msdk/videofeeds/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a$3;->b:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/util/List;)V

    .line 822
    :cond_6c
    const-string v0, "VideofeedsAdapter"

    const-string v1, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method
