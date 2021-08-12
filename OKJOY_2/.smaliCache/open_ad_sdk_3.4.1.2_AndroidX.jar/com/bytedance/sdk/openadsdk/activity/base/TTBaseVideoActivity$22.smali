.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;
.source "TTBaseVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 6

    .line 720
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 823
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aI:Ljava/lang/String;

    .line 824
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_11

    .line 825
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->f()V

    .line 827
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 829
    :try_start_14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    .line 830
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 831
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->A()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 832
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->B()Z

    move-result p1

    if-nez p1, :cond_4a

    .line 833
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4a
    .catchall {:try_start_14 .. :try_end_4a} :catchall_4b

    .line 836
    :cond_4a
    goto :goto_4c

    .line 835
    :catchall_4b
    move-exception p1

    .line 838
    :goto_4c
    :try_start_4c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_87

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 839
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    .line 840
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Z)V

    .line 841
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz p1, :cond_7e

    .line 842
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 844
    :cond_7e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aE:Ljava/lang/String;

    const-string v0, "py_loading_success"

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_4c .. :try_end_87} :catchall_88

    .line 847
    :cond_87
    goto :goto_89

    .line 846
    :catchall_88
    move-exception p1

    .line 848
    :goto_89
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 852
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aI:Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_11

    .line 854
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->e()V

    .line 856
    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 858
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)Z

    move-result p1

    if-nez p1, :cond_f1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 859
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Z)Z

    .line 860
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    instance-of p3, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    .line 861
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->o(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aB:I

    .line 863
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aC:I

    .line 864
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aB:I

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->az:J

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aA:J

    .line 865
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v0, 0x258

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aB:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 868
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 869
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)I

    move-result v0

    iput v0, p1, Landroid/os/Message;->what:I

    .line 870
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aB:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 871
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 872
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ax:J

    .line 873
    nop

    .line 874
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->af:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_ab

    .line 875
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 876
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->af:Ljava/lang/String;

    const-string v2, "rit_scene"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ac

    .line 874
    :cond_ab
    move-object p1, v0

    .line 879
    :goto_ac
    if-eqz p3, :cond_ba

    .line 880
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v2, "rewarded_video"

    invoke-static {p3, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_c5

    .line 882
    :cond_ba
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v2, "fullscreen_interstitial_ad"

    invoke-static {p3, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V

    .line 884
    :goto_c5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pangolin ad show "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p3, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AdEvent"

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->U()V

    .line 888
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 890
    :cond_f1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 756
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput p2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ar:I

    .line 758
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->as:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_34

    .line 761
    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 762
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2b

    .line 763
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 764
    const-string v1, "msg"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    :cond_2b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lorg/json/JSONObject;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_32} :catch_33

    .line 768
    goto :goto_34

    .line 767
    :catch_33
    move-exception v0

    .line 770
    :cond_34
    :goto_34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 7

    .line 776
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 777
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_34

    .line 779
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 780
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2b

    .line 781
    const-string v1, "code"

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 782
    const-string v1, "msg"

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    :cond_2b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lorg/json/JSONObject;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_32} :catch_33

    .line 786
    goto :goto_34

    .line 785
    :catch_33
    move-exception v0

    .line 788
    :cond_34
    :goto_34
    if-eqz p3, :cond_50

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 789
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ar:I

    .line 790
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->as:Ljava/lang/String;

    .line 792
    :cond_50
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 793
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 7

    .line 798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_2c

    .line 800
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 801
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_23

    .line 802
    const-string v1, "code"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 803
    const-string v1, "msg"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    :cond_23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lorg/json/JSONObject;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2a} :catch_2b

    .line 807
    goto :goto_2c

    .line 806
    :catch_2b
    move-exception v0

    .line 809
    :cond_2c
    :goto_2c
    if-eqz p2, :cond_5e

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 810
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 811
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 812
    if-eqz p3, :cond_5e

    .line 813
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ar:I

    .line 814
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string v1, "onReceivedHttpError"

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->as:Ljava/lang/String;

    .line 818
    :cond_5e
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 819
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .line 747
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object p1

    .line 748
    :catchall_d
    move-exception v0

    .line 749
    const-string v1, "TTBaseVideoActivity"

    const-string v2, "shouldInterceptRequest error1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 751
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 11

    .line 723
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 725
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object p1

    .line 726
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->k()Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 729
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_5b

    .line 730
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    move-result-object v0

    .line 731
    if-eqz p1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    const/4 v1, 0x2

    :goto_41
    move v7, v1

    .line 732
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-ne v0, v1, :cond_4f

    .line 733
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;JJI)V

    goto :goto_5b

    .line 734
    :cond_4f
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-ne v0, v1, :cond_5b

    .line 735
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Ljava/lang/String;JJI)V

    .line 738
    :cond_5b
    :goto_5b
    return-object p1

    .line 740
    :cond_5c
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
