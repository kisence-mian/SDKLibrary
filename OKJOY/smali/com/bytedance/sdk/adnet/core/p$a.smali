.class Lcom/bytedance/sdk/adnet/core/p$a;
.super Ljava/lang/Object;
.source "VNetLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/p$a$a;
    }
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/core/p$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    sput-boolean v0, Lcom/bytedance/sdk/adnet/core/p$a;->a:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->b:Ljava/util/List;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->c:Z

    return-void
.end method

.method private a()J
    .registers 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 183
    const-wide/16 v0, 0x0

    .line 188
    :goto_a
    return-wide v0

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/p$a$a;

    iget-wide v2, v0, Lcom/bytedance/sdk/adnet/core/p$a$a;->c:J

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/p$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/p$a$a;

    iget-wide v0, v0, Lcom/bytedance/sdk/adnet/core/p$a$a;->c:J

    .line 188
    sub-long/2addr v0, v2

    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 152
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->c:Z

    .line 154
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/p$a;->a()J
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_63

    move-result-wide v2

    .line 155
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_10

    .line 166
    :cond_e
    monitor-exit p0

    return-void

    .line 159
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/p$a$a;

    iget-wide v0, v0, Lcom/bytedance/sdk/adnet/core/p$a$a;->c:J

    .line 160
    const-string v4, "(%-4d ms) %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/p$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/p$a$a;

    .line 162
    iget-wide v4, v0, Lcom/bytedance/sdk/adnet/core/p$a$a;->c:J

    .line 163
    const-string v1, "(+%-4d) [%2d] %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    iget-wide v8, v0, Lcom/bytedance/sdk/adnet/core/p$a$a;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/p$a$a;->a:Ljava/lang/String;

    aput-object v0, v7, v2

    invoke-static {v1, v7}, Lcom/bytedance/sdk/adnet/core/p;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_10 .. :try_end_61} :catchall_63

    move-wide v2, v4

    .line 165
    goto :goto_34

    .line 152
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .registers 12

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->c:Z

    if-eqz v0, :cond_10

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Marker added to finished log"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 138
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_10
    :try_start_10
    iget-object v6, p0, Lcom/bytedance/sdk/adnet/core/p$a;->b:Ljava/util/List;

    new-instance v0, Lcom/bytedance/sdk/adnet/core/p$a$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/adnet/core/p$a$a;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    .line 143
    monitor-exit p0

    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/p$a;->c:Z

    if-nez v0, :cond_11

    .line 173
    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/p$a;->a(Ljava/lang/String;)V

    .line 174
    const-string v0, "Marker log finalized without finish() - uncaught exit point for request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_11
    return-void
.end method
