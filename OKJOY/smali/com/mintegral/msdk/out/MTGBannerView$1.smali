.class Lcom/mintegral/msdk/out/MTGBannerView$1;
.super Ljava/lang/Object;
.source "MTGBannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/out/MTGBannerView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/out/MTGBannerView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/out/MTGBannerView;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mintegral/msdk/out/MTGBannerView$1;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView$1;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-static {v0}, Lcom/mintegral/msdk/out/MTGBannerView;->a(Lcom/mintegral/msdk/out/MTGBannerView;)Lcom/mintegral/msdk/mtgbanner/a/a;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 166
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView$1;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-static {v0}, Lcom/mintegral/msdk/out/MTGBannerView;->a(Lcom/mintegral/msdk/out/MTGBannerView;)Lcom/mintegral/msdk/mtgbanner/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->c(Z)V

    .line 168
    :cond_12
    return-void
.end method
