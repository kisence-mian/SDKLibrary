.class public final Lokhttp3/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mediaType:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "mediaType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lokhttp3/MediaType;->type:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static get(Ljava/lang/String;)Lokhttp3/MediaType;
    .registers 15
    .param p0, "string"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    .local v0, "typeSubtype":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/16 v2, 0x22

    if-eqz v1, :cond_ed

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "subtype":Ljava/lang/String;
    const/4 v6, 0x0

    .line 61
    .local v6, "charset":Ljava/lang/String;
    sget-object v7, Lokhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 62
    .local v7, "parameter":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    .local v8, "s":I
    :goto_2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_e7

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 64
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    const-string v10, "\" for: \""

    if-eqz v9, :cond_be

    .line 72
    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_b8

    const-string v11, "charset"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_53

    goto :goto_b8

    .line 75
    :cond_53
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "token":Ljava/lang/String;
    if-eqz v11, :cond_7a

    .line 78
    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_77

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_77

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v4, :cond_77

    .line 79
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v1

    invoke-virtual {v11, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_78

    .line 80
    :cond_77
    move-object v12, v11

    :goto_78
    nop

    .local v12, "charsetParameter":Ljava/lang/String;
    goto :goto_7f

    .line 83
    .end local v12    # "charsetParameter":Ljava/lang/String;
    :cond_7a
    const/4 v12, 0x3

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 85
    .restart local v12    # "charsetParameter":Ljava/lang/String;
    :goto_7f
    if-eqz v6, :cond_b7

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_88

    goto :goto_b7

    .line 86
    :cond_88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Multiple charsets defined: \""

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "\" and: \""

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_b7
    :goto_b7
    move-object v6, v12

    .line 62
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "token":Ljava/lang/String;
    .end local v12    # "charsetParameter":Ljava/lang/String;
    :cond_b8
    :goto_b8
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    goto/16 :goto_2f

    .line 65
    :cond_be
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parameter is not formatted correctly: \""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 66
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v8    # "s":I
    :cond_e7
    new-instance v1, Lokhttp3/MediaType;

    invoke-direct {v1, p0, v3, v5, v6}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 55
    .end local v3    # "type":Ljava/lang/String;
    .end local v5    # "subtype":Ljava/lang/String;
    .end local v6    # "charset":Ljava/lang/String;
    .end local v7    # "parameter":Ljava/util/regex/Matcher;
    :cond_ed
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No subtype found for: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/MediaType;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    :try_start_0
    invoke-static {p0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 107
    :catch_5
    move-exception v0

    .line 108
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 3
    .param p1, "defaultValue"    # Ljava/nio/charset/Charset;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 140
    :try_start_0
    iget-object v0, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_b

    goto :goto_a

    :cond_9
    move-object v0, p1

    :goto_a
    return-object v0

    .line 141
    :catch_b
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    instance-of v0, p1, Lokhttp3/MediaType;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lokhttp3/MediaType;

    iget-object v0, v0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 159
    iget-object v0, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public subtype()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lokhttp3/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method
