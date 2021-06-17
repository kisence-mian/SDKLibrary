.class abstract enum Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field public static final enum STRONG:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS_WRITE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_WRITE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field public static final enum WEAK:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS_WRITE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_WRITE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field static final factories:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 437
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->STRONG:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 444
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$2;

    const-string v3, "STRONG_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 459
    new-instance v3, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$3;

    const-string v5, "STRONG_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->STRONG_WRITE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 474
    new-instance v5, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$4;

    const-string v7, "STRONG_ACCESS_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 490
    new-instance v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$5;

    const-string v9, "WEAK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->WEAK:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 497
    new-instance v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$6;

    const-string v11, "WEAK_ACCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 512
    new-instance v11, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$7;

    const-string v13, "WEAK_WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->WEAK_WRITE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 527
    new-instance v13, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$8;

    const-string v15, "WEAK_ACCESS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 436
    const/16 v15, 0x8

    new-array v14, v15, [Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    const/16 v16, 0x6

    aput-object v11, v14, v16

    const/16 v17, 0x7

    aput-object v13, v14, v17

    sput-object v14, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 551
    new-array v14, v15, [Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    aput-object v11, v14, v16

    aput-object v13, v14, v17

    sput-object v14, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->factories:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$1;)V
    .registers 4

    .line 436
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFactory(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;ZZ)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyStrength",
            "usesAccessQueue",
            "usesWriteQueue"
        }
    .end annotation

    .line 565
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->WEAK:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x4

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 566
    :goto_8
    or-int/2addr p0, p1

    .line 567
    if-eqz p2, :cond_c

    const/4 v1, 0x2

    :cond_c
    or-int/2addr p0, v1

    .line 568
    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->factories:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    aget-object p0, p1, p0

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;
    .registers 1

    .line 436
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    invoke-virtual {v0}, [Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    return-object v0
.end method


# virtual methods
.method copyAccessEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 598
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getAccessTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setAccessTime(J)V

    .line 600
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getPreviousInAccessQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->connectAccessOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 601
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInAccessQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->connectAccessOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 603
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullifyAccessOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 604
    return-void
.end method

.method copyEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "segment",
            "original",
            "newNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 591
    invoke-interface {p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->newEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method copyWriteEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 610
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setWriteTime(J)V

    .line 612
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getPreviousInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->connectWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 613
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->connectWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 615
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullifyWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 616
    return-void
.end method

.method abstract newEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "segment",
            "key",
            "hash",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method
