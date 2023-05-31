.class final Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;
.super Ljava/lang/Object;
.source "BannerExpandDialog.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/mraid/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->dismiss()V

    .line 255
    return-void
.end method

.method public final expand(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 277
    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 234
    :try_start_1
    const-string v0, "BannerExpandDialog"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->g(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2a

    .line 238
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 239
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object p1, v0

    .line 244
    :cond_2a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->b(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgbanner/common/b/a;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 245
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->b(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgbanner/common/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a(ZLjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3c} :catch_3d

    .line 250
    :cond_3c
    :goto_3c
    return-void

    .line 247
    :catch_3d
    move-exception v0

    .line 248
    const-string v1, "BannerExpandDialog"

    const-string v2, "open"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c
.end method

.method public final unload()V
    .registers 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;->close()V

    .line 260
    return-void
.end method

.method public final useCustomClose(Z)V
    .registers 5

    .prologue
    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->h(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_d

    const/4 v0, 0x4

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_f

    .line 274
    :goto_c
    return-void

    .line 270
    :cond_d
    const/4 v0, 0x0

    goto :goto_9

    .line 271
    :catch_f
    move-exception v0

    .line 272
    const-string v1, "BannerExpandDialog"

    const-string v2, "useCustomClose"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
