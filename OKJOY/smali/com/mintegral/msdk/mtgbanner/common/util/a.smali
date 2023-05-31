.class public Lcom/mintegral/msdk/mtgbanner/common/util/a;
.super Ljava/lang/Object;
.source "BannerDelivery.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/util/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->b:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/util/a;)Z
    .registers 2

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->c:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Lcom/mintegral/msdk/base/entity/CampaignUnit;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 30
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postCampaignSuccess unitId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;-><init>(Lcom/mintegral/msdk/mtgbanner/common/util/a;Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 58
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postResourceSuccess unitId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/util/a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/mtgbanner/common/util/a$3;-><init>(Lcom/mintegral/msdk/mtgbanner/common/util/a;Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 44
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postCampaignFail errorMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unitId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;-><init>(Lcom/mintegral/msdk/mtgbanner/common/util/a;Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->c:Z

    .line 23
    return-void
.end method

.method public final b(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 72
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postResourceFail unitId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/util/a$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/mtgbanner/common/util/a$4;-><init>(Lcom/mintegral/msdk/mtgbanner/common/util/a;Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
