.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 2

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 1191
    return-void
.end method

.method public final onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 1188
    return-void
.end method

.method public final onDownloadProgress(I)V
    .registers 2

    .prologue
    .line 1185
    return-void
.end method

.method public final onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 1182
    return-void
.end method

.method public final onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->q(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1172
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1173
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1174
    const-string v0, "MTGMediaView"

    const-string v1, "=====hideloading"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 1179
    :goto_16
    return-void

    .line 1177
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .registers 2

    .prologue
    .line 1166
    const/4 v0, 0x1

    return v0
.end method

.method public final onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1156
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->q(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1157
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1158
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1159
    const-string v0, "MTGMediaView"

    const-string v1, "=====hideloading"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 1163
    :goto_16
    return-void

    .line 1161
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public final onShowLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 1152
    return-void
.end method

.method public final onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->o(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1143
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1144
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1145
    const-string v0, "MTGMediaView"

    const-string v1, "=====showloading"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 1149
    :goto_16
    return-void

    .line 1147
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method
