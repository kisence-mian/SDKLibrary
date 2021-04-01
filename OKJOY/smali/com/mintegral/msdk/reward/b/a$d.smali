.class final Lcom/mintegral/msdk/reward/b/a$d;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Lcom/mintegral/msdk/reward/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/reward/b/a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/reward/b/a;)V
    .registers 3

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    .line 247
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->b:I

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/reward/b/a;B)V
    .registers 3

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/b/a$d;-><init>(Lcom/mintegral/msdk/reward/b/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_1c

    .line 258
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    iget v1, p0, Lcom/mintegral/msdk/reward/b/a$d;->b:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->b(I)V

    .line 259
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 260
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onAdShow()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 266
    :cond_1c
    :goto_1c
    return-void

    .line 263
    :catch_1d
    move-exception v0

    .line 264
    const-string v1, "RewardVideoController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_38

    .line 287
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 288
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;)V

    .line 290
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->e(Lcom/mintegral/msdk/reward/b/a;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->g(Lcom/mintegral/msdk/reward/b/a;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    .line 291
    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->h(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 292
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->b(Z)V

    .line 295
    :cond_38
    return-void
.end method

.method public final a(ZLcom/mintegral/msdk/videocommon/b/d;)V
    .registers 6

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 272
    if-nez p2, :cond_18

    .line 273
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->f(Lcom/mintegral/msdk/reward/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/b/d;->a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/b/d;

    move-result-object p2

    .line 275
    :cond_18
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mintegral/msdk/videocommon/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mintegral/msdk/videocommon/b/d;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, p1, v1, v2}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onAdClose(ZLjava/lang/String;F)V

    .line 276
    const-string v0, "RewardVideoController"

    const-string v1, "onAdClose start release"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 282
    :cond_34
    :goto_34
    return-void

    .line 280
    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 300
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onVideoAdClicked(ZLjava/lang/String;)V

    .line 302
    :cond_15
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 306
    const-string v0, "RewardVideoController"

    const-string v1, "onVideoComplete start"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 308
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onVideoComplete(Ljava/lang/String;)V

    .line 309
    const-string v0, "RewardVideoController"

    const-string v1, "onEndcardShow callback"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_23
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 315
    const-string v0, "RewardVideoController"

    const-string v1, "onEndcardShow start"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 317
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onEndcardShow(Ljava/lang/String;)V

    .line 318
    const-string v0, "RewardVideoController"

    const-string v1, "onEndcardShow callback"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_23
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->e(Lcom/mintegral/msdk/reward/b/a;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->g(Lcom/mintegral/msdk/reward/b/a;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    .line 326
    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->h(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 327
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$d;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->b(Z)V

    .line 329
    :cond_27
    return-void
.end method
