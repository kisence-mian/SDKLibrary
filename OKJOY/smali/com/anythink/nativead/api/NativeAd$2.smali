.class final Lcom/anythink/nativead/api/NativeAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;->recordImpression(Lcom/anythink/nativead/api/ATNativeAdView;)V
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

    .prologue
    .line 199
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDetail()Lcom/anythink/core/b/c/b;

    move-result-object v1

    .line 203
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mAdUnitId:Ljava/lang/String;
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$000(Lcom/anythink/nativead/api/NativeAd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Lcom/anythink/core/b/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    if-eqz v1, :cond_38

    .line 1334
    iput-object v0, v1, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    .line 209
    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v3}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/c/b;->b(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/m;->a(Landroid/content/Context;Lcom/anythink/core/b/c/b;)V

    .line 214
    :cond_38
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;J)V

    .line 217
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 219
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/nativead/unitgroup/a;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/anythink/nativead/api/NativeAd;->access$100(Lcom/anythink/nativead/api/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$2;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mAdCacheInfo:Lcom/anythink/core/b/c/a;
    invoke-static {v2}, Lcom/anythink/nativead/api/NativeAd;->access$200(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/core/b/c/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V

    .line 222
    return-void

    .line 204
    :cond_7e
    const-string v0, ""

    goto :goto_18
.end method
