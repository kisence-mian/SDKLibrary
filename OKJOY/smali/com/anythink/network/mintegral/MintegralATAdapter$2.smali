.class final Lcom/anythink/network/mintegral/MintegralATAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATAdapter;->a(Landroid/content/Context;ILjava/lang/String;ZLcom/anythink/nativead/unitgroup/api/CustomNativeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/anythink/network/mintegral/MintegralATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATAdapter;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 146
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->e:Lcom/anythink/network/mintegral/MintegralATAdapter;

    iput-object p2, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iput-object p3, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 196
    return-void
.end method

.method public final onAdFramesLoaded(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_11

    .line 189
    const-string v0, "4001"

    invoke-static {v0, p1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->e:Lcom/anythink/network/mintegral/MintegralATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 192
    :cond_11
    return-void
.end method

.method public final onAdLoaded(Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_20

    .line 151
    :cond_a
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_1f

    .line 152
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, " no ad return "

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->e:Lcom/anythink/network/mintegral/MintegralATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 183
    :cond_1f
    :goto_1f
    return-void

    .line 159
    :cond_20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    .line 161
    if-eqz v0, :cond_7d

    .line 163
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->e:Lcom/anythink/network/mintegral/MintegralATAdapter;

    iget-object v1, v1, Lcom/anythink/network/mintegral/MintegralATAdapter;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    move v1, v3

    .line 164
    :goto_43
    new-instance v6, Lcom/anythink/network/mintegral/MintegralATNativeAd;

    iget-object v7, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->c:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/anythink/network/mintegral/MintegralATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Z)V

    .line 165
    iget-boolean v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->d:Z

    invoke-virtual {v6, v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->setIsAutoPlay(Z)V

    .line 166
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_55
    move v1, v0

    .line 168
    goto :goto_2a

    :cond_57
    move v1, v2

    .line 163
    goto :goto_43

    .line 170
    :cond_59
    if-nez v1, :cond_71

    .line 171
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_1f

    .line 172
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, " no ad return "

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->e:Lcom/anythink/network/mintegral/MintegralATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1f

    .line 178
    :cond_71
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_1f

    .line 179
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATAdapter$2;->e:Lcom/anythink/network/mintegral/MintegralATAdapter;

    invoke-interface {v0, v1, v4}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V

    goto :goto_1f

    :cond_7d
    move v0, v1

    goto :goto_55
.end method

.method public final onLoggingImpression(I)V
    .registers 2

    .prologue
    .line 204
    return-void
.end method
