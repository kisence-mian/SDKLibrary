.class final Lcom/facebook/appevents/AppEventsLogger$3;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Lcom/facebook/appevents/AppEventsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AppEventsLogger;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 450
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, "params":Landroid/os/Bundle;
    const/4 v1, 0x1

    :try_start_6
    const-string v2, "com.facebook.core.Core"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 455
    const-string v2, "core_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_10} :catch_11

    goto :goto_12

    .line 456
    :catch_11
    move-exception v2

    :goto_12
    nop

    .line 458
    :try_start_13
    const-string v2, "com.facebook.login.Login"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 459
    const-string v2, "login_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_1f

    .line 460
    :catch_1e
    move-exception v2

    :goto_1f
    nop

    .line 462
    :try_start_20
    const-string v2, "com.facebook.share.Share"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 463
    const-string v2, "share_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_2a} :catch_2b

    goto :goto_2c

    .line 464
    :catch_2b
    move-exception v2

    :goto_2c
    nop

    .line 466
    :try_start_2d
    const-string v2, "com.facebook.places.Places"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 467
    const-string v2, "places_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_37} :catch_38

    goto :goto_39

    .line 468
    :catch_38
    move-exception v2

    :goto_39
    nop

    .line 470
    :try_start_3a
    const-string v2, "com.facebook.messenger.Messenger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 471
    const-string v2, "messenger_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_44} :catch_45

    goto :goto_46

    .line 472
    :catch_45
    move-exception v2

    :goto_46
    nop

    .line 474
    :try_start_47
    const-string v2, "com.facebook.applinks.AppLinks"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 475
    const-string v2, "applinks_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_51} :catch_52

    goto :goto_53

    .line 476
    :catch_52
    move-exception v2

    :goto_53
    nop

    .line 478
    :try_start_54
    const-string v2, "com.facebook.marketing.Marketing"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 479
    const-string v2, "marketing_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_54 .. :try_end_5e} :catch_5f

    goto :goto_60

    .line 480
    :catch_5f
    move-exception v2

    :goto_60
    nop

    .line 482
    :try_start_61
    const-string v2, "com.facebook.all.All"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 483
    const-string v2, "all_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_61 .. :try_end_6b} :catch_6c

    goto :goto_6d

    .line 484
    :catch_6c
    move-exception v2

    :goto_6d
    nop

    .line 488
    :try_start_6e
    const-string v2, "com.android.billingclient.api.BillingClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 489
    const-string v2, "billing_client_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6e .. :try_end_78} :catch_79

    goto :goto_7a

    .line 490
    :catch_79
    move-exception v2

    :goto_7a
    nop

    .line 492
    :try_start_7b
    const-string v2, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 493
    const-string v2, "billing_service_lib_included"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7b .. :try_end_85} :catch_86

    goto :goto_87

    .line 494
    :catch_86
    move-exception v1

    :goto_87
    nop

    .line 496
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$logger:Lcom/facebook/appevents/AppEventsLogger;

    const/4 v2, 0x0

    const-string v3, "fb_sdk_initialize"

    invoke-virtual {v1, v3, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 497
    return-void
.end method
