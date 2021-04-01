.class public Lcom/tencent/turingfd/sdk/ams/ad/new;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 3
    :cond_6
    :goto_6
    return-void

    .line 4294967295
    :cond_7
    const-string v2, "openIdNotifyFlag"

    .line 1
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldUpdateId, notifyFlag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-ne v2, v0, :cond_48

    const-string v2, "openIdPackage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_31
    :goto_31
    if-eqz v0, :cond_6

    const-string v0, "openIdType"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/try;->d()Lcom/tencent/turingfd/sdk/ams/ad/try;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->d(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/if;

    move-result-object v0

    if-eqz v0, :cond_6

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/if;->i:J

    goto :goto_6

    .line 1
    :cond_48
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5c

    const-string v0, "openIdPackageList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_31

    :cond_5c
    if-eqz v2, :cond_31

    :cond_5e
    move v0, v1

    goto :goto_31
.end method
