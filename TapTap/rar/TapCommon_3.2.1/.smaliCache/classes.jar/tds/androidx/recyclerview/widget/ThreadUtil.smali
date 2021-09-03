.class interface abstract Ltds/androidx/recyclerview/widget/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;,
        Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBackgroundProxy(Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getMainThreadProxy(Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end method
