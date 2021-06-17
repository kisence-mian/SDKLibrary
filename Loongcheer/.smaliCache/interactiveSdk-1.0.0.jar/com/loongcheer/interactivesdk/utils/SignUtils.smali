.class public Lcom/loongcheer/interactivesdk/utils/SignUtils;
.super Ljava/lang/Object;
.source "SignUtils.java"


# static fields
.field private static SignKey:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static hashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-string v0, "YK"

    sput-object v0, Lcom/loongcheer/interactivesdk/utils/SignUtils;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "&loongcheergame"

    sput-object v0, Lcom/loongcheer/interactivesdk/utils/SignUtils;->SignKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHashMap()Ljava/util/HashMap;
    .registers 1

    .line 21
    sget-object v0, Lcom/loongcheer/interactivesdk/utils/SignUtils;->hashmap:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loongcheer/interactivesdk/utils/SignUtils;->hashmap:Ljava/util/HashMap;

    goto :goto_f

    .line 24
    :cond_c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 26
    :goto_f
    sget-object v0, Lcom/loongcheer/interactivesdk/utils/SignUtils;->hashmap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getMessageDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "buffer"    # Ljava/lang/String;

    .line 82
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_42

    .line 84
    .local v0, "hexDigits":[C
    :try_start_7
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 85
    .local v1, "mdTemp":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 87
    .local v2, "md":[B
    array-length v3, v2

    .line 88
    .local v3, "j":I
    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [C

    .line 89
    .local v4, "str":[C
    const/4 v5, 0x0

    .line 90
    .local v5, "k":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f
    if-ge v6, v3, :cond_38

    .line 91
    aget-byte v7, v2, v6

    .line 92
    .local v7, "byte0":B
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "k":I
    .local v8, "k":I
    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v0, v9

    aput-char v9, v4, v5

    .line 93
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "k":I
    .restart local v5    # "k":I
    and-int/lit8 v9, v7, 0xf

    aget-char v9, v0, v9

    aput-char v9, v4, v8

    .line 90
    .end local v7    # "byte0":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 95
    .end local v6    # "i":I
    :cond_38
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    return-object v6

    .line 96
    .end local v1    # "mdTemp":Ljava/security/MessageDigest;
    .end local v2    # "md":[B
    .end local v3    # "j":I
    .end local v4    # "str":[C
    .end local v5    # "k":I
    :catch_3e
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2

    nop

    :array_42
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static getSignToken(Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 37
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, ""

    .line 39
    .local v0, "result":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .local v1, "infoIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Lcom/loongcheer/interactivesdk/utils/SignUtils$1;

    invoke-direct {v2}, Lcom/loongcheer/interactivesdk/utils/SignUtils$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_96

    const-string v5, ""

    if-eqz v4, :cond_6e

    :try_start_24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 50
    .local v4, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_36

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_6d

    .line 51
    :cond_36
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 52
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 53
    .local v7, "val":Ljava/lang/String;
    if-eqz v7, :cond_59

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 57
    :cond_59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .end local v4    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "val":Ljava/lang/String;
    :cond_6d
    :goto_6d
    goto :goto_1c

    .line 61
    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/loongcheer/interactivesdk/utils/SignUtils;->SignKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "res":Ljava/lang/String;
    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 63
    const-string v4, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loongcheer/interactivesdk/utils/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_93} :catch_96

    move-object v0, v4

    .line 69
    .end local v1    # "infoIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "res":Ljava/lang/String;
    nop

    .line 71
    return-object v0

    .line 67
    :catch_96
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method
