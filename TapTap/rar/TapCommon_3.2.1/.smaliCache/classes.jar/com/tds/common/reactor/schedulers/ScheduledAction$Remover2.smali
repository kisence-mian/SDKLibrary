.class final Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/schedulers/ScheduledAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Remover2"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36e5888d681586eL


# instance fields
.field final parent:Lcom/tds/common/reactor/util/SubscriptionList;

.field final s:Lcom/tds/common/reactor/schedulers/ScheduledAction;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/schedulers/ScheduledAction;Lcom/tds/common/reactor/util/SubscriptionList;)V
    .registers 3
    .param p1, "s"    # Lcom/tds/common/reactor/schedulers/ScheduledAction;
    .param p2, "parent"    # Lcom/tds/common/reactor/util/SubscriptionList;

    .line 166
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;->s:Lcom/tds/common/reactor/schedulers/ScheduledAction;

    .line 168
    iput-object p2, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;->parent:Lcom/tds/common/reactor/util/SubscriptionList;

    .line 169
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;->s:Lcom/tds/common/reactor/schedulers/ScheduledAction;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 3

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 179
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;->parent:Lcom/tds/common/reactor/util/SubscriptionList;

    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;->s:Lcom/tds/common/reactor/schedulers/ScheduledAction;

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/util/SubscriptionList;->remove(Lcom/tds/common/reactor/Subscription;)V

    .line 181
    :cond_f
    return-void
.end method
