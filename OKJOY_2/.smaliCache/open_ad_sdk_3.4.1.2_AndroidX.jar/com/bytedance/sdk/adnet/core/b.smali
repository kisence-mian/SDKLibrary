.class Lcom/bytedance/sdk/adnet/core/b;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field protected static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Lcom/bytedance/sdk/adnet/core/b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/b$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/core/b;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->b:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    .line 86
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/b;->e:I

    .line 87
    return-void
.end method

.method private declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 134
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/b;->e:I

    if-le v0, v1, :cond_1c

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    iget v1, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    array-length v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    .line 138
    goto :goto_1

    .line 139
    :cond_1c
    monitor-exit p0

    return-void

    .line 133
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a([B)V
    .registers 4

    monitor-enter p0

    .line 117
    if-eqz p1, :cond_2e

    :try_start_3
    array-length v0, p1

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/b;->e:I

    if-le v0, v1, :cond_9

    goto :goto_2e

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    sget-object v1, Lcom/bytedance/sdk/adnet/core/b;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 122
    if-gez v0, :cond_1b

    .line 123
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 125
    :cond_1b
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    .line 127
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/b;->a()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 128
    monitor-exit p0

    return-void

    .line 116
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1

    .line 118
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(I)[B
    .registers 5

    monitor-enter p0

    .line 98
    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 99
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 100
    array-length v2, v1

    if-lt v2, p1, :cond_27

    .line 101
    iget p1, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    array-length v2, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    .line 102
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/b;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_2e

    .line 104
    monitor-exit p0

    return-object v1

    .line 98
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_2a
    :try_start_2a
    new-array p1, p1, [B
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object p1

    .line 97
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
