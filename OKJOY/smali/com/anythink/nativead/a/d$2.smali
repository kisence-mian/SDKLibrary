.class final Lcom/anythink/nativead/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/a/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/a/d;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/anythink/nativead/a/d$2;->a:Lcom/anythink/nativead/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/anythink/nativead/a/d$2;->a:Lcom/anythink/nativead/a/d;

    iget-object v0, v0, Lcom/anythink/nativead/a/d;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_d

    .line 84
    iget-object v0, p0, Lcom/anythink/nativead/a/d$2;->a:Lcom/anythink/nativead/a/d;

    iget-object v0, v0, Lcom/anythink/nativead/a/d;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-interface {v0}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoaded()V

    .line 86
    :cond_d
    return-void
.end method
