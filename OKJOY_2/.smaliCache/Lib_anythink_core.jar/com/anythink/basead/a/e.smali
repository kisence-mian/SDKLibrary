.class public final Lcom/anythink/basead/a/e;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_76

    .line 23
    const-string v1, "receiver_extra_offer_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string v2, "receiver_extra_click_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_78

    :cond_1a
    goto :goto_42

    :sswitch_1b
    const-string v3, "action_offer_install_start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x3

    goto :goto_42

    :sswitch_25
    const-string v3, "action_offer_install_successful"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x2

    goto :goto_42

    :sswitch_2f
    const-string v3, "action_offer_download_start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    goto :goto_42

    :sswitch_39
    const-string v3, "action_offer_download_end"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    :goto_42
    packed-switch v2, :pswitch_data_8a

    goto :goto_76

    .line 36
    :pswitch_46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/a/f;->a(Landroid/content/Context;)Lcom/anythink/basead/a/f;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/anythink/basead/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 33
    :pswitch_52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/a/f;->a(Landroid/content/Context;)Lcom/anythink/basead/a/f;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/anythink/basead/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 30
    :pswitch_5e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/a/f;->a(Landroid/content/Context;)Lcom/anythink/basead/a/f;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/anythink/basead/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 27
    :pswitch_6a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/a/f;->a(Landroid/content/Context;)Lcom/anythink/basead/a/f;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/anythink/basead/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void

    .line 42
    :cond_76
    :goto_76
    return-void

    nop

    :sswitch_data_78
    .sparse-switch
        -0x4d8cbdb0 -> :sswitch_39
        -0x1c8c0b69 -> :sswitch_2f
        0x1be7306a -> :sswitch_25
        0x4ae0dc92 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_5e
        :pswitch_52
        :pswitch_46
    .end packed-switch
.end method
