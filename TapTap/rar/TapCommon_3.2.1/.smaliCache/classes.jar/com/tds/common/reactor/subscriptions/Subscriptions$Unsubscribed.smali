.class final Lcom/tds/common/reactor/subscriptions/Subscriptions$Unsubscribed;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/subscriptions/Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Unsubscribed"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .registers 1

    .line 114
    return-void
.end method
