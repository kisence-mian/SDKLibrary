.class Lcom/bytedance/sdk/adnet/core/o$a;
.super Ljava/lang/Object;
.source "VNetLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/o$a$a;
    }
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/o$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 112
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    sput-boolean v0, Lcom/bytedance/sdk/adnet/core/o$a;->a:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/o$a;->b:Ljava/util/List;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/o$a;->c:Z

    return-void
.end method

.method private a()J
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/o$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 183
    const-wide/16 v0, 0x0

    return-wide v0

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/o$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/o$a$a;

    iget-wide v0, v0, Lcom/bytedance/sdk/adnet/core/o$a$a;->c:J

    .line 187
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/o$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/adnet/core/o$a$a;

    iget-wide v2, v2, Lcom/bytedance/sdk/adnet/core/o$a$a;->c:J

    .line 188
    sub-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    .line 152
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/o$a;->c:Z

    .line 154
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/o$a;->a()J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_60

    .line 155
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_10

    .line 156
    monitor-exit p0

    return-void

    .line 159
    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/o$a;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/adnet/core/o$a$a;

    iget-wide v5, v3, Lcom/bytedance/sdk/adnet/core/o$a$a;->c:J

    .line 160
    const-string v3, "(%-4d ms) %s"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v4

    aput-object p1, v8, v0

    invoke-static {v3, v8}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/o$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/core/o$a$a;

    .line 162
    iget-wide v2, v1, Lcom/bytedance/sdk/adnet/core/o$a$a;->c:J

    .line 163
    const-string v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    sub-long v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v4

    iget-wide v5, v1, Lcom/bytedance/sdk/adnet/core/o$a$a;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v0

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/core/o$a$a;->a:Ljava/lang/String;

    aput-object v1, v9, v7

    invoke-static {v8, v9}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_10 .. :try_end_5b} :catchall_60

    .line 164
    nop

    .line 165
    move-wide v5, v2

    goto :goto_31

    .line 166
    :cond_5e
    monitor-exit p0

    return-void

    .line 151
    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .registers 12

    monitor-enter p0

    .line 138
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/o$a;->c:Z

    if-nez v0, :cond_18

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/o$a;->b:Ljava/util/List;

    new-instance v7, Lcom/bytedance/sdk/adnet/core/o$a$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/adnet/core/o$a$a;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_20

    .line 143
    monitor-exit p0

    return-void

    .line 139
    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Marker added to finished log"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 137
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/o$a;->c:Z

    if-nez v0, :cond_11

    .line 173
    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/o$a;->a(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_11
    return-void
.end method
