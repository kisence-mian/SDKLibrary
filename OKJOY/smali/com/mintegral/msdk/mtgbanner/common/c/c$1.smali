.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "BannerShowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$1;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$1;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    const-string v1, "banner render failed because render is timeout"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method
