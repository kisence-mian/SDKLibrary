.class final Lcom/anythink/nativead/api/ATNative$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/api/ATNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/api/ATNative;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/ATNative;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    if-eqz v0, :cond_d

    .line 74
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative;->mAdLoadManager:Lcom/anythink/nativead/a/a;

    invoke-virtual {v0}, Lcom/anythink/nativead/a/a;->a()V

    .line 76
    :cond_d
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/ATNative$1$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/api/ATNative$1$2;-><init>(Lcom/anythink/nativead/api/ATNative$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public final onNativeAdLoaded()V
    .registers 3

    .line 60
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/ATNative$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/api/ATNative$1$1;-><init>(Lcom/anythink/nativead/api/ATNative$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
