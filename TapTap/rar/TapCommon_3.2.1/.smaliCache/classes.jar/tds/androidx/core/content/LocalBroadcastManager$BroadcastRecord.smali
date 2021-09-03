.class final Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/content/LocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BroadcastRecord"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "_intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "_receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    .line 66
    iput-object p2, p0, Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    .line 67
    return-void
.end method
