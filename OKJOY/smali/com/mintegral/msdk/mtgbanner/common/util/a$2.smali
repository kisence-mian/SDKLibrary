.class final Lcom/mintegral/msdk/mtgbanner/common/util/a$2;
.super Ljava/lang/Object;
.source "BannerDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mintegral/msdk/mtgbanner/common/util/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/util/a;Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    if-eqz v0, :cond_11

    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/util/a;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/b/b;->a(Ljava/lang/String;Z)V

    .line 52
    :cond_11
    return-void
.end method
