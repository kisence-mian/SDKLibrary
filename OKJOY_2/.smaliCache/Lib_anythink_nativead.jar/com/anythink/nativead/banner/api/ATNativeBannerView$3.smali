.class final Lcom/anythink/nativead/banner/api/ATNativeBannerView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/banner/api/ATNativeBannerView;->init()V
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

    .line 312
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$3;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 315
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$3;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object p1, p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz p1, :cond_d

    .line 316
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$3;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object p1, p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-interface {p1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdClose()V

    .line 318
    :cond_d
    return-void
.end method
