.class final enum Lcom/tds/lz4/LZ4JNI;
.super Ljava/lang/Enum;
.source "LZ4JNI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/lz4/LZ4JNI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/lz4/LZ4JNI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/lz4/LZ4JNI;

    sput-object v0, Lcom/tds/lz4/LZ4JNI;->$VALUES:[Lcom/tds/lz4/LZ4JNI;

    .line 29
    invoke-static {}, Lcom/tds/util/Native;->load()V

    .line 30
    invoke-static {}, Lcom/tds/lz4/LZ4JNI;->init()V

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static native LZ4_compressBound(I)I
.end method

.method static native LZ4_compressHC([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;III)I
.end method

.method static native LZ4_compress_limitedOutput([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;II)I
.end method

.method static native LZ4_decompress_fast([BLjava/nio/ByteBuffer;I[BLjava/nio/ByteBuffer;II)I
.end method

.method static native LZ4_decompress_safe([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;II)I
.end method

.method static native init()V
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/lz4/LZ4JNI;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/tds/lz4/LZ4JNI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/lz4/LZ4JNI;

    return-object v0
.end method

.method public static values()[Lcom/tds/lz4/LZ4JNI;
    .registers 1

    .line 25
    sget-object v0, Lcom/tds/lz4/LZ4JNI;->$VALUES:[Lcom/tds/lz4/LZ4JNI;

    invoke-virtual {v0}, [Lcom/tds/lz4/LZ4JNI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/lz4/LZ4JNI;

    return-object v0
.end method
