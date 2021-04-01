.class final Lcom/mintegral/msdk/interstitial/c/a$1;
.super Landroid/os/Handler;
.source "InterstitialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/c/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/c/a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 145
    if-nez p1, :cond_3

    .line 204
    :cond_2
    :goto_2
    return-void

    .line 148
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_f0

    :pswitch_8
    goto :goto_2

    .line 150
    :pswitch_9
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/InterstitialListener;->onInterstitialLoadSuccess()V

    .line 152
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handler \u6570\u636eload\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 156
    :pswitch_26
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 158
    const-string v0, ""

    .line 159
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3e

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 162
    :cond_3e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 163
    const-string v0, "can\'t show because unknow error"

    .line 165
    :cond_46
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/out/InterstitialListener;->onInterstitialLoadFail(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler \u6570\u636eload\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :pswitch_68
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/InterstitialListener;->onInterstitialShowSuccess()V

    .line 173
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handler \u6570\u636eshow\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 177
    :pswitch_86
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    const-string v0, ""

    .line 179
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_9e

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9e

    .line 180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 182
    :cond_9e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 183
    const-string v0, "can\'t show because unknow error"

    .line 185
    :cond_a6
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/out/InterstitialListener;->onInterstitialShowFail(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler \u6570\u636eshow\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 191
    :pswitch_c9
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/InterstitialListener;->onInterstitialAdClick()V

    goto/16 :goto_2

    .line 196
    :pswitch_dc
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$1;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/out/InterstitialListener;->onInterstitialClosed()V

    goto/16 :goto_2

    .line 148
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_26
        :pswitch_68
        :pswitch_86
        :pswitch_8
        :pswitch_c9
        :pswitch_dc
    .end packed-switch
.end method
