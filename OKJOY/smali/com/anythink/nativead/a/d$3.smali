.class final Lcom/anythink/nativead/a/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/a/d;->a(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/AdError;

.field final synthetic b:Lcom/anythink/nativead/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/a/d;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 92
    iput-object p1, p0, Lcom/anythink/nativead/a/d$3;->b:Lcom/anythink/nativead/a/d;

    iput-object p2, p0, Lcom/anythink/nativead/a/d$3;->a:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/anythink/nativead/a/d$3;->b:Lcom/anythink/nativead/a/d;

    iget-object v0, v0, Lcom/anythink/nativead/a/d;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_f

    .line 96
    iget-object v0, p0, Lcom/anythink/nativead/a/d$3;->b:Lcom/anythink/nativead/a/d;

    iget-object v0, v0, Lcom/anythink/nativead/a/d;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    iget-object v1, p0, Lcom/anythink/nativead/a/d$3;->a:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 98
    :cond_f
    return-void
.end method
