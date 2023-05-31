.class final Lcom/anythink/banner/api/ATBannerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/banner/api/ATBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v1, 0x1

    # invokes: Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V
    invoke-static {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;Z)V

    .line 47
    return-void
.end method
