.class Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;
.super Ljava/lang/Object;
.source "CompletableHelper.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/CompletableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompletableCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<",
        "Lrx/Completable;",
        ">;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Scheduler;)V
    .registers 2
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;->scheduler:Lrx/Scheduler;

    .line 78
    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;->adapt(Lretrofit2/Call;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit2/Call;)Lrx/Completable;
    .registers 4
    .param p1, "call"    # Lretrofit2/Call;

    .prologue
    .line 85
    new-instance v1, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;-><init>(Lretrofit2/Call;)V

    invoke-static {v1}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    .line 86
    .local v0, "completable":Lrx/Completable;
    iget-object v1, p0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;->scheduler:Lrx/Scheduler;

    if-eqz v1, :cond_13

    .line 87
    iget-object v1, p0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Completable;->subscribeOn(Lrx/Scheduler;)Lrx/Completable;

    move-result-object v0

    .line 89
    .end local v0    # "completable":Lrx/Completable;
    :cond_13
    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 81
    const-class v0, Ljava/lang/Void;

    return-object v0
.end method
