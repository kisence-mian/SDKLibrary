.class public final enum Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/pngencrypt/ChunkReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChunkReaderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

.field public static final enum BUFFER:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

.field public static final enum PROCESS:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

.field public static final enum SKIP:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    const-string v1, "BUFFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->BUFFER:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    new-instance v1, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    const-string v3, "PROCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->PROCESS:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    new-instance v3, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    const-string v5, "SKIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->SKIP:Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->$VALUES:[Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;
    .registers 2

    const-class v0, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->$VALUES:[Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    invoke-virtual {v0}, [Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;

    return-object v0
.end method
