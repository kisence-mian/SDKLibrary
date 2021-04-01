.class final Lcom/mintegral/msdk/base/controller/b$3;
.super Landroid/os/Handler;
.source "SDKController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/controller/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/controller/b;)V
    .registers 2

    .prologue
    .line 693
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 699
    :try_start_2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 700
    packed-switch v0, :pswitch_data_178

    .line 786
    :cond_7
    :goto_7
    return-void

    .line 702
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 703
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 704
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 705
    new-instance v4, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    move v3, v1

    .line 706
    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 707
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/o;

    .line 708
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 709
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_43

    .line 710
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 712
    :cond_43
    invoke-virtual {v4, v1, v2}, Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/entity/o;Ljava/lang/Boolean;)V

    .line 706
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_27

    .line 718
    :pswitch_4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mintegral/msdk/c/a;

    .line 719
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->x()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 720
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/e/b/a;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/e/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/b/a;->a()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_7

    .line 784
    :catch_62
    move-exception v0

    const-string v0, "SDKController"

    const-string v1, "REPORT HANDLE ERROR!"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 724
    :pswitch_6b
    :try_start_6b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 725
    if-eqz v0, :cond_7

    .line 726
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 728
    const-string v2, "===="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 729
    array-length v2, v1

    if-lez v2, :cond_7

    .line 730
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 731
    new-instance v2, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v3, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1, v0}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_7

    .line 737
    :pswitch_97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 738
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 739
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    const-string v2, "click_duration"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/out/Frame;)V

    goto/16 :goto_7

    .line 744
    :pswitch_b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 745
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 746
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    const-string v2, "load_duration"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/out/Frame;)V

    goto/16 :goto_7

    .line 751
    :pswitch_d5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 752
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 754
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    const-string v2, "device_data"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/out/Frame;)V

    goto/16 :goto_7

    .line 760
    :pswitch_fe
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 761
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 762
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v1, "authority_applist"

    invoke-static {v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 764
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v1}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mintegral_setting_campaign_time"

    new-instance v3, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_137
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/o;

    .line 766
    new-instance v2, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v3, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/entity/o;)V

    goto :goto_137

    .line 773
    :pswitch_153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 774
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 775
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 776
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/b$3;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v2}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_176} :catch_62

    goto/16 :goto_7

    .line 700
    :pswitch_data_178
    .packed-switch 0x2
        :pswitch_8
        :pswitch_6b
        :pswitch_97
        :pswitch_b6
        :pswitch_d5
        :pswitch_fe
        :pswitch_153
        :pswitch_4a
    .end packed-switch
.end method
