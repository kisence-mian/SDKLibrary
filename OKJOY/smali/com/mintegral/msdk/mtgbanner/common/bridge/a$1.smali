.class final Lcom/mintegral/msdk/mtgbanner/common/bridge/a$1;
.super Ljava/lang/Object;
.source "BannerJSBridgeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/a;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a$1;->b:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v1

    .line 235
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/b/m;->b(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_16

    .line 239
    :catch_26
    move-exception v0

    const-string v0, "BannerJSBridgeImpl"

    const-string v1, "campain can\'t insert db"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2e
    return-void
.end method
