.class final Lrx/observers/AsyncCompletableSubscriber$Unsubscribed;
.super Ljava/lang/Object;
.source "AsyncCompletableSubscriber.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observers/AsyncCompletableSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Unsubscribed"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .registers 1

    .prologue
    .line 120
    return-void
.end method
