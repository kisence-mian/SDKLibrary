.class final Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/content/LocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiverRecord"
.end annotation


# instance fields
.field broadcasting:Z

.field dead:Z

.field final filter:Landroid/content/IntentFilter;

.field final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
    .registers 3
    .param p1, "_filter"    # Landroid/content/IntentFilter;
    .param p2, "_receiver"    # Landroid/content/BroadcastReceiver;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 42
    iput-object p2, p0, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Receiver{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    iget-boolean v1, p0, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    if-eqz v1, :cond_24

    .line 53
    const-string v1, " DEAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_24
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
