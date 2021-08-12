.class final Lcom/anythink/nativead/api/ATNative$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/ATNative$1;->onNativeAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/nativead/api/ATNative$1;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/ATNative$1;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNative$1$1;->this$1:Lcom/anythink/nativead/api/ATNative$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative$1$1;->this$1:Lcom/anythink/nativead/api/ATNative$1;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_11

    .line 64
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNative$1$1;->this$1:Lcom/anythink/nativead/api/ATNative$1;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative$1;->this$0:Lcom/anythink/nativead/api/ATNative;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNative;->mListener:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-interface {v0}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoaded()V

    .line 66
    :cond_11
    return-void
.end method
