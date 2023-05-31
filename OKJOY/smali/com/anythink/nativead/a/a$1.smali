.class final Lcom/anythink/nativead/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/a/a;->a(Ljava/util/Map;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

.field final synthetic b:Lcom/anythink/nativead/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/a/a;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .registers 3

    .prologue
    .line 70
    iput-object p1, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/a/a$1;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-interface {v0}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoaded()V

    .line 91
    :cond_9
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-interface {v0, p1}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 98
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Lcom/anythink/nativead/a/d;

    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/a/a;->a(Lcom/anythink/nativead/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/anythink/nativead/a/d;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 1074
    iput-object v0, v1, Lcom/anythink/nativead/a/d;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 75
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    iget-object v0, v0, Lcom/anythink/nativead/a/a;->n:Ljava/util/Map;

    .line 2058
    iput-object v0, v1, Lcom/anythink/nativead/a/d;->y:Ljava/util/Map;

    .line 76
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/a/a;->b(Lcom/anythink/nativead/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/anythink/nativead/a/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/a/a;->c(Lcom/anythink/nativead/a/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/a/a;->d(Lcom/anythink/nativead/a/a;)Lcom/anythink/core/b/f;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 80
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/a/a;->e(Lcom/anythink/nativead/a/a;)Lcom/anythink/core/b/f;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/a/d;

    .line 2074
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anythink/nativead/a/d;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 82
    :cond_40
    iget-object v0, p0, Lcom/anythink/nativead/a/a$1;->b:Lcom/anythink/nativead/a/a;

    invoke-static {v0, v1}, Lcom/anythink/nativead/a/a;->a(Lcom/anythink/nativead/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;

    .line 84
    return-void
.end method
