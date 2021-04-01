.class final Lcom/mintegral/msdk/mtgbanner/common/util/a$3;
.super Ljava/lang/Object;
.source "BannerDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/mtgbanner/common/util/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/util/a;Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$3;->c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$3;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$3;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$3;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$3;->c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/util/a;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/b/b;->a(Z)V

    .line 66
    :cond_f
    return-void
.end method
