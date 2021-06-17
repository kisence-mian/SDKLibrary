.class public final Lcom/umeng/analytics/pro/ar;
.super Ljava/lang/Object;
.source "TBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/ar$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/umeng/analytics/pro/ar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ar$a;-><init>(Lcom/umeng/analytics/pro/ar$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/ar;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BB)I
    .registers 2

    .line 59
    if-ge p0, p1, :cond_4

    .line 60
    const/4 p0, -0x1

    return p0

    .line 61
    :cond_4
    if-ge p1, p0, :cond_8

    .line 62
    const/4 p0, 0x1

    return p0

    .line 64
    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static a(DD)I
    .registers 5

    .line 99
    cmpg-double v0, p0, p2

    if-gez v0, :cond_6

    .line 100
    const/4 p0, -0x1

    return p0

    .line 101
    :cond_6
    cmpg-double v0, p2, p0

    if-gez v0, :cond_c

    .line 102
    const/4 p0, 0x1

    return p0

    .line 104
    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static a(II)I
    .registers 2

    .line 79
    if-ge p0, p1, :cond_4

    .line 80
    const/4 p0, -0x1

    return p0

    .line 81
    :cond_4
    if-ge p1, p0, :cond_8

    .line 82
    const/4 p0, 0x1

    return p0

    .line 84
    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static a(JJ)I
    .registers 5

    .line 89
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    .line 90
    const/4 p0, -0x1

    return p0

    .line 91
    :cond_6
    cmp-long v0, p2, p0

    if-gez v0, :cond_c

    .line 92
    const/4 p0, 0x1

    return p0

    .line 94
    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 2

    .line 127
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 39
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_d

    .line 40
    check-cast p0, Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ar;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    .line 41
    :cond_d
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 42
    check-cast p0, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ar;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0

    .line 43
    :cond_1a
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_27

    .line 44
    check-cast p0, Ljava/util/Set;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ar;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result p0

    return p0

    .line 45
    :cond_27
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_34

    .line 46
    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ar;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result p0

    return p0

    .line 47
    :cond_34
    instance-of v0, p0, [B

    if-eqz v0, :cond_45

    .line 48
    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ar;->a([B[B)I

    move-result p0

    return p0

    .line 50
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare objects of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;[BI)I
    .registers 6

    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 266
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 267
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr v2, p0

    .line 266
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    return v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)I
    .registers 7

    .line 131
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/ar;->a(II)I

    move-result v0

    .line 132
    if-eqz v0, :cond_f

    .line 133
    return v0

    .line 135
    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 136
    sget-object v2, Lcom/umeng/analytics/pro/ar;->a:Ljava/util/Comparator;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 137
    if-eqz v2, :cond_28

    .line 138
    return v2

    .line 135
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 141
    :cond_2b
    return v0
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;)I
    .registers 7

    .line 169
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/ar;->a(II)I

    move-result v0

    .line 170
    if-eqz v0, :cond_f

    .line 171
    return v0

    .line 175
    :cond_f
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/umeng/analytics/pro/ar;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 176
    invoke-interface {v0, p0}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 177
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 178
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 179
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 180
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 183
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 184
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 186
    sget-object v2, Lcom/umeng/analytics/pro/ar;->a:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 187
    if-eqz v3, :cond_5a

    .line 188
    return v3

    .line 190
    :cond_5a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 191
    if-eqz v0, :cond_69

    .line 192
    return v0

    .line 194
    :cond_69
    goto :goto_31

    .line 196
    :cond_6a
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;)I
    .registers 5

    .line 145
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/ar;->a(II)I

    move-result v0

    .line 146
    if-eqz v0, :cond_f

    .line 147
    return v0

    .line 149
    :cond_f
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/umeng/analytics/pro/ar;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 150
    invoke-interface {v0, p0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 151
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 152
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 155
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 158
    :cond_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 159
    sget-object v0, Lcom/umeng/analytics/pro/ar;->a:Ljava/util/Comparator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 160
    if-eqz v0, :cond_29

    .line 161
    return v0

    .line 165
    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public static a(SS)I
    .registers 2

    .line 69
    if-ge p0, p1, :cond_4

    .line 70
    const/4 p0, -0x1

    return p0

    .line 71
    :cond_4
    if-ge p1, p0, :cond_8

    .line 72
    const/4 p0, 0x1

    return p0

    .line 74
    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static a(ZZ)I
    .registers 2

    .line 55
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p0

    return p0
.end method

.method public static a([B[B)I
    .registers 6

    .line 113
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/ar;->a(II)I

    move-result v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    return v0

    .line 117
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 118
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/ar;->a(BB)I

    move-result v2

    .line 119
    if-eqz v2, :cond_19

    .line 120
    return v2

    .line 117
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 123
    :cond_1c
    return v0
.end method

.method public static a(B)Ljava/lang/String;
    .registers 2

    .line 244
    or-int/lit16 p0, p0, 0x100

    and-int/lit16 p0, p0, 0x1ff

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V
    .registers 7

    .line 225
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    .line 229
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    add-int/2addr v1, p0

    .line 230
    sub-int p0, v1, v2

    const/16 v3, 0x80

    if-le p0, v3, :cond_1b

    add-int/lit16 p0, v2, 0x80

    goto :goto_1c

    :cond_1b
    move p0, v1

    .line 232
    :goto_1c
    move v3, v2

    :goto_1d
    if-ge v3, p0, :cond_32

    .line 233
    if-le v3, v2, :cond_26

    .line 234
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_26
    aget-byte v4, v0, v3

    invoke-static {v4}, Lcom/umeng/analytics/pro/ar;->a(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 238
    :cond_32
    if-eq v1, p0, :cond_39

    .line 239
    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_39
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)[B
    .registers 3

    .line 249
    invoke-static {p0}, Lcom/umeng/analytics/pro/ar;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 250
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 252
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 253
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/umeng/analytics/pro/ar;->a(Ljava/nio/ByteBuffer;[BI)I

    .line 254
    return-object v0
.end method

.method public static a([B)[B
    .registers 4

    .line 299
    if-nez p0, :cond_4

    .line 300
    const/4 p0, 0x0

    return-object p0

    .line 303
    :cond_4
    array-length v0, p0

    new-array v0, v0, [B

    .line 304
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    return-object v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Z
    .registers 2

    .line 258
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 259
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1e

    .line 260
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_1e

    .line 261
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    if-ne v0, p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2

    .line 275
    if-nez p0, :cond_4

    .line 276
    const/4 p0, 0x0

    return-object p0

    .line 278
    :cond_4
    invoke-static {p0}, Lcom/umeng/analytics/pro/ar;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 279
    return-object p0

    .line 281
    :cond_b
    invoke-static {p0}, Lcom/umeng/analytics/pro/ar;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 6

    .line 285
    if-nez p0, :cond_4

    .line 286
    const/4 p0, 0x0

    return-object p0

    .line 288
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 290
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v1, v2, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_39

    .line 292
    :cond_2e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 295
    :goto_39
    return-object v0
.end method
