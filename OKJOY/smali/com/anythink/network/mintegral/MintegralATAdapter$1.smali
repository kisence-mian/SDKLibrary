.class final Lcom/anythink/network/mintegral/MintegralATAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATAdapter;->loadNativeAd(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Lcom/anythink/network/mintegral/MintegralATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATAdapter;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/lang/String;ZI)V
    .registers 8

    .prologue
    .line 96
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->g:Lcom/anythink/network/mintegral/MintegralATAdapter;

    iput-object p2, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iput-object p4, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->e:Z

    iput p7, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_17

    .line 105
    const-string v0, "4001"

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->g:Lcom/anythink/network/mintegral/MintegralATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 108
    :cond_17
    return-void
.end method

.method public final onSuccess()V
    .registers 8

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->g:Lcom/anythink/network/mintegral/MintegralATAdapter;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->e:Z

    iget v6, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$1;->f:I

    invoke-static/range {v0 .. v6}, Lcom/anythink/network/mintegral/MintegralATAdapter;->a(Lcom/anythink/network/mintegral/MintegralATAdapter;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/lang/String;ZI)V

    .line 100
    return-void
.end method
