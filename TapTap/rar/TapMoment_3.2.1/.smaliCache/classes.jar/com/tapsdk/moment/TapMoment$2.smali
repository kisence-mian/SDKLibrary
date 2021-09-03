.class final Lcom/tapsdk/moment/TapMoment$2;
.super Ljava/lang/Object;
.source "TapMoment.java"

# interfaces
.implements Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/TapMoment;->initSdk(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_df

    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 277
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_e0

    :cond_10
    goto :goto_6b

    :sswitch_11
    const-string v1, "publish_fail.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x3

    goto :goto_6b

    :sswitch_1b
    const-string v1, "close_confirm.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x6

    goto :goto_6b

    :sswitch_25
    const-string v1, "appear.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    goto :goto_6b

    :sswitch_2f
    const-string v1, "login_success.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x7

    goto :goto_6b

    :sswitch_39
    const-string v1, "publish_cancel.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x4

    goto :goto_6b

    :sswitch_43
    const-string v1, "publish_success.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x2

    goto :goto_6b

    :sswitch_4d
    const-string v1, "scene_event.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v0, 0x8

    goto :goto_6b

    :sswitch_58
    const-string v1, "close_cancel.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x5

    goto :goto_6b

    :sswitch_62
    const-string v1, "disappear.moment.taptap.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :goto_6b
    const-string v1, ""

    packed-switch v0, :pswitch_data_106

    goto/16 :goto_df

    .line 303
    :pswitch_72
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const v1, 0x11170

    const-string v2, "event"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto :goto_df

    .line 300
    :pswitch_85
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const v1, 0xea60

    const-string v2, "token"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 301
    goto :goto_df

    .line 297
    :pswitch_98
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const v2, 0xc3b4

    invoke-interface {v0, v2, v1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 298
    goto :goto_df

    .line 294
    :pswitch_a3
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const v2, 0xc350

    invoke-interface {v0, v2, v1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 295
    goto :goto_df

    .line 291
    :pswitch_ae
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v2, 0x27d8

    invoke-interface {v0, v2, v1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 292
    goto :goto_df

    .line 288
    :pswitch_b8
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v2, 0x2774

    invoke-interface {v0, v2, v1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 289
    goto :goto_df

    .line 285
    :pswitch_c2
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-interface {v0, v2, v1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 286
    goto :goto_df

    .line 282
    :pswitch_cc
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v2, 0x7594

    invoke-interface {v0, v2, v1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 283
    goto :goto_df

    .line 279
    :pswitch_d6
    # getter for: Lcom/tapsdk/moment/TapMoment;->tapMomentListener:Lcom/tapsdk/moment/TapMoment$TapMomentCallback;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$000()Lcom/tapsdk/moment/TapMoment$TapMomentCallback;

    move-result-object v0

    const/16 v2, 0x7530

    invoke-interface {v0, v2, v1}, Lcom/tapsdk/moment/TapMoment$TapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 307
    :cond_df
    :goto_df
    return-void

    :sswitch_data_e0
    .sparse-switch
        -0x60a0bb3f -> :sswitch_62
        -0x4438c77d -> :sswitch_58
        -0x15678643 -> :sswitch_4d
        0x90e8d91 -> :sswitch_43
        0x2ac2ff1a -> :sswitch_39
        0x2baed177 -> :sswitch_2f
        0x3c41320f -> :sswitch_25
        0x533462ab -> :sswitch_1b
        0x749ad8f6 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_cc
        :pswitch_c2
        :pswitch_b8
        :pswitch_ae
        :pswitch_a3
        :pswitch_98
        :pswitch_85
        :pswitch_72
    .end packed-switch
.end method
