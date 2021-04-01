.class final Lcom/mintegral/msdk/reward/a/c$1;
.super Landroid/os/Handler;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/a/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/reward/a/c;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 197
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_20e

    .line 304
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 200
    :pswitch_7
    const-string v1, "RewardMVVideoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler id\u83b7\u53d6\u6210\u529f \u5f00\u59cbload mTtcIds:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v3}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mExcludes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v3}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3b

    .line 203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_3b
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    goto :goto_6

    .line 302
    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 209
    :pswitch_46
    :try_start_46
    const-string v1, "RewardMVVideoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler id\u83b7\u53d6\u8d85\u65f6  \u5f00\u59cbload mTtcIds:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v3}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mExcludes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v3}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7a

    .line 212
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_7a
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 218
    :pswitch_80
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 219
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "handler \u6570\u636eload\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/b;->b()V

    .line 222
    :cond_98
    const/4 v0, 0x5

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v0, v2, v3}, Lcom/mintegral/msdk/reward/a/c$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 226
    :pswitch_a1
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 227
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "\u8d44\u6e90\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "adapter 177"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 230
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/b;->a()V

    goto/16 :goto_6

    .line 232
    :cond_ca
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    const-string v1, "resource load timeout"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 238
    :pswitch_d7
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 239
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "handler \u6570\u636eload\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_e6} :catch_41

    .line 241
    :try_start_e6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_116

    .line 242
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    const-string v1, "data load failed"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f5} :catch_f7

    goto/16 :goto_6

    .line 251
    :catch_f7
    move-exception v0

    .line 252
    :try_start_f8
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data load failed, exception is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_114} :catch_41

    goto/16 :goto_6

    .line 244
    :cond_116
    :try_start_116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 246
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    const-string v1, "data load failed, errorMsg null"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 248
    :cond_12d
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data load failed, errorMsg is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_145} :catch_f7

    goto/16 :goto_6

    .line 257
    :pswitch_147
    :try_start_147
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "handler res\u6570\u636eload\u6210\u529f0"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 259
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "handler res\u6570\u636eload\u6210\u529f1"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/b;->a()V

    .line 261
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 262
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->d(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 263
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->e(Lcom/mintegral/msdk/reward/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->d(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 264
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "2dwOnLoadSuccess"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 270
    :pswitch_190
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 271
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "adapter 202"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "handler endcard\u6e90\u7801\u4e0b\u8f7d\u6210\u529f isready\u4e3atrue"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/b;->a()V

    .line 275
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 276
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->d(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 277
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->e(Lcom/mintegral/msdk/reward/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->d(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 278
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "3dwOnLoadSuccess"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_1df} :catch_41

    goto/16 :goto_6

    .line 286
    :pswitch_1e1
    :try_start_1e1
    iget v3, p1, Landroid/os/Message;->what:I

    .line 287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 288
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 289
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    .line 290
    const/4 v4, 0x2

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/String;

    .line 291
    const/4 v5, 0x3

    aget-object v5, v0, v5

    check-cast v5, Lcom/mintegral/msdk/videocommon/e/c;

    .line 292
    if-eqz v1, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$1;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_208} :catch_20a

    goto/16 :goto_6

    :catch_20a
    move-exception v0

    goto/16 :goto_6

    .line 197
    nop

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_46
        :pswitch_80
        :pswitch_d7
        :pswitch_a1
        :pswitch_147
        :pswitch_6
        :pswitch_190
        :pswitch_1e1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1e1
    .end packed-switch
.end method
