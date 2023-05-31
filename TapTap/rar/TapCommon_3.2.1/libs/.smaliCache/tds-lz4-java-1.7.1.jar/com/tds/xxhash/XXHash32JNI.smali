.class final Lcom/tds/xxhash/XXHash32JNI;
.super Lcom/tds/xxhash/XXHash32;
.source "XXHash32JNI.java"


# static fields
.field public static final INSTANCE:Lcom/tds/xxhash/XXHash32;

.field private static SAFE_INSTANCE:Lcom/tds/xxhash/XXHash32;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/tds/xxhash/XXHash32JNI;

    invoke-direct {v0}, Lcom/tds/xxhash/XXHash32JNI;-><init>()V

    sput-object v0, Lcom/tds/xxhash/XXHash32JNI;->INSTANCE:Lcom/tds/xxhash/XXHash32;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/tds/xxhash/XXHash32;-><init>()V

    return-void
.end method


# virtual methods
.method public hash(Ljava/nio/ByteBuffer;III)I
    .registers 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "seed"    # I

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 36
    invoke-static {p1, p2, p3}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 37
    invoke-static {p1, p2, p3, p4}, Lcom/tds/xxhash/XXHashJNI;->XXH32BB(Ljava/nio/ByteBuffer;III)I

    move-result v0

    return v0

    .line 38
    :cond_e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/tds/xxhash/XXHash32JNI;->hash([BIII)I

    move-result v0

    return v0

    .line 41
    :cond_22
    sget-object v0, Lcom/tds/xxhash/XXHash32JNI;->SAFE_INSTANCE:Lcom/tds/xxhash/XXHash32;

    .line 42
    .local v0, "safeInstance":Lcom/tds/xxhash/XXHash32;
    if-nez v0, :cond_31

    .line 43
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->safeInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/xxhash/XXHashFactory;->hash32()Lcom/tds/xxhash/XXHash32;

    move-result-object v1

    sput-object v1, Lcom/tds/xxhash/XXHash32JNI;->SAFE_INSTANCE:Lcom/tds/xxhash/XXHash32;

    move-object v0, v1

    .line 45
    :cond_31
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tds/xxhash/XXHash32;->hash(Ljava/nio/ByteBuffer;III)I

    move-result v1

    return v1
.end method

.method public hash([BIII)I
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "seed"    # I

    .line 29
    invoke-static {p1, p2, p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 30
    invoke-static {p1, p2, p3, p4}, Lcom/tds/xxhash/XXHashJNI;->XXH32([BIII)I

    move-result v0

    return v0
.end method
