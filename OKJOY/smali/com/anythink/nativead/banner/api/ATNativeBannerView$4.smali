.class final Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/banner/api/ATNativeBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$4;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    const/4 v1, 0x1

    # invokes: Lcom/anythink/nativead/banner/api/ATNativeBannerView;->loadAd(Z)V
    invoke-static {v0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->access$300(Lcom/anythink/nativead/banner/api/ATNativeBannerView;Z)V

    .line 370
    return-void
.end method
