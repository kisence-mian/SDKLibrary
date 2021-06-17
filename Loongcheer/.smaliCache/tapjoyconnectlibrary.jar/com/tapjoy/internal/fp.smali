.class public final Lcom/tapjoy/internal/fp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fp$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/tapjoy/internal/fp$a;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 14

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 79
    const-string v1, "[A-Za-z0-9\\-_]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "The given API key was malformed."

    if-eqz v1, :cond_b3

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_b3

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_b3

    .line 87
    const/16 v0, 0x8

    :try_start_1b
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1f} :catch_ac

    .line 90
    nop

    .line 91
    array-length v2, v1

    .line 92
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 93
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    array-length v4, v1

    add-int/lit8 v4, v4, -0x4

    .line 97
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 98
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 99
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 100
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v4, v8

    .line 101
    const-string v6, "The given API key was invalid."

    if-ne v5, v4, :cond_a6

    .line 105
    iput-object p1, p0, Lcom/tapjoy/internal/fp;->e:Ljava/lang/String;

    .line 107
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 108
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v10

    invoke-direct {v4, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fp;->b:Ljava/lang/String;

    .line 109
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/fp;->f:I

    .line 110
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Lcom/tapjoy/internal/fp$a;->a(B)Lcom/tapjoy/internal/fp$a;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/fp;->a:Lcom/tapjoy/internal/fp$a;

    .line 111
    const/16 v4, 0x18

    const/16 v5, 0x2c

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/fp;->c:Ljava/lang/String;

    .line 114
    const/4 p1, 0x1

    if-ne v0, p1, :cond_7d

    .line 115
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/fp;->d:Ljava/lang/String;

    return-void

    .line 116
    :cond_7d
    const/4 p1, 0x2

    if-ne v0, p1, :cond_9e

    sget-object p1, Lcom/tapjoy/internal/fp$a;->a:Lcom/tapjoy/internal/fp$a;

    if-ne v3, p1, :cond_9e

    .line 117
    const/16 p1, 0x39

    if-lt v2, p1, :cond_98

    .line 120
    const/16 p1, 0xc

    new-array v0, p1, [B

    .line 121
    const/16 v2, 0x21

    invoke-static {v1, v2, v0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/fp;->d:Ljava/lang/String;

    .line 123
    return-void

    .line 118
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_9e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given API key was not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :catch_ac
    move-exception p1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 81
    :cond_b3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 158
    const/16 v0, 0xd

    const-string v1, "-8000-8000-"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 159
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x8

    .line 160
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x18

    .line 161
    const/16 v3, 0x1e

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x9

    .line 162
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 163
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    return-object p0

    .line 166
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given UUID did not come from 5Rocks."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 130
    instance-of v0, p1, Lcom/tapjoy/internal/fp;

    if-eqz v0, :cond_10

    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->e:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/fp;

    iget-object v1, v1, Lcom/tapjoy/internal/fp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 133
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/tapjoy/internal/fp;->e:Ljava/lang/String;

    return-object v0
.end method
