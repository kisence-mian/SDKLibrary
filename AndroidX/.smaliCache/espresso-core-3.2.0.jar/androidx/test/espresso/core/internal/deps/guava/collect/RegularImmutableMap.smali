.class final Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient hashTable:Ljava/lang/Object;

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashTable",
            "alternatingKeysAndValues",
            "size"
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;-><init>()V

    .line 193
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    .line 194
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 195
    iput p3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    .line 196
    return-void
.end method

.method static create(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "alternatingKeysAndValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    if-nez p0, :cond_7

    .line 74
    sget-object p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    check-cast p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    return-object p0

    .line 75
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    .line 76
    aget-object p0, p1, v0

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    new-instance p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 79
    :cond_19
    array-length v2, p1

    shr-int/lit8 v1, v2, 0x1

    invoke-static {p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkPositionIndex(II)I

    .line 80
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    .line 81
    invoke-static {p1, p0, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 82
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    invoke-direct {v1, v0, p1, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method

.method static createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alternatingKeysAndValues",
            "n",
            "tableSize",
            "keyOffset"
        }
    .end annotation

    .line 91
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 93
    aget-object p1, p0, p3

    xor-int/lit8 p2, p3, 0x1

    aget-object p0, p0, p2

    invoke-static {p1, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_e
    add-int/lit8 v0, p2, -0x1

    .line 98
    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-gt p2, v1, :cond_52

    .line 105
    new-array p2, p2, [B

    .line 106
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 108
    nop

    :goto_1c
    if-ge v2, p1, :cond_51

    .line 109
    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, p3

    .line 110
    aget-object v3, p0, v1

    .line 111
    xor-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    .line 112
    invoke-static {v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v5

    .line 114
    :goto_32
    and-int/2addr v5, v0

    .line 115
    aget-byte v6, p2, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    .line 116
    if-ne v6, v7, :cond_41

    .line 117
    int-to-byte v1, v1

    aput-byte v1, p2, v5

    .line 118
    nop

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 119
    :cond_41
    aget-object v7, p0, v6

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 120
    :cond_4c
    invoke-static {v3, v4, p0, v6}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 124
    :cond_51
    return-object p2

    .line 125
    :cond_52
    const v1, 0x8000

    if-gt p2, v1, :cond_94

    .line 132
    new-array p2, p2, [S

    .line 133
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([SS)V

    .line 135
    nop

    :goto_5d
    if-ge v2, p1, :cond_93

    .line 136
    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, p3

    .line 137
    aget-object v3, p0, v1

    .line 138
    xor-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    .line 139
    invoke-static {v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v5

    .line 141
    :goto_73
    and-int/2addr v5, v0

    .line 142
    aget-short v6, p2, v5

    const v7, 0xffff

    and-int/2addr v6, v7

    .line 143
    if-ne v6, v7, :cond_83

    .line 144
    int-to-short v1, v1

    aput-short v1, p2, v5

    .line 145
    nop

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 146
    :cond_83
    aget-object v7, p0, v6

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8e

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 147
    :cond_8e
    invoke-static {v3, v4, p0, v6}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 151
    :cond_93
    return-object p2

    .line 156
    :cond_94
    new-array p2, p2, [I

    .line 157
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 159
    nop

    :goto_9a
    if-ge v2, p1, :cond_cb

    .line 160
    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, p3

    .line 161
    aget-object v4, p0, v1

    .line 162
    xor-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    .line 163
    invoke-static {v4, v5}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v6

    .line 165
    :goto_b0
    and-int/2addr v6, v0

    .line 166
    aget v7, p2, v6

    .line 167
    if-ne v7, v3, :cond_bb

    .line 168
    aput v1, p2, v6

    .line 169
    nop

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 170
    :cond_bb
    aget-object v8, p0, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c6

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_b0

    .line 171
    :cond_c6
    invoke-static {v4, v5, p0, v7}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 175
    :cond_cb
    return-object p2
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "alternatingKeysAndValues",
            "previousKeyIndex"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, "="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " and "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashTableObject",
            "alternatingKeysAndValues",
            "size",
            "keyOffset",
            "key"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    if-nez p4, :cond_4

    .line 217
    return-object v0

    .line 218
    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_16

    .line 219
    aget-object p0, p1, p3

    invoke-virtual {p0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 220
    xor-int/lit8 p0, p3, 0x1

    aget-object v0, p1, p0

    goto :goto_15

    .line 221
    :cond_14
    nop

    .line 219
    :goto_15
    return-object v0

    .line 222
    :cond_16
    if-nez p0, :cond_19

    .line 223
    return-object v0

    .line 225
    :cond_19
    instance-of p2, p0, [B

    if-eqz p2, :cond_44

    .line 226
    move-object p2, p0

    check-cast p2, [B

    .line 227
    array-length p0, p2

    add-int/lit8 p3, p0, -0x1

    .line 228
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result p0

    .line 229
    :goto_2b
    and-int/2addr p0, p3

    .line 230
    aget-byte v2, p2, p0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 231
    if-ne v2, v3, :cond_34

    .line 232
    return-object v0

    .line 233
    :cond_34
    aget-object v3, p1, v2

    invoke-virtual {v3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 234
    xor-int/lit8 p0, v2, 0x1

    aget-object p0, p1, p0

    return-object p0

    .line 228
    :cond_41
    add-int/lit8 p0, p0, 0x1

    goto :goto_2b

    .line 237
    :cond_44
    instance-of p2, p0, [S

    if-eqz p2, :cond_70

    .line 238
    move-object p2, p0

    check-cast p2, [S

    .line 239
    array-length p0, p2

    add-int/lit8 p3, p0, -0x1

    .line 240
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result p0

    .line 241
    :goto_56
    and-int/2addr p0, p3

    .line 242
    aget-short v2, p2, p0

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 243
    if-ne v2, v3, :cond_60

    .line 244
    return-object v0

    .line 245
    :cond_60
    aget-object v3, p1, v2

    invoke-virtual {v3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 246
    xor-int/lit8 p0, v2, 0x1

    aget-object p0, p1, p0

    return-object p0

    .line 240
    :cond_6d
    add-int/lit8 p0, p0, 0x1

    goto :goto_56

    .line 250
    :cond_70
    check-cast p0, [I

    .line 251
    array-length p2, p0

    sub-int/2addr p2, v1

    .line 252
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result p3

    .line 253
    :goto_7c
    and-int/2addr p3, p2

    .line 254
    aget v2, p0, p3

    .line 255
    const/4 v3, -0x1

    if-ne v2, v3, :cond_83

    .line 256
    return-object v0

    .line 257
    :cond_83
    aget-object v3, p1, v2

    invoke-virtual {v3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 258
    xor-int/lit8 p0, v2, 0x1

    aget-object p0, p1, p0

    return-object p0

    .line 252
    :cond_90
    add-int/lit8 p3, p3, 0x1

    goto :goto_7c
.end method


# virtual methods
.method createEntrySet()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 266
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method createKeySet()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 342
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 344
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;)V

    return-object v1
.end method

.method createValues()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 418
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .registers 2

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .line 200
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->size:I

    return v0
.end method
