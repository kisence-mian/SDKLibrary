.class public final enum Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
.super Ljava/lang/Enum;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/lz4/LZ4FrameOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BLOCKSIZE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

.field public static final enum SIZE_1MB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

.field public static final enum SIZE_256KB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

.field public static final enum SIZE_4MB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

.field public static final enum SIZE_64KB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;


# instance fields
.field private final indicator:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 61
    new-instance v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    const-string v1, "SIZE_64KB"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_64KB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    new-instance v1, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    const-string v4, "SIZE_256KB"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_256KB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    new-instance v4, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    const-string v6, "SIZE_1MB"

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-direct {v4, v6, v7, v8}, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_1MB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    new-instance v6, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    const-string v8, "SIZE_4MB"

    const/4 v9, 0x3

    const/4 v10, 0x7

    invoke-direct {v6, v8, v9, v10}, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_4MB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    .line 60
    new-array v3, v3, [Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    sput-object v3, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->$VALUES:[Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "indicator"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->indicator:I

    .line 65
    return-void
.end method

.method public static valueOf(I)Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .registers 6
    .param p0, "indicator"    # I

    .line 70
    packed-switch p0, :pswitch_data_28

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Block size must be 4-7. Cannot use value of [%d]"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_1b
    sget-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_4MB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object v0

    .line 72
    :pswitch_1e
    sget-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_1MB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object v0

    .line 73
    :pswitch_21
    sget-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_256KB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object v0

    .line 74
    :pswitch_24
    sget-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_64KB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x4
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    const-class v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object v0
.end method

.method public static values()[Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .registers 1

    .line 60
    sget-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->$VALUES:[Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    invoke-virtual {v0}, [Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object v0
.end method


# virtual methods
.method public getIndicator()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->indicator:I

    return v0
.end method
