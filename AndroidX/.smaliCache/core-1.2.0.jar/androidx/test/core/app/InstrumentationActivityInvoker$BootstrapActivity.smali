.class public Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;
.super Landroid/app/Activity;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapActivity"
.end annotation


# static fields
.field private static final IS_TARGET_ACTIVITY_STARTED_KEY:Ljava/lang/String; = "IS_TARGET_ACTIVITY_STARTED_KEY"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isTargetActivityStarted:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 120
    const-class v0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity$1;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;)V

    iput-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 188
    if-nez p1, :cond_1b

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "activityResultReceivedActionIntent":Landroid/content/Intent;
    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    if-eqz p3, :cond_15

    .line 192
    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    :cond_15
    invoke-virtual {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->finish()V

    .line 197
    .end local v0    # "activityResultReceivedActionIntent":Landroid/content/Intent;
    :cond_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_BOOTSTRAP_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 140
    const-string v1, "IS_TARGET_ACTIVITY_STARTED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    nop

    :goto_1d
    iput-boolean v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->isTargetActivityStarted:Z

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    return-void
.end method

.method protected onResume()V
    .registers 9

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    iget-boolean v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->isTargetActivityStarted:Z

    if-nez v0, :cond_3b

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->isTargetActivityStarted:Z

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.START_TARGET_ACTIVITY_INTENT_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 160
    .local v0, "startTargetActivityIntent":Landroid/app/PendingIntent;
    nop

    .line 161
    :try_start_1e
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 160
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_2c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1e .. :try_end_2c} :catch_2d

    .line 170
    goto :goto_3b

    .line 167
    :catch_2d
    move-exception v1

    .line 168
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    sget-object v2, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start target activity."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 172
    .end local v0    # "startTargetActivityIntent":Landroid/app/PendingIntent;
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_3b
    :goto_3b
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    iget-boolean v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$BootstrapActivity;->isTargetActivityStarted:Z

    const-string v1, "IS_TARGET_ACTIVITY_STARTED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    return-void
.end method
