.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final COUNT:I = 0xa

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0xffff

.field static final ENABLE_PUSH:I = 0x2

.field static final HEADER_TABLE_SIZE:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final MAX_FRAME_SIZE:I = 0x5

.field static final MAX_HEADER_LIST_SIZE:I = 0x6


# instance fields
.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 55
    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 56
    return-void
.end method

.method get(I)I
    .registers 3
    .param p1, "id"    # I

    .line 77
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method getEnablePush(Z)Z
    .registers 7
    .param p1, "defaultValue"    # Z

    .line 93
    const/4 v0, 0x4

    .line 94
    .local v0, "bit":I
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v4, 0x2

    aget v1, v1, v4

    goto :goto_13

    :cond_e
    if-eqz p1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    if-ne v1, v3, :cond_16

    move v2, v3

    :cond_16
    return v2
.end method

.method getHeaderTableSize()I
    .registers 4

    .line 87
    const/4 v0, 0x2

    .line 88
    .local v0, "bit":I
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_d

    :cond_c
    const/4 v1, -0x1

    :goto_d
    return v1
.end method

.method getInitialWindowSize()I
    .registers 4

    .line 113
    const/16 v0, 0x80

    .line 114
    .local v0, "bit":I
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    goto :goto_10

    :cond_d
    const v1, 0xffff

    :goto_10
    return v1
.end method

.method getMaxConcurrentStreams(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 98
    const/16 v0, 0x10

    .line 99
    .local v0, "bit":I
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method getMaxFrameSize(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 103
    const/16 v0, 0x20

    .line 104
    .local v0, "bit":I
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method getMaxHeaderListSize(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 108
    const/16 v0, 0x40

    .line 109
    .local v0, "bit":I
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method isSet(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 71
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 72
    .local v1, "bit":I
    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method merge(Lokhttp3/internal/http2/Settings;)V
    .registers 4
    .param p1, "other"    # Lokhttp3/internal/http2/Settings;

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 123
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_13

    .line 124
    :cond_c
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 122
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method set(II)Lokhttp3/internal/http2/Settings;
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 59
    if-ltz p1, :cond_12

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_12

    .line 63
    :cond_8
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 64
    .local v1, "bit":I
    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    or-int/2addr v2, v1

    iput v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 65
    aput p2, v0, p1

    .line 66
    return-object p0

    .line 60
    .end local v1    # "bit":I
    :cond_12
    :goto_12
    return-object p0
.end method

.method size()I
    .registers 2

    .line 82
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
