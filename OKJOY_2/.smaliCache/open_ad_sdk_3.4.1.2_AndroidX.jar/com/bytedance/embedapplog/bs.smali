.class public abstract Lcom/bytedance/embedapplog/bs;
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
.field private volatile a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final varargs b([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/bytedance/embedapplog/bs;->a:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 10
    monitor-enter p0

    .line 11
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/embedapplog/bs;->a:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 12
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/bs;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/bs;->a:Ljava/lang/Object;

    .line 14
    :cond_f
    monitor-exit p0

    goto :goto_14

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1

    .line 16
    :cond_14
    :goto_14
    iget-object p1, p0, Lcom/bytedance/embedapplog/bs;->a:Ljava/lang/Object;

    return-object p1
.end method
