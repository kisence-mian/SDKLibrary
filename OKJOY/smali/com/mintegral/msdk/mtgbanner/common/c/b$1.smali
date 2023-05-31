.class final Lcom/mintegral/msdk/mtgbanner/common/c/b$1;
.super Ljava/util/TimerTask;
.source "BannerLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/mtgbanner/common/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$1;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$1;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$1;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->b(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Z

    .line 133
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$1;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$1;->a:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 135
    :cond_18
    return-void
.end method
