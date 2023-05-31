.class public interface abstract Lcom/tds/common/reactor/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lcom/tds/common/reactor/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/Emitter$BackpressureMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract requested()J
.end method

.method public abstract setSubscription(Lcom/tds/common/reactor/Subscription;)V
.end method
