.class public Lcom/tramini/plugin/a/g/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static e:[C

.field private static f:[B

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/tramini/plugin/a/g/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/g/c;->b:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/tramini/plugin/a/g/c;->c:Ljava/util/Map;

    .line 28
    sput-object v0, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_34

    sput-object v0, Lcom/tramini/plugin/a/g/c;->e:[C

    .line 35
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_78

    sput-object v0, Lcom/tramini/plugin/a/g/c;->f:[B

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/tramini/plugin/a/g/c;->g:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/g/c;->c:Ljava/util/Map;

    .line 52
    return-void

    :array_34
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data

    :array_78
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static a(C)Ljava/lang/Character;
    .registers 5

    .line 144
    sget-object v0, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    if-nez v0, :cond_30

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    .line 148
    const/4 v0, 0x0

    :goto_c
    sget-object v1, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 149
    sget-object v1, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    sget-object v2, Lcom/tramini/plugin/a/g/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 153
    :cond_30
    sget-object v0, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 154
    sget-object v0, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0

    .line 156
    :cond_49
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 178
    const-string v0, ""

    .line 183
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 186
    if-eqz p0, :cond_77

    array-length v1, p0

    if-lez v1, :cond_77

    .line 187
    array-length v1, p0

    new-array v1, v1, [C

    .line 188
    const/4 v2, 0x0

    move v3, v2

    :goto_16
    array-length v4, p0

    if-ge v3, v4, :cond_71

    .line 189
    aget-char v4, p0, v3

    .line 1144
    sget-object v5, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    if-nez v5, :cond_4b

    .line 1146
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    .line 1148
    move v5, v2

    :goto_27
    sget-object v6, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 1149
    sget-object v6, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    sget-object v7, Lcom/tramini/plugin/a/g/c;->g:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    sget-object v8, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 1153
    :cond_4b
    sget-object v5, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1154
    sget-object v5, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    goto :goto_68

    .line 1156
    :cond_64
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 189
    :goto_68
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v1, v3

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 191
    :cond_71
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    move-object v0, p0

    .line 193
    :cond_77
    new-instance p0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tramini/plugin/a/g/c;->d(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_80} :catch_82

    move-object v0, p0

    .line 198
    :cond_81
    goto :goto_86

    .line 197
    :catch_82
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    :goto_86
    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    array-length v1, p0

    .line 60
    const/4 v2, 0x0

    .line 63
    :goto_7
    if-ge v2, v1, :cond_98

    .line 64
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 65
    if-ne v3, v1, :cond_2b

    .line 66
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    ushr-int/lit8 v1, v2, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const-string p0, "=="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    goto :goto_98

    .line 71
    :cond_2b
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 72
    if-ne v4, v1, :cond_5d

    .line 73
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    ushr-int/lit8 v1, v2, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v2, v3, 0xf0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v1, v3, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    goto :goto_98

    .line 79
    :cond_5d
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 80
    sget-object v6, Lcom/tramini/plugin/a/g/c;->e:[C

    ushr-int/lit8 v7, v2, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    sget-object v6, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v2, v7

    aget-char v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    sget-object v2, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v4, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    sget-object v2, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v3, v4, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v5

    goto/16 :goto_7

    .line 85
    :cond_98
    :goto_98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(C)Ljava/lang/Character;
    .registers 5

    .line 161
    sget-object v0, Lcom/tramini/plugin/a/g/c;->c:Ljava/util/Map;

    if-nez v0, :cond_30

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/g/c;->c:Ljava/util/Map;

    .line 164
    const/4 v0, 0x0

    :goto_c
    sget-object v1, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 165
    sget-object v1, Lcom/tramini/plugin/a/g/c;->c:Ljava/util/Map;

    sget-object v2, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/tramini/plugin/a/g/c;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 169
    :cond_30
    sget-object v0, Lcom/tramini/plugin/a/g/c;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 170
    sget-object v0, Lcom/tramini/plugin/a/g/c;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0

    .line 172
    :cond_49
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 203
    const-string v0, ""

    .line 208
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2058
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2059
    array-length v2, p0

    .line 2060
    const/4 v3, 0x0

    move v4, v3

    .line 2063
    :goto_14
    if-ge v4, v2, :cond_a5

    .line 2064
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 2065
    if-ne v5, v2, :cond_38

    .line 2066
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2067
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-char p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2068
    const-string p0, "=="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2069
    goto :goto_a5

    .line 2071
    :cond_38
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 2072
    if-ne v6, v2, :cond_6a

    .line 2073
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2074
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v4, v5, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aget-char p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2075
    sget-object p0, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v2, v5, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-char p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2076
    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2077
    goto :goto_a5

    .line 2079
    :cond_6a
    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 2080
    sget-object v8, Lcom/tramini/plugin/a/g/c;->e:[C

    ushr-int/lit8 v9, v4, 0x2

    aget-char v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2081
    sget-object v8, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v9, v5, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v4, v9

    aget-char v4, v8, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2082
    sget-object v4, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    and-int/lit16 v8, v6, 0xc0

    ushr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2083
    sget-object v4, Lcom/tramini/plugin/a/g/c;->e:[C

    and-int/lit8 v5, v6, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v7

    goto/16 :goto_14

    .line 2085
    :cond_a5
    :goto_a5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 213
    if-eqz p0, :cond_ce

    array-length v1, p0

    if-lez v1, :cond_ce

    .line 214
    array-length v1, p0

    new-array v1, v1, [C

    .line 215
    nop

    :goto_b6
    array-length v2, p0

    if-ge v3, v2, :cond_c8

    .line 216
    aget-char v2, p0, v3

    invoke-static {v2}, Lcom/tramini/plugin/a/g/c;->b(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    .line 218
    :cond_c8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_cd} :catch_cf

    move-object v0, p0

    .line 224
    :cond_ce
    goto :goto_d3

    .line 223
    :catch_cf
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    :goto_d3
    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 5

    .line 230
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    const-string p0, "k"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 235
    sput-object p0, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    .line 236
    sput-object v0, Lcom/tramini/plugin/a/g/c;->g:Ljava/lang/String;

    .line 237
    const/4 p0, 0x0

    move v0, p0

    :goto_23
    sget-object v1, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 238
    sget-object v1, Lcom/tramini/plugin/a/g/c;->d:Ljava/util/Map;

    sget-object v2, Lcom/tramini/plugin/a/g/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 240
    :cond_47
    nop

    :goto_48
    sget-object v0, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_6c

    .line 241
    sget-object v0, Lcom/tramini/plugin/a/g/c;->c:Ljava/util/Map;

    sget-object v1, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lcom/tramini/plugin/a/g/c;->g:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_0 .. :try_end_69} :catchall_6d

    .line 240
    add-int/lit8 p0, p0, 0x1

    goto :goto_48

    .line 250
    :cond_6c
    return-void

    .line 248
    :catchall_6d
    move-exception p0

    .line 251
    return-void
.end method

.method private static d(Ljava/lang/String;)[B
    .registers 9

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 90
    array-length v0, p0

    .line 91
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 92
    const/4 v2, 0x0

    .line 95
    :goto_b
    if-ge v2, v0, :cond_82

    .line 99
    :goto_d
    sget-object v3, Lcom/tramini/plugin/a/g/c;->f:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v3, v2

    .line 100
    const/4 v3, -0x1

    if-ge v4, v0, :cond_1d

    if-eq v2, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    move v2, v4

    goto :goto_d

    .line 101
    :cond_1d
    :goto_1d
    if-eq v2, v3, :cond_82

    .line 107
    :goto_1f
    sget-object v5, Lcom/tramini/plugin/a/g/c;->f:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v5, v4

    .line 108
    if-ge v6, v0, :cond_2e

    if-eq v4, v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v4, v6

    goto :goto_1f

    .line 109
    :cond_2e
    :goto_2e
    if-eq v4, v3, :cond_82

    .line 112
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v5, v4, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 116
    :goto_3a
    add-int/lit8 v2, v6, 0x1

    aget-byte v5, p0, v6

    .line 117
    const/16 v6, 0x3d

    if-ne v5, v6, :cond_47

    .line 118
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 120
    :cond_47
    sget-object v7, Lcom/tramini/plugin/a/g/c;->f:[B

    aget-byte v5, v7, v5

    .line 121
    if-ge v2, v0, :cond_52

    if-eq v5, v3, :cond_50

    goto :goto_52

    :cond_50
    move v6, v2

    goto :goto_3a

    .line 122
    :cond_52
    :goto_52
    if-eq v5, v3, :cond_82

    .line 125
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v7, v5, 0x3c

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    :goto_60
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    .line 130
    if-ne v2, v6, :cond_6b

    .line 131
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 133
    :cond_6b
    sget-object v7, Lcom/tramini/plugin/a/g/c;->f:[B

    aget-byte v2, v7, v2

    .line 134
    if-ge v4, v0, :cond_76

    if-eq v2, v3, :cond_74

    goto :goto_76

    :cond_74
    move v2, v4

    goto :goto_60

    .line 135
    :cond_76
    :goto_76
    if-eq v2, v3, :cond_82

    .line 138
    and-int/lit8 v3, v5, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v4

    goto :goto_b

    .line 140
    :cond_82
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
