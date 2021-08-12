.class final Lcom/yxcorp/kuaishou/addfp/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/yxcorp/kuaishou/addfp/a/a/b;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/a/a/b;Lcom/yxcorp/kuaishou/addfp/a/a/a;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    iput-object p3, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    invoke-static {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(Lcom/yxcorp/kuaishou/addfp/a/a/b;Lcom/yxcorp/kuaishou/addfp/a/a/a;)Lcom/yxcorp/kuaishou/addfp/a/a/a;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_19a

    goto/16 :goto_ba

    :sswitch_19
    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v1, 0xa

    goto/16 :goto_ba

    :sswitch_25
    const-string v2, "nubia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v1, 0xb

    goto/16 :goto_ba

    :sswitch_31
    const-string v2, "meizu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v1, 0x2

    goto/16 :goto_ba

    :sswitch_3c
    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v1, 0x3

    goto/16 :goto_ba

    :sswitch_47
    const-string v2, "ssui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v1, 0xe

    goto/16 :goto_ba

    :sswitch_53
    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v1, 0x6

    goto :goto_ba

    :sswitch_5d
    const-string v2, "asus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v1, 0x9

    goto :goto_ba

    :sswitch_68
    const-string v2, "zte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v1, 0xc

    goto :goto_ba

    :sswitch_73
    const-string v2, "motorola"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v1, 0x7

    goto :goto_ba

    :sswitch_7d
    const-string v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    move v1, v3

    goto :goto_ba

    :sswitch_87
    const-string v2, "lenovo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v1, 0x8

    goto :goto_ba

    :sswitch_92
    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v1, 0x4

    goto :goto_ba

    :sswitch_9c
    const-string v2, "oneplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v1, 0x5

    goto :goto_ba

    :sswitch_a6
    const-string v2, "freemeos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v1, 0xd

    goto :goto_ba

    :sswitch_b1
    const-string v2, "blackshark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    move v1, v4

    :cond_ba
    :goto_ba
    packed-switch v1, :pswitch_data_1d8

    goto/16 :goto_150

    :pswitch_bf
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;-><init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V

    :goto_cc
    invoke-static {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(Lcom/yxcorp/kuaishou/addfp/a/a/b;Lcom/yxcorp/kuaishou/addfp/a/b/a;)Lcom/yxcorp/kuaishou/addfp/a/b/a;

    goto/16 :goto_150

    :pswitch_d1
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/e/b;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yxcorp/kuaishou/addfp/a/b/e/b;-><init>(Landroid/content/Context;)V

    goto :goto_cc

    :pswitch_db
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/g/g;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/yxcorp/kuaishou/addfp/a/b/g/g;-><init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V

    goto :goto_cc

    :pswitch_e9
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;-><init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V

    goto :goto_cc

    :pswitch_f7
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;-><init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V

    goto :goto_cc

    :pswitch_105
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/f/g;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/yxcorp/kuaishou/addfp/a/b/f/g;-><init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V

    goto :goto_cc

    :pswitch_113
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;-><init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V

    goto :goto_cc

    :pswitch_121
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(Lcom/yxcorp/kuaishou/addfp/a/a/b;Lcom/yxcorp/kuaishou/addfp/a/b/a;)Lcom/yxcorp/kuaishou/addfp/a/b/a;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Lcom/yxcorp/kuaishou/addfp/a/b/a;

    move-result-object v0

    check-cast v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;

    const-string v1, "100215079"

    invoke-virtual {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;->a(Ljava/lang/String;)V

    goto :goto_150

    :pswitch_13b
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/android/b/e;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yxcorp/kuaishou/addfp/android/b/e;-><init>(Landroid/content/Context;)V

    goto :goto_cc

    :pswitch_145
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/i/b;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yxcorp/kuaishou/addfp/a/b/i/b;-><init>(Landroid/content/Context;)V

    goto/16 :goto_cc

    :goto_150
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Lcom/yxcorp/kuaishou/addfp/a/b/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15f

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-virtual {v0, v4, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    return-void

    :cond_15f
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Lcom/yxcorp/kuaishou/addfp/a/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_179

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Lcom/yxcorp/kuaishou/addfp/a/b/a;

    move-result-object v0

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/a;->a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V

    goto :goto_199

    :cond_179
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Lcom/yxcorp/kuaishou/addfp/a/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_18b

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-virtual {v0, v4, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    return-void

    :cond_18b
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/a/c;->c:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b(Lcom/yxcorp/kuaishou/addfp/a/a/b;)Lcom/yxcorp/kuaishou/addfp/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V
    :try_end_194
    .catchall {:try_start_0 .. :try_end_194} :catchall_195

    return-void

    :catchall_195
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :goto_199
    return-void

    :sswitch_data_19a
    .sparse-switch
        -0x608d18ba -> :sswitch_b1
        -0x5ba5ea18 -> :sswitch_a6
        -0x4eb36700 -> :sswitch_9c
        -0x47e95e19 -> :sswitch_92
        -0x41f1a6cd -> :sswitch_87
        -0x2d450b45 -> :sswitch_7d
        -0x9085a71 -> :sswitch_73
        0x1d86b -> :sswitch_68
        0x2dd650 -> :sswitch_5d
        0x3427a0 -> :sswitch_53
        0x3604f4 -> :sswitch_47
        0x373cac -> :sswitch_3c
        0x62f84cc -> :sswitch_31
        0x644c5d3 -> :sswitch_25
        0x6f28bffa -> :sswitch_19
    .end sparse-switch

    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_145
        :pswitch_145
        :pswitch_13b
        :pswitch_121
        :pswitch_113
        :pswitch_105
        :pswitch_105
        :pswitch_f7
        :pswitch_f7
        :pswitch_e9
        :pswitch_db
        :pswitch_d1
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
    .end packed-switch
.end method
