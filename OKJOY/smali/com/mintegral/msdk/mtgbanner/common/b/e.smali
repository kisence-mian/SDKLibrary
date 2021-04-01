.class public Lcom/mintegral/msdk/mtgbanner/common/b/e;
.super Ljava/lang/Object;
.source "DeductionBannerShowListener.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgbanner/common/b/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

.field private c:Lcom/mintegral/msdk/c/d;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/b/c;Lcom/mintegral/msdk/c/d;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->d:Z

    .line 19
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->c:Lcom/mintegral/msdk/c/d;

    .line 20
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    .line 1071
    if-eqz p2, :cond_28

    .line 1072
    invoke-virtual {p2}, Lcom/mintegral/msdk/c/d;->d()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_28

    .line 1075
    invoke-virtual {p2}, Lcom/mintegral/msdk/c/d;->d()D

    move-result-wide v2

    .line 1076
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    .line 1077
    cmpl-double v1, v4, v2

    if-lez v1, :cond_28

    const/4 v0, 0x1

    .line 21
    :cond_28
    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->d:Z

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->d:Z

    if-nez v0, :cond_d

    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a()V

    .line 47
    :cond_d
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_b

    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->d:Z

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 87
    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a(Ljava/lang/String;)V

    .line 40
    :cond_9
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
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
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a(Ljava/util/List;)V

    .line 33
    :cond_9
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->b()V

    .line 54
    :cond_9
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->c()V

    .line 61
    :cond_9
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_9

    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->d()V

    .line 68
    :cond_9
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/b/e;->b:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->e()V

    .line 94
    :cond_9
    return-void
.end method
