.class Lcom/taptap/sdk/forum/ForumFragment$DeviceStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ForumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/forum/ForumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceStatusReceiver"
.end annotation


# instance fields
.field private final mFragmentWeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taptap/sdk/forum/ForumFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/forum/ForumFragment;)V
    .registers 3
    .param p1, "fragment"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 738
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 739
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$DeviceStatusReceiver;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    .line 740
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 744
    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment$DeviceStatusReceiver;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/forum/ForumFragment;

    .line 745
    .local v0, "fragment":Lcom/taptap/sdk/forum/ForumFragment;
    if-nez v0, :cond_b

    .line 747
    :goto_a
    return-void

    .line 746
    :cond_b
    # invokes: Lcom/taptap/sdk/forum/ForumFragment;->onDeviceStatusDidChange()V
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1500(Lcom/taptap/sdk/forum/ForumFragment;)V

    goto :goto_a
.end method
