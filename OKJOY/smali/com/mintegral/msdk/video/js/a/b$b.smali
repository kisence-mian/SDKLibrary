.class public final Lcom/mintegral/msdk/video/js/a/b$b;
.super Ljava/lang/Object;
.source "DefaultJSCommon.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/js/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/video/js/b;

.field private b:Lcom/mintegral/msdk/video/js/b$a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/js/b;Lcom/mintegral/msdk/video/js/b$a;)V
    .registers 3

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/b$b;->a:Lcom/mintegral/msdk/video/js/b;

    .line 196
    iput-object p2, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    .line 197
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b$a;->a()V

    .line 271
    :cond_9
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 283
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/b$a;->a(ILjava/lang/String;)V

    .line 285
    :cond_9
    return-void
.end method

.method public final a(Z)V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/video/js/b$a;->a(Z)V

    .line 278
    :cond_9
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 290
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b$a;->b()V

    .line 292
    :cond_9
    return-void
.end method

.method public final onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 214
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/video/js/b$a;->onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V

    .line 216
    :cond_9
    return-void
.end method

.method public final onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 255
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/video/js/b$a;->onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V

    .line 257
    :cond_9
    return-void
.end method

.method public final onDownloadProgress(I)V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 262
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/video/js/b$a;->onDownloadProgress(I)V

    .line 264
    :cond_9
    return-void
.end method

.method public final onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 248
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/video/js/b$a;->onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V

    .line 250
    :cond_9
    return-void
.end method

.method public final onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/b$a;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 230
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->a:Lcom/mintegral/msdk/video/js/b;

    if-eqz v0, :cond_12

    .line 231
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->a:Lcom/mintegral/msdk/video/js/b;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->d()V

    .line 233
    :cond_12
    return-void
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b$a;->onInterceptDefaultLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/b$a;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 240
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->a:Lcom/mintegral/msdk/video/js/b;

    if-eqz v0, :cond_12

    .line 241
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->a:Lcom/mintegral/msdk/video/js/b;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->d()V

    .line 243
    :cond_12
    return-void
.end method

.method public final onShowLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/video/js/b$a;->onShowLoading(Lcom/mintegral/msdk/out/Campaign;)V

    .line 209
    :cond_9
    return-void
.end method

.method public final onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/b$b;->b:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/b$a;->onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 223
    :cond_9
    return-void
.end method
