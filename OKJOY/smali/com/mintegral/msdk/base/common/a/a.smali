.class public final Lcom/mintegral/msdk/base/common/a/a;
.super Ljava/lang/Object;
.source "LruMemoryCache.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mintegral/msdk/base/common/a/b",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-gtz p1, :cond_d

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_d
    iput p1, p0, Lcom/mintegral/msdk/base/common/a/a;->b:I

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/a/a;->a:Ljava/util/LinkedHashMap;

    .line 38
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 46
    if-nez p1, :cond_a

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_a
    monitor-enter p0

    .line 50
    :try_start_b
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 51
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 52
    monitor-exit p0

    .line 55
    :goto_1c
    return-object v0

    .line 54
    :cond_1d
    monitor-exit p0

    .line 55
    const/4 v0, 0x0

    goto :goto_1c

    .line 54
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_20

    throw v0
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 87
    :goto_0
    monitor-enter p0

    .line 88
    :try_start_1
    iget v0, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/mintegral/msdk/base/common/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I

    if-eqz v0, :cond_35

    .line 89
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0

    .line 92
    :cond_35
    :try_start_35
    iget v0, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I

    if-le v0, p1, :cond_41

    iget-object v0, p0, Lcom/mintegral/msdk/base/common/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 93
    :cond_41
    monitor-exit p0

    .line 98
    :goto_42
    return-void

    .line 96
    :cond_43
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 97
    if-nez v0, :cond_57

    .line 98
    monitor-exit p0

    goto :goto_42

    .line 100
    :cond_57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_63
    .catchall {:try_start_35 .. :try_end_63} :catchall_32

    .line 103
    :try_start_63
    invoke-static {v0}, Lcom/mintegral/msdk/base/common/a/a;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 104
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    iget v0, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_77} :catch_79
    .catchall {:try_start_63 .. :try_end_77} :catchall_32

    .line 110
    :goto_77
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_32

    goto :goto_0

    :catch_79
    move-exception v0

    goto :goto_77
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 5

    .prologue
    .line 63
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 64
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_c
    monitor-enter p0

    .line 68
    :try_start_d
    iget v0, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I

    invoke-static {p2}, Lcom/mintegral/msdk/base/common/a/a;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I

    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/a/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 70
    if-eqz v0, :cond_2a

    .line 71
    iget v1, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/a/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/mintegral/msdk/base/common/a/a;->c:I

    .line 73
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_32

    .line 74
    iget v0, p0, Lcom/mintegral/msdk/base/common/a/a;->b:I

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/a/a;->a(I)V

    .line 75
    const/4 v0, 0x1

    return v0

    .line 73
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/a/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 138
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/a/a;->a(I)V

    .line 139
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/base/common/a/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    const-string v0, "LruCache[maxSize=%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mintegral/msdk/base/common/a/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
