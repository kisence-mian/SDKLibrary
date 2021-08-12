.class final Lcom/anythink/nativead/api/ATNative$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/ATNative$1;->onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/nativead/api/ATNative$1;

.field final synthetic val$error:Lcom/anythink/core/api/AdError;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/ATNative$1;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative$1$2;->this$1:Lcom/anythink/nativead/api/ATNative$1;

    iput-object p2, p0, Lcom/anythink/nativead/api/ATNative$1$2;->val$error:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative$1$2;->this$1:Lcom/anythink/nativead/api/ATNative$1;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_13

    .line 80
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative$1$2;->this$1:Lcom/anythink/nativead/api/ATNative$1;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNative$1$2;->val$error:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 82
    :cond_13
    return-void
.end method
