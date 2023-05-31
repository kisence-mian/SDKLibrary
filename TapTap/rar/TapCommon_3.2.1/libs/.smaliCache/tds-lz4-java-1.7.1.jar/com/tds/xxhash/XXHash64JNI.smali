.class final Lcom/tds/xxhash/XXHash64JNI;
.super Lcom/tds/xxhash/XXHash64;
.source "XXHash64JNI.java"


# static fields
.field public static final INSTANCE:Lcom/tds/xxhash/XXHash64;

.field private static SAFE_INSTANCE:Lcom/tds/xxhash/XXHash64;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/tds/xxhash/XXHash64JNI;

    invoke-direct {v0}, Lcom/tds/xxhash/XXHash64JNI;-><init>()V

    sput-object v0, Lcom/tds/xxhash/XXHash64JNI;->INSTANCE:Lcom/tds/xxhash/XXHash64;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/tds/xxhash/XXHash64;-><init>()V

    return-void
.end method


# virtual methods
.method public hash(Ljava/nio/ByteBuffer;IIJ)J
    .registers 13
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "seed"    # J

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 36
    invoke-static {p1, p2, p3}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 37
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tds/xxhash/XXHashJNI;->XXH64BB(Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v0

    return-wide v0

    .line 38
    :cond_e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v3, p2, v0

    move-object v1, p0

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tds/xxhash/XXHash64JNI;->hash([BIIJ)J

    move-result-wide v0

    return-wide v0

    .line 41
    :cond_26
    sget-object v0, Lcom/tds/xxhash/XXHash64JNI;->SAFE_INSTANCE:Lcom/tds/xxhash/XXHash64;

    .line 42
    .local v0, "safeInstance":Lcom/tds/xxhash/XXHash64;
    if-nez v0, :cond_35

    .line 43
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->safeInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/xxhash/XXHashFactory;->hash64()Lcom/tds/xxhash/XXHash64;

    move-result-object v1

    sput-object v1, Lcom/tds/xxhash/XXHash64JNI;->SAFE_INSTANCE:Lcom/tds/xxhash/XXHash64;

    move-object v0, v1

    .line 45
    :cond_35
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tds/xxhash/XXHash64;->hash(Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public hash([BIIJ)J
    .registers 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "seed"    # J

    .line 29
    invoke-static {p1, p2, p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 30
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tds/xxhash/XXHashJNI;->XXH64([BIIJ)J

    move-result-wide v0

    return-wide v0
.end method
