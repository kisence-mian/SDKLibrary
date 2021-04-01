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

    .prologue
    .line 47
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 63
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/ATNative$1$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/api/ATNative$1$2;-><init>(Lcom/anythink/nativead/api/ATNative$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public final onNativeAdLoaded()V
    .registers 3

    .prologue
    .line 50
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/api/ATNative$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/api/ATNative$1$1;-><init>(Lcom/anythink/nativead/api/ATNative$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
