.class public final Lokhttp3/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Headers$Builder;
    }
.end annotation


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/Headers$Builder;)V
    .registers 4
    .param p1, "builder"    # Lokhttp3/Headers$Builder;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "namesAndValues"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method static checkName(Ljava/lang/String;)V
    .registers 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "name == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "name is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_18
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_1d
    if-ge v1, v2, :cond_4e

    .line 259
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 260
    .local v0, "c":C
    const/16 v3, 0x20

    if-le v0, v3, :cond_2b

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_4b

    .line 261
    :cond_2b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected char %#04x at %d in header name: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p0, v5, v6

    .line 261
    invoke-static {v4, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 265
    .end local v0    # "c":C
    :cond_4e
    return-void
.end method

.method static checkValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 268
    if-nez p0, :cond_21

    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value for name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_26
    if-ge v1, v2, :cond_5e

    .line 270
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 271
    .local v0, "c":C
    const/16 v3, 0x1f

    if-gt v0, v3, :cond_34

    const/16 v3, 0x9

    if-ne v0, v3, :cond_38

    :cond_34
    const/16 v3, 0x7f

    if-lt v0, v3, :cond_5b

    .line 272
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    const/4 v6, 0x3

    aput-object p0, v5, v6

    .line 272
    invoke-static {v4, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 276
    .end local v0    # "c":C
    :cond_5e
    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "namesAndValues"    # [Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    array-length v1, p0

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_15

    .line 195
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 196
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    .line 199
    :goto_11
    return-object v1

    .line 194
    :cond_12
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 199
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static of(Ljava/util/Map;)Lokhttp3/Headers;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_a

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "headers == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 237
    :cond_a
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    .line 238
    .local v3, "namesAndValues":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 239
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3b

    .line 241
    :cond_33
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Headers cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 243
    :cond_3b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "value":Ljava/lang/String;
    invoke-static {v2}, Lokhttp3/Headers;->checkName(Ljava/lang/String;)V

    .line 246
    invoke-static {v4, v2}, Lokhttp3/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    aput-object v2, v3, v1

    .line 248
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v5

    .line 249
    add-int/lit8 v1, v1, 0x2

    .line 250
    goto :goto_1b

    .line 252
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_5e
    new-instance v5, Lokhttp3/Headers;

    invoke-direct {v5, v3}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    return-object v5
.end method

.method public static varargs of([Ljava/lang/String;)Lokhttp3/Headers;
    .registers 6
    .param p0, "namesAndValues"    # [Ljava/lang/String;

    .prologue
    .line 207
    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "namesAndValues == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 208
    :cond_a
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_17

    .line 209
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expected alternating header names and values"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 213
    :cond_17
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "namesAndValues":[Ljava/lang/String;
    check-cast p0, [Ljava/lang/String;

    .line 214
    .restart local p0    # "namesAndValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    array-length v3, p0

    if-ge v0, v3, :cond_38

    .line 215
    aget-object v3, p0, v0

    if-nez v3, :cond_2d

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Headers cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_2d
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 220
    :cond_38
    const/4 v0, 0x0

    :goto_39
    array-length v3, p0

    if-ge v0, v3, :cond_4b

    .line 221
    aget-object v1, p0, v0

    .line 222
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p0, v3

    .line 223
    .local v2, "value":Ljava/lang/String;
    invoke-static {v1}, Lokhttp3/Headers;->checkName(Ljava/lang/String;)V

    .line 224
    invoke-static {v2, v1}, Lokhttp3/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    add-int/lit8 v0, v0, 0x2

    goto :goto_39

    .line 227
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4b
    new-instance v3, Lokhttp3/Headers;

    invoke-direct {v3, p0}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public byteCount()J
    .registers 7

    .prologue
    .line 121
    iget-object v4, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    int-to-long v2, v4

    .line 123
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v4

    .local v1, "size":I
    :goto_a
    if-ge v0, v1, :cond_19

    .line 124
    iget-object v4, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 127
    :cond_19
    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    instance-of v0, p1, Lokhttp3/Headers;

    if-eqz v0, :cond_12

    check-cast p1, Lokhttp3/Headers;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 164
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 163
    :goto_11
    return v0

    .line 164
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lokhttp3/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-static {v0}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public name(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/util/TreeSet;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 93
    .local v1, "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_c
    if-ge v0, v2, :cond_18

    .line 94
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 96
    :cond_18
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public newBuilder()Lokhttp3/Headers$Builder;
    .registers 4

    .prologue
    .line 131
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 132
    .local v0, "result":Lokhttp3/Headers$Builder;
    iget-object v1, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 133
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toMultimap()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v2, Ljava/util/TreeMap;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 181
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_c
    if-ge v0, v3, :cond_33

    .line 182
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 184
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_29

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .restart local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_29
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 190
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v0, v2, :cond_2a

    .line 174
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 176
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public value(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_6
    if-ge v0, v2, :cond_24

    .line 103
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 104
    if-nez v1, :cond_1a

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 108
    :cond_24
    if-eqz v1, :cond_2b

    .line 109
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 108
    :goto_2a
    return-object v3

    .line 110
    :cond_2b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2a
.end method
