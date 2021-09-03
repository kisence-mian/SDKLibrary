.class public final enum Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
.super Ljava/lang/Enum;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/lz4/LZ4FrameOutputStream$FLG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum BLOCK_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum BLOCK_INDEPENDENCE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum CONTENT_SIZE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum RESERVED_0:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum RESERVED_1:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;


# instance fields
.field private final position:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 320
    new-instance v0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v1, "RESERVED_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->RESERVED_0:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 321
    new-instance v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v3, "RESERVED_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->RESERVED_1:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 322
    new-instance v3, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v5, "CONTENT_CHECKSUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 323
    new-instance v5, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v7, "CONTENT_SIZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_SIZE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 324
    new-instance v7, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v9, "BLOCK_CHECKSUM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 325
    new-instance v9, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v11, "BLOCK_INDEPENDENCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_INDEPENDENCE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 319
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->$VALUES:[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 329
    iput p3, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I

    .line 330
    return-void
.end method

.method static synthetic access$100(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 319
    iget v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 319
    const-class v0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    return-object v0
.end method

.method public static values()[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    .registers 1

    .line 319
    sget-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->$VALUES:[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0}, [Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    return-object v0
.end method
