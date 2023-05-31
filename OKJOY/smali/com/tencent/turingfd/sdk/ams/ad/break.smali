.class public abstract Lcom/tencent/turingfd/sdk/ams/ad/break;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile lb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/break;->lb:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 2
    monitor-enter p0

    .line 3
    :try_start_5
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/break;->lb:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 4
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/break;->create()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/break;->lb:Ljava/lang/Object;

    .line 6
    :cond_f
    monitor-exit p0

    :cond_10
    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method
