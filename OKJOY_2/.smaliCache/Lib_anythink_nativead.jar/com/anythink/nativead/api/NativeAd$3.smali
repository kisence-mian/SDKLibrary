.class final Lcom/anythink/nativead/api/NativeAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;->recordShow(Lcom/anythink/nativead/api/ATNativeAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/api/NativeAd;

.field final synthetic val$adTrackingInfo:Lcom/anythink/core/common/d/d;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/d/d;)V
    .registers 3

    .line 277
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$3;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iput-object p2, p0, Lcom/anythink/nativead/api/NativeAd$3;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$3;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$000(Lcom/anythink/nativead/api/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 281
    return-void

    .line 283
    :cond_9
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$3;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/d/b;
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/d/b;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 285
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$3;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$3;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    # invokes: Lcom/anythink/nativead/api/NativeAd;->fillShowTrackingInfo(Lcom/anythink/core/common/d/d;)V
    invoke-static {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->access$200(Lcom/anythink/nativead/api/NativeAd;Lcom/anythink/core/common/d/d;)V

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    :try_start_1c
    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$3;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 291
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_32

    .line 294
    goto :goto_36

    .line 293
    :catchall_32
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    :goto_36
    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$3;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/anythink/nativead/api/NativeAd;->access$300(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v2

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/anythink/nativead/api/NativeAd$3;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;J)V

    .line 300
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$3;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/anythink/nativead/api/NativeAd;->access$300(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$3;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/common/d/b;
    invoke-static {v2}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/common/d/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/b;)V

    .line 302
    :cond_5e
    return-void
.end method
