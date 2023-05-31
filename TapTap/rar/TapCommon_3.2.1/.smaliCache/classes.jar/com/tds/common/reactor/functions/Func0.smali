.class public interface abstract Lcom/tds/common/reactor/functions/Func0;
.super Ljava/lang/Object;
.source "Func0.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Function;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Function;",
        "Ljava/util/concurrent/Callable<",
        "TR;>;"
    }
.end annotation


# virtual methods
.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method
