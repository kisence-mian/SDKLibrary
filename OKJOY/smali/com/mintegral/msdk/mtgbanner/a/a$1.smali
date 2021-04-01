.class final Lcom/mintegral/msdk/mtgbanner/a/a$1;
.super Ljava/lang/Object;
.source "BannerController.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgbanner/common/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/a/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/a/a;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 83
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/BannerAdListener;->onClick()V

    .line 85
    :cond_11
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->b()V

    .line 70
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_18

    if-nez p2, :cond_18

    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/BannerAdListener;->onLogImpression()V

    .line 73
    :cond_18
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/BannerAdListener;->onLoadSuccessed()V

    .line 63
    :cond_11
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowSuccessed:"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/BannerAdListener;->onLeaveApp()V

    .line 92
    :cond_11
    return-void
.end method

.method public final c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/BannerAdListener;->showFullScreen()V

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;Z)Z

    .line 99
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    .line 101
    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Lcom/mintegral/msdk/mtgbanner/a/a;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    .line 105
    :cond_26
    return-void
.end method

.method public final d()V
    .registers 7

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 110
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/BannerAdListener;->closeFullScreen()V

    .line 111
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;Z)Z

    .line 112
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    .line 114
    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Lcom/mintegral/msdk/mtgbanner/a/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mintegral/msdk/mtgbanner/common/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    .line 115
    invoke-static {v5}, Lcom/mintegral/msdk/mtgbanner/a/a;->c(Lcom/mintegral/msdk/mtgbanner/a/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgbanner/a/a;->d(Lcom/mintegral/msdk/mtgbanner/a/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgbanner/a/a;->e(Lcom/mintegral/msdk/mtgbanner/a/a;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-direct {v3, v4, v5}, Lcom/mintegral/msdk/mtgbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    .line 116
    invoke-static {v4}, Lcom/mintegral/msdk/mtgbanner/a/a;->f(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/mtgbanner/common/b/b;

    move-result-object v4

    .line 112
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    .line 118
    :cond_5b
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$1;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/BannerAdListener;->onCloseBanner()V

    .line 125
    :cond_11
    return-void
.end method
