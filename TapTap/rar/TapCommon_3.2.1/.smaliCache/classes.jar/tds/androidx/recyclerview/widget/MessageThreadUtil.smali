.class Ltds/androidx/recyclerview/widget/MessageThreadUtil;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;,
        Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ltds/androidx/recyclerview/widget/ThreadUtil<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    .local p1, "callback":Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;, "Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback<TT;>;"
    new-instance v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    invoke-direct {v0, p0, p1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;-><init>(Ltds/androidx/recyclerview/widget/MessageThreadUtil;Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V

    return-object v0
.end method

.method public getMainThreadProxy(Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation

    .line 30
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    .local p1, "callback":Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;, "Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback<TT;>;"
    new-instance v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;

    invoke-direct {v0, p0, p1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;-><init>(Ltds/androidx/recyclerview/widget/MessageThreadUtil;Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V

    return-object v0
.end method
