.class public final Lcom/tds/common/reactor/subscriptions/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/subscriptions/Subscriptions$Unsubscribed;,
        Lcom/tds/common/reactor/subscriptions/Subscriptions$FutureSubscription;
    }
.end annotation


# static fields
.field private static final UNSUBSCRIBED:Lcom/tds/common/reactor/subscriptions/Subscriptions$Unsubscribed;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/tds/common/reactor/subscriptions/Subscriptions$Unsubscribed;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/Subscriptions$Unsubscribed;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/subscriptions/Subscriptions;->UNSUBSCRIBED:Lcom/tds/common/reactor/subscriptions/Subscriptions$Unsubscribed;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 2
    .param p0, "unsubscribe"    # Lcom/tds/common/reactor/functions/Action0;

    .line 64
    invoke-static {p0}, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->create(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/subscriptions/BooleanSubscription;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lcom/tds/common/reactor/Subscription;
    .registers 1

    .line 37
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/BooleanSubscription;->create()Lcom/tds/common/reactor/subscriptions/BooleanSubscription;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lcom/tds/common/reactor/Subscription;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .line 75
    .local p0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v0, Lcom/tds/common/reactor/subscriptions/Subscriptions$FutureSubscription;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/subscriptions/Subscriptions$FutureSubscription;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static varargs from([Lcom/tds/common/reactor/Subscription;)Lcom/tds/common/reactor/subscriptions/CompositeSubscription;
    .registers 2
    .param p0, "subscriptions"    # [Lcom/tds/common/reactor/Subscription;

    .line 106
    new-instance v0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;-><init>([Lcom/tds/common/reactor/Subscription;)V

    return-object v0
.end method

.method public static unsubscribed()Lcom/tds/common/reactor/Subscription;
    .registers 1

    .line 53
    sget-object v0, Lcom/tds/common/reactor/subscriptions/Subscriptions;->UNSUBSCRIBED:Lcom/tds/common/reactor/subscriptions/Subscriptions$Unsubscribed;

    return-object v0
.end method
