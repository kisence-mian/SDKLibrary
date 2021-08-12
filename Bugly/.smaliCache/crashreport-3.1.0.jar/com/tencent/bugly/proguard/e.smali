.class public final Lcom/tencent/bugly/proguard/e;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/tencent/bugly/proguard/e;->a:[C

    .line 17
    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .registers 8

    .line 53
    if-eqz p0, :cond_2f

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_2f

    .line 58
    :cond_6
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 59
    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_29

    .line 61
    aget-byte v2, p0, v1

    .line 62
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/tencent/bugly/proguard/e;->a:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v4

    .line 63
    ushr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    .line 64
    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v0, v3

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 66
    :cond_29
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 55
    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    return-object p0
.end method
