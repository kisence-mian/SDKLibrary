.class public final enum Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

.field public static final enum LOAD_CHUNK_ALWAYS:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

.field public static final enum LOAD_CHUNK_IF_SAFE:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

.field public static final enum LOAD_CHUNK_MOST_IMPORTANT:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

.field public static final enum LOAD_CHUNK_NEVER:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    const-string v1, "LOAD_CHUNK_NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->LOAD_CHUNK_NEVER:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    new-instance v1, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    const-string v3, "LOAD_CHUNK_IF_SAFE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->LOAD_CHUNK_IF_SAFE:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    new-instance v3, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    const-string v5, "LOAD_CHUNK_MOST_IMPORTANT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->LOAD_CHUNK_MOST_IMPORTANT:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    new-instance v5, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    const-string v7, "LOAD_CHUNK_ALWAYS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->LOAD_CHUNK_ALWAYS:Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->$VALUES:[Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;
    .registers 2

    const-class v0, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->$VALUES:[Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    invoke-virtual {v0}, [Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/pngencrypt/chunk/ChunkLoadBehaviour;

    return-object v0
.end method
