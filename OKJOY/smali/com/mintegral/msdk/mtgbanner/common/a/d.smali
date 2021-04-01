.class public Lcom/mintegral/msdk/mtgbanner/common/a/d;
.super Ljava/lang/Object;
.source "BannerV3Params.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/mintegral/msdk/mtgbanner/common/a/b;)Lcom/mintegral/msdk/base/common/net/l;
    .registers 14

    .prologue
    .line 27
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->getTtcIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->getExcludeIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->getInstallIds()Ljava/lang/String;

    move-result-object v4

    .line 34
    const-string v5, "banner"

    invoke-static {p1, v5}, Lcom/mintegral/msdk/base/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-static {p1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->getCloseIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    new-instance v7, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v7}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 39
    const-string v8, "app_id"

    invoke-static {v7, v8, v0}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "unit_id"

    invoke-static {v7, v0, p1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "sign"

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "only_impression"

    const-string v1, "1"

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "ping_mode"

    const-string v1, "1"

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "ttc_ids"

    invoke-static {v7, v0, v2}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "exclude_ids"

    invoke-static {v7, v0, v3}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "install_ids"

    invoke-static {v7, v0, v4}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "ad_source_id"

    const-string v1, "1"

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "session_id"

    invoke-static {v7, v0, p2}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "ad_type"

    const-string v1, "296"

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "offset"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "display_info"

    invoke-static {v7, v0, v5}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "close_id"

    invoke-static {v7, v0, v6}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "unit_size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "refresh_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p4}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e6

    .line 60
    const-string v0, "token"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_e6
    return-object v7
.end method
