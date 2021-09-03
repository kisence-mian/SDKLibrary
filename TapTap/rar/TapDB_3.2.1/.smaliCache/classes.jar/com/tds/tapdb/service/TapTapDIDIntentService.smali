.class public Lcom/tds/tapdb/service/TapTapDIDIntentService;
.super Landroid/app/IntentService;
.source ""


# static fields
.field private static final b:Ljava/lang/String; = "TapTapDID"

.field private static final c:Ljava/lang/String; = "TapDB"

.field public static final d:I = 0x186a0

.field public static final e:Ljava/lang/String; = "setUnifiedId"

.field public static final f:Ljava/lang/String; = "getUnifiedId"

.field public static final g:Ljava/lang/String; = "unified_id_result_param"

.field public static final h:Ljava/lang/String; = "unified_id_saved_param"

.field public static final i:Ljava/lang/String; = "TapTapDIDIntentService"

.field private static final j:Ljava/lang/String; = "guid_share_preference"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "TapTapDIDIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tds.tapdb.service.TapTapDIDIntentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cmd"

    const-string v3, "getUnifiedId"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tds/tapdb/service/TapTapDIDIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cmd"

    const-string v2, "setUnifiedId"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unified_id"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_43

    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setUnifiedId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/16 v1, 0x2766

    if-lt p1, v0, :cond_37

    new-instance p1, Landroid/app/NotificationChannel;

    const/4 v0, 0x2

    const-string v2, "TapTapDID"

    const-string v3, "TapDB"

    invoke-direct {p1, v2, v3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance p1, Landroid/app/Notification$Builder;

    invoke-direct {p1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3c

    :cond_37
    new-instance p1, Landroid/app/Notification$Builder;

    invoke-direct {p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_3c
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/IntentService;->startForeground(ILandroid/app/Notification;)V

    :cond_43
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 10

    const-string v0, "guid_share_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/IntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz p1, :cond_da

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cmd"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_da

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TapTapDIDIntentService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "setUnifiedId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v4, 0x186a0

    const-string v5, "unified_id_result_param"

    const-string v6, "unified_id_saved_param"

    const-string v7, "receiver"

    if-eqz v2, :cond_92

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "unified_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    iput-object v1, p0, Lcom/tds/tapdb/service/TapTapDIDIntentService;->a:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set id success:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/tapdb/service/TapTapDIDIntentService;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :cond_81
    const-string v0, "set empty str!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_da

    :cond_92
    const-string v2, "getUnifiedId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iget-object v1, p0, Lcom/tds/tapdb/service/TapTapDIDIntentService;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v0, p0, Lcom/tds/tapdb/service/TapTapDIDIntentService;->a:Ljava/lang/String;

    goto :goto_b3

    :cond_ab
    const-string v1, ""

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/tapdb/service/TapTapDIDIntentService;->a:Ljava/lang/String;

    :goto_b3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get unified id success:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_da

    :cond_d5
    const-string p1, "unSupported cmd type"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    :goto_da
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tds/tapdb/service/TapTapDIDIntentService;->a(Landroid/content/Intent;)V

    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/tds/tapdb/service/TapTapDIDIntentService;->a(Landroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
