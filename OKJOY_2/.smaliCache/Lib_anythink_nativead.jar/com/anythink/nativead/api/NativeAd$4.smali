.class final Lcom/anythink/nativead/api/NativeAd$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;->handleImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/api/NativeAd;

.field final synthetic val$view:Lcom/anythink/nativead/api/ATNativeAdView;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 3

    .line 319
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd$4;->val$view:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$000(Lcom/anythink/nativead/api/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 323
    return-void

    .line 326
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    if-eqz v0, :cond_43

    .line 329
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 330
    sget-object v1, Lcom/anythink/core/common/b/e$e;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # invokes: Lcom/anythink/nativead/api/NativeAd;->fillShowTrackingInfo(Lcom/anythink/core/common/d/d;)V
    invoke-static {v1, v0}, Lcom/anythink/nativead/api/NativeAd;->access$200(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/d/d;)V

    .line 336
    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/anythink/nativead/api/NativeAd;->access$300(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 338
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/NativeAd$4$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/api/NativeAd$4$1;-><init>(Lcom/anythink/nativead/api/NativeAd$4;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_43} :catch_44

    .line 350
    :cond_43
    return-void

    .line 348
    :catch_44
    move-exception v0

    .line 349
    const-string v0, "NativeAd"

    const-string v1, "BaseNativeAd has been destotyed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method
