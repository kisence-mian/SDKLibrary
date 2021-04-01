.class Lcom/bytedance/sdk/adnet/core/b;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field protected static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Lcom/bytedance/sdk/adnet/core/b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/b$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/core/b;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
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

    .prologue
    .line 134
    monitor-enter p0

    :goto_1
    :try_start_1
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/b;->e:I

    if-le v0, v1, :cond_20

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

    sub-int v0, v1, v0

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_1

    .line 134
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_20
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a([B)V
    .registers 4

    .prologue
    .line 117
    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_3
    array-length v0, p1

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/b;->e:I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2b

    if-le v0, v1, :cond_a

    .line 128
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 120
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    sget-object v1, Lcom/bytedance/sdk/adnet/core/b;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 122
    if-gez v0, :cond_1c

    .line 123
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 125
    :cond_1c
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    .line 127
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/b;->a()V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2b

    goto :goto_8

    .line 117
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)[B
    .registers 6

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 100
    array-length v2, v0

    if-lt v2, p1, :cond_28

    .line 101
    iget v2, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/adnet/core/b;->d:I

    .line 102
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2f

    .line 107
    :goto_26
    monitor-exit p0

    return-object v0

    .line 98
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 107
    :cond_2c
    :try_start_2c
    new-array v0, p1, [B
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_2f

    goto :goto_26

    .line 98
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
