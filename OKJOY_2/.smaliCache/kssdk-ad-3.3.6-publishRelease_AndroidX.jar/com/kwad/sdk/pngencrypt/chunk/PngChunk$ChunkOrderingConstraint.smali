.class public final enum Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChunkOrderingConstraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

.field public static final enum AFTER_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

.field public static final enum AFTER_PLTE_BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

.field public static final enum AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

.field public static final enum BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

.field public static final enum BEFORE_PLTE_AND_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

.field public static final enum NA:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

.field public static final enum NONE:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->NONE:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    new-instance v1, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const-string v3, "BEFORE_PLTE_AND_IDAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    new-instance v3, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const-string v5, "AFTER_PLTE_BEFORE_IDAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    new-instance v5, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const-string v7, "AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    new-instance v7, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const-string v9, "BEFORE_IDAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    new-instance v9, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const-string v11, "AFTER_IDAT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    new-instance v11, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const-string v13, "NA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->NA:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->$VALUES:[Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;
    .registers 2

    const-class v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->$VALUES:[Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    invoke-virtual {v0}, [Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method


# virtual methods
.method public isOk(IZ)Z
    .registers 8

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->NONE:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p0, v0, :cond_11

    if-ge p1, v2, :cond_f

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    return v1

    :cond_11
    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    const/4 v4, 0x2

    if-ne p0, v0, :cond_1b

    if-ge p1, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    return v1

    :cond_1b
    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v0, :cond_2b

    if-eqz p2, :cond_24

    if-ge p1, v2, :cond_29

    goto :goto_2a

    :cond_24
    if-ge p1, v2, :cond_29

    if-le p1, v4, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    return v1

    :cond_2b
    sget-object p2, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-ne p0, p2, :cond_34

    if-le p1, v2, :cond_32

    goto :goto_33

    :cond_32
    move v1, v3

    :goto_33
    return v1

    :cond_34
    return v3
.end method

.method public mustGoAfterIDAT()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public mustGoAfterPLTE()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public mustGoBeforeIDAT()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public mustGoBeforePLTE()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lcom/kwad/sdk/pngencrypt/chunk/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
