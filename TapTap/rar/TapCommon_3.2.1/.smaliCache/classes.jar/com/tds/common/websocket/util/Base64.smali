.class public Lcom/tds/common/websocket/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/websocket/util/Base64$OutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 172
    nop

    .line 251
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_32

    sput-object v1, Lcom/tds/common/websocket/util/Base64;->_STANDARD_ALPHABET:[B

    .line 269
    const/16 v1, 0x100

    new-array v2, v1, [B

    fill-array-data v2, :array_56

    sput-object v2, Lcom/tds/common/websocket/util/Base64;->_STANDARD_DECODABET:[B

    .line 311
    new-array v2, v0, [B

    fill-array-data v2, :array_da

    sput-object v2, Lcom/tds/common/websocket/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 327
    new-array v1, v1, [B

    fill-array-data v1, :array_fe

    sput-object v1, Lcom/tds/common/websocket/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 373
    new-array v0, v0, [B

    fill-array-data v0, :array_182

    sput-object v0, Lcom/tds/common/websocket/util/Base64;->_ORDERED_ALPHABET:[B

    .line 391
    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_1a6

    sput-object v0, Lcom/tds/common/websocket/util/Base64;->_ORDERED_DECODABET:[B

    return-void

    :array_32
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_56
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_da
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_fe
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_182
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    :array_1a6
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    return-void
.end method

.method static synthetic access$000(I)[B
    .registers 2
    .param p0, "x0"    # I

    .line 172
    invoke-static {p0}, Lcom/tds/common/websocket/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([B[BII)[B
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 172
    invoke-static {p0, p1, p2, p3}, Lcom/tds/common/websocket/util/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BI[BII)I
    .registers 6
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 172
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tds/common/websocket/util/Base64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method private static decode4to3([BI[BII)I
    .registers 10
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "options"    # I

    .line 807
    if-eqz p0, :cond_e3

    .line 810
    if-eqz p2, :cond_db

    .line 813
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ltz p1, :cond_c0

    add-int/lit8 v3, p1, 0x3

    array-length v4, p0

    if-ge v3, v4, :cond_c0

    .line 818
    if-ltz p3, :cond_a5

    add-int/lit8 v3, p3, 0x2

    array-length v4, p2

    if-ge v3, v4, :cond_a5

    .line 824
    invoke-static {p4}, Lcom/tds/common/websocket/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 827
    .local v0, "DECODABET":[B
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3a

    .line 831
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    .line 834
    .local v2, "outBuff":I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 835
    return v1

    .line 839
    .end local v2    # "outBuff":I
    :cond_3a
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v4, :cond_6b

    .line 844
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    .line 848
    .local v1, "outBuff":I
    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 849
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 850
    return v2

    .line 860
    .end local v1    # "outBuff":I
    :cond_6b
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 865
    .restart local v1    # "outBuff":I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 866
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 867
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 869
    const/4 v2, 0x3

    return v2

    .line 819
    .end local v0    # "DECODABET":[B
    .end local v1    # "outBuff":I
    :cond_a5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    array-length v4, p2

    .line 821
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 819
    const-string v0, "Destination array with length %d cannot have offset of %d and still store three bytes."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 814
    :cond_c0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    array-length v4, p0

    .line 816
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 814
    const-string v0, "Source array with length %d cannot have offset of %d and still process four bytes."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 811
    :cond_db
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination array was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_e3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source array was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encode3to4([BII[BII)[B
    .registers 11
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "options"    # I

    .line 520
    invoke-static {p5}, Lcom/tds/common/websocket/util/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 533
    .local v0, "ALPHABET":[B
    const/4 v1, 0x0

    if-lez p2, :cond_e

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const/4 v3, 0x1

    if-le p2, v3, :cond_1b

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_28

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_28
    or-int/2addr v1, v2

    .line 537
    .local v1, "inBuff":I
    const/16 v2, 0x3d

    packed-switch p2, :pswitch_data_8a

    .line 560
    return-object p3

    .line 539
    :pswitch_2f
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 540
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 541
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 542
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 543
    return-object p3

    .line 546
    :pswitch_52
    ushr-int/lit8 v3, v1, 0x12

    aget-byte v3, v0, v3

    aput-byte v3, p3, p4

    .line 547
    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 548
    add-int/lit8 v3, p4, 0x2

    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 549
    add-int/lit8 v3, p4, 0x3

    aput-byte v2, p3, v3

    .line 550
    return-object p3

    .line 553
    :pswitch_71
    ushr-int/lit8 v3, v1, 0x12

    aget-byte v3, v0, v3

    aput-byte v3, p3, p4

    .line 554
    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 555
    add-int/lit8 v3, p4, 0x2

    aput-byte v2, p3, v3

    .line 556
    add-int/lit8 v3, p4, 0x3

    aput-byte v2, p3, v3

    .line 557
    return-object p3

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_52
        :pswitch_2f
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .registers 10
    .param p0, "b4"    # [B
    .param p1, "threeBytes"    # [B
    .param p2, "numSigBytes"    # I
    .param p3, "options"    # I

    .line 491
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/tds/common/websocket/util/Base64;->encode3to4([BII[BII)[B

    .line 492
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # [B

    .line 577
    const/4 v0, 0x0

    .line 579
    .local v0, "encoded":Ljava/lang/String;
    :try_start_1
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/tds/common/websocket/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 582
    goto :goto_b

    .line 580
    :catch_9
    move-exception v1

    .line 581
    .local v1, "ex":Ljava/io/IOException;
    nop

    .line 583
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_b
    nop

    .line 584
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .registers 7
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    invoke-static {p0, p1, p2, p3}, Lcom/tds/common/websocket/util/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object v0

    .line 624
    .local v0, "encoded":[B
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c

    return-object v1

    .line 625
    :catch_c
    move-exception v1

    .line 626
    .local v1, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static encodeBytesToBytes([BIII)[B
    .registers 22
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    if-eqz v7, :cond_139

    .line 655
    if-ltz v8, :cond_120

    .line 659
    if-ltz v9, :cond_107

    .line 663
    add-int v0, v8, v9

    array-length v1, v7

    const/4 v10, 0x1

    if-gt v0, v1, :cond_e3

    .line 671
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6d

    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 674
    .local v2, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v3, 0x0

    .line 678
    .local v3, "b64os":Lcom/tds/common/websocket/util/Base64$OutputStream;
    :try_start_19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v0

    .line 679
    new-instance v0, Lcom/tds/common/websocket/util/Base64$OutputStream;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v0, v1, v4}, Lcom/tds/common/websocket/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v3, v0

    .line 680
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v0

    .line 682
    invoke-virtual {v2, v7, v8, v9}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 683
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_33} :catch_4e
    .catchall {:try_start_19 .. :try_end_33} :catchall_4b

    .line 690
    nop

    .line 691
    :try_start_34
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    .line 695
    goto :goto_39

    .line 693
    :catch_38
    move-exception v0

    .line 697
    :goto_39
    nop

    .line 698
    :try_start_3a
    invoke-virtual {v3}, Lcom/tds/common/websocket/util/Base64$OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 702
    goto :goto_3f

    .line 700
    :catch_3e
    move-exception v0

    .line 704
    :goto_3f
    nop

    .line 705
    :try_start_40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    .line 709
    goto :goto_46

    .line 707
    :catch_44
    move-exception v0

    .line 710
    nop

    .line 712
    :goto_46
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 689
    :catchall_4b
    move-exception v0

    move-object v4, v0

    goto :goto_51

    .line 684
    :catch_4e
    move-exception v0

    .line 687
    .local v0, "e":Ljava/io/IOException;
    nop

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "b64os":Lcom/tds/common/websocket/util/Base64$OutputStream;
    .end local p0    # "source":[B
    .end local p1    # "off":I
    .end local p2    # "len":I
    .end local p3    # "options":I
    :try_start_50
    throw v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4b

    .line 690
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "b64os":Lcom/tds/common/websocket/util/Base64$OutputStream;
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :goto_51
    if-eqz v2, :cond_59

    .line 691
    :try_start_53
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_59

    .line 693
    :catch_57
    move-exception v0

    goto :goto_5a

    .line 695
    :cond_59
    :goto_59
    nop

    .line 697
    :goto_5a
    if-eqz v3, :cond_62

    .line 698
    :try_start_5c
    invoke-virtual {v3}, Lcom/tds/common/websocket/util/Base64$OutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_62

    .line 700
    :catch_60
    move-exception v0

    goto :goto_63

    .line 702
    :cond_62
    :goto_62
    nop

    .line 704
    :goto_63
    if-eqz v1, :cond_6b

    .line 705
    :try_start_65
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6b

    .line 707
    :catch_69
    move-exception v0

    goto :goto_6c

    .line 709
    :cond_6b
    :goto_6b
    nop

    .line 710
    :goto_6c
    throw v4

    .line 717
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "b64os":Lcom/tds/common/websocket/util/Base64$OutputStream;
    :cond_6d
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_73

    move v0, v10

    goto :goto_74

    :cond_73
    const/4 v0, 0x0

    .line 727
    .local v0, "breakLines":Z
    :goto_74
    div-int/lit8 v1, v9, 0x3

    const/4 v12, 0x4

    mul-int/2addr v1, v12

    rem-int/lit8 v2, v9, 0x3

    if-lez v2, :cond_7e

    move v2, v12

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x0

    :goto_7f
    add-int/2addr v1, v2

    .line 728
    .local v1, "encLen":I
    if-eqz v0, :cond_87

    .line 729
    div-int/lit8 v2, v1, 0x4c

    add-int/2addr v1, v2

    move v13, v1

    goto :goto_88

    .line 728
    :cond_87
    move v13, v1

    .line 731
    .end local v1    # "encLen":I
    .local v13, "encLen":I
    :goto_88
    new-array v14, v13, [B

    .line 733
    .local v14, "outBuff":[B
    const/4 v1, 0x0

    .line 734
    .local v1, "d":I
    const/4 v2, 0x0

    .line 735
    .local v2, "e":I
    add-int/lit8 v15, v9, -0x2

    .line 736
    .local v15, "len2":I
    const/4 v3, 0x0

    move v6, v1

    move/from16 v16, v2

    move/from16 v17, v3

    .line 737
    .end local v1    # "d":I
    .end local v2    # "e":I
    .local v6, "d":I
    .local v16, "e":I
    .local v17, "lineLength":I
    :goto_94
    if-ge v6, v15, :cond_bf

    .line 738
    add-int v2, v6, v8

    const/4 v3, 0x3

    move-object/from16 v1, p0

    move-object v4, v14

    move/from16 v5, v16

    move v11, v6

    .end local v6    # "d":I
    .local v11, "d":I
    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/tds/common/websocket/util/Base64;->encode3to4([BII[BII)[B

    .line 740
    add-int/lit8 v1, v17, 0x4

    .line 741
    .end local v17    # "lineLength":I
    .local v1, "lineLength":I
    if-eqz v0, :cond_b8

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_b8

    .line 742
    add-int/lit8 v2, v16, 0x4

    const/16 v3, 0xa

    aput-byte v3, v14, v2

    .line 743
    add-int/lit8 v16, v16, 0x1

    .line 744
    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_ba

    .line 737
    :cond_b8
    move/from16 v17, v1

    .end local v1    # "lineLength":I
    .restart local v17    # "lineLength":I
    :goto_ba
    add-int/lit8 v6, v11, 0x3

    .end local v11    # "d":I
    .restart local v6    # "d":I
    add-int/lit8 v16, v16, 0x4

    goto :goto_94

    .line 748
    :cond_bf
    move v11, v6

    .end local v6    # "d":I
    .restart local v11    # "d":I
    if-ge v11, v9, :cond_d5

    .line 749
    add-int v2, v11, v8

    sub-int v3, v9, v11

    move-object/from16 v1, p0

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/tds/common/websocket/util/Base64;->encode3to4([BII[BII)[B

    .line 750
    add-int/lit8 v16, v16, 0x4

    move/from16 v1, v16

    goto :goto_d7

    .line 748
    :cond_d5
    move/from16 v1, v16

    .line 754
    .end local v16    # "e":I
    .local v1, "e":I
    :goto_d7
    array-length v2, v14

    sub-int/2addr v2, v10

    if-gt v1, v2, :cond_e2

    .line 759
    new-array v2, v1, [B

    .line 760
    .local v2, "finalOut":[B
    const/4 v3, 0x0

    invoke-static {v14, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 762
    return-object v2

    .line 765
    .end local v2    # "finalOut":[B
    :cond_e2
    return-object v14

    .line 664
    .end local v0    # "breakLines":Z
    .end local v1    # "e":I
    .end local v11    # "d":I
    .end local v13    # "encLen":I
    .end local v14    # "outBuff":[B
    .end local v15    # "len2":I
    .end local v17    # "lineLength":I
    :cond_e3
    const/4 v3, 0x0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 666
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    array-length v2, v7

    .line 667
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 666
    const-string v2, "Cannot have offset of %d and length of %d with array of length %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have length offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have negative offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final getAlphabet(I)[B
    .registers 3
    .param p0, "options"    # I

    .line 439
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 440
    sget-object v0, Lcom/tds/common/websocket/util/Base64;->_URL_SAFE_ALPHABET:[B

    return-object v0

    .line 441
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 442
    sget-object v0, Lcom/tds/common/websocket/util/Base64;->_ORDERED_ALPHABET:[B

    return-object v0

    .line 444
    :cond_12
    sget-object v0, Lcom/tds/common/websocket/util/Base64;->_STANDARD_ALPHABET:[B

    return-object v0
.end method

.method private static final getDecodabet(I)[B
    .registers 3
    .param p0, "options"    # I

    .line 455
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 456
    sget-object v0, Lcom/tds/common/websocket/util/Base64;->_URL_SAFE_DECODABET:[B

    return-object v0

    .line 457
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 458
    sget-object v0, Lcom/tds/common/websocket/util/Base64;->_ORDERED_DECODABET:[B

    return-object v0

    .line 460
    :cond_12
    sget-object v0, Lcom/tds/common/websocket/util/Base64;->_STANDARD_DECODABET:[B

    return-object v0
.end method
