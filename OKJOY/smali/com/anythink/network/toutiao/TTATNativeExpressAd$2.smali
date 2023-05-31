.class final Lcom/anythink/network/toutiao/TTATNativeExpressAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 1

    .prologue
    .line 121
    return-void
.end method

.method public final onSelected(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd$2;->a:Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->notifyAdDislikeClick()V

    .line 117
    return-void
.end method
