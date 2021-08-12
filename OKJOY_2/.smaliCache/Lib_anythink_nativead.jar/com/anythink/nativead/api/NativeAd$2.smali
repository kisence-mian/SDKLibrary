.class final Lcom/anythink/nativead/api/NativeAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/NativeAd$ImpressionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;->renderViewToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/api/NativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/NativeAd;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImpression()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v0, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->recordShow(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 166
    return-void
.end method
