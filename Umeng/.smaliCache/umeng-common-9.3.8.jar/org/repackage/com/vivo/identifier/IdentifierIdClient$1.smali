.class final Lorg/repackage/com/vivo/identifier/IdentifierIdClient$1;
.super Landroid/os/Handler;
.source "IdentifierIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_36

    .line 93
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->e()Lorg/repackage/com/vivo/identifier/DataBaseOperation;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/repackage/com/vivo/identifier/DataBaseOperation;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-static {}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->f()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 97
    :try_start_2a
    invoke-static {}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 98
    monitor-exit p1

    .line 99
    goto :goto_3d

    .line 98
    :catchall_33
    move-exception v0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw v0

    .line 100
    :cond_36
    const-string p1, "VMS_IDLG_SDK_Client"

    const-string v0, "message type valid"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_3d
    return-void
.end method
