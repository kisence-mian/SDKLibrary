.class Landroidx/navigation/NavDeepLink;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDeepLink$ParamQuery;
    }
.end annotation


# static fields
.field private static final SCHEME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExactDeepLink:Z

.field private final mIsParameterizedQuery:Z

.field private final mParamArgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavDeepLink$ParamQuery;",
            ">;"
        }
    .end annotation
.end field

.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "^[a-zA-Z]+[+\\w\\-.]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/navigation/NavDeepLink;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 16
    .param p1, "uri"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavDeepLink;->mParamArgMap:Ljava/util/Map;

    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    .local v0, "parameterizedUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-boolean v1, p0, Landroidx/navigation/NavDeepLink;->mIsParameterizedQuery:Z

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "^"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v4, "uriRegex":Ljava/lang/StringBuilder;
    sget-object v5, Landroidx/navigation/NavDeepLink;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 52
    const-string v5, "http[s]?://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_3a
    const-string v5, "\\{(.+?)\\}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 55
    .local v5, "fillInPattern":Ljava/util/regex/Pattern;
    const-string v6, "\\E.*\\Q"

    const-string v7, ".*"

    if-eqz v1, :cond_d4

    .line 56
    const-string v1, "(\\?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 57
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_61

    .line 58
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4, v5}, Landroidx/navigation/NavDeepLink;->buildPathRegex(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;)Z

    .line 60
    :cond_61
    iput-boolean v3, p0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 62
    .local v8, "paramName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v9, "argRegex":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, "queryParam":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 65
    const/4 v11, 0x0

    .line 66
    .local v11, "appendPos":I
    new-instance v12, Landroidx/navigation/NavDeepLink$ParamQuery;

    invoke-direct {v12}, Landroidx/navigation/NavDeepLink$ParamQuery;-><init>()V

    .line 68
    .local v12, "param":Landroidx/navigation/NavDeepLink$ParamQuery;
    :goto_8a
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_b1

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/navigation/NavDeepLink$ParamQuery;->addArgumentName(Ljava/lang/String;)V

    .line 70
    nop

    .line 71
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    .line 70
    invoke-virtual {v10, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v13, "(.+?)?"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    goto :goto_8a

    .line 75
    :cond_b1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_c2

    .line 76
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_c2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/navigation/NavDeepLink$ParamQuery;->setParamRegex(Ljava/lang/String;)V

    .line 81
    iget-object v13, p0, Landroidx/navigation/NavDeepLink;->mParamArgMap:Ljava/util/Map;

    invoke-interface {v13, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v8    # "paramName":Ljava/lang/String;
    .end local v9    # "argRegex":Ljava/lang/StringBuilder;
    .end local v10    # "queryParam":Ljava/lang/String;
    .end local v11    # "appendPos":I
    .end local v12    # "param":Landroidx/navigation/NavDeepLink$ParamQuery;
    goto :goto_6b

    .line 83
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_d3
    goto :goto_da

    .line 84
    :cond_d4
    invoke-direct {p0, p1, v4, v5}, Landroidx/navigation/NavDeepLink;->buildPathRegex(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    .line 89
    :goto_da
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "finalRegex":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    .line 91
    return-void
.end method

.method private buildPathRegex(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;)Z
    .registers 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uriRegex"    # Ljava/lang/StringBuilder;
    .param p3, "fillInPattern"    # Ljava/util/regex/Pattern;

    .line 95
    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 96
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 98
    .local v1, "appendPos":I
    const-string v2, ".*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 99
    .local v2, "exactDeepLink":Z
    :goto_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 100
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "argName":Ljava/lang/String;
    iget-object v5, p0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v5, "(.+?)"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 106
    const/4 v2, 0x0

    .line 107
    .end local v4    # "argName":Ljava/lang/String;
    goto :goto_d

    .line 108
    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_47
    const-string v3, "($|(\\?(.)*))"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return v2
.end method

.method private parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)Z
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "argument"    # Landroidx/navigation/NavArgument;

    .line 184
    if-eqz p4, :cond_e

    .line 185
    invoke-virtual {p4}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v0

    .line 187
    .local v0, "type":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<*>;"
    :try_start_6
    invoke-virtual {v0, p1, p2, p3}, Landroidx/navigation/NavType;->parseAndPut(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_9} :catch_b

    .line 193
    nop

    .line 194
    .end local v0    # "type":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<*>;"
    goto :goto_11

    .line 188
    .restart local v0    # "type":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<*>;"
    :catch_b
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x1

    return v2

    .line 195
    .end local v0    # "type":Landroidx/navigation/NavType;, "Landroidx/navigation/NavType<*>;"
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_11
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getMatchingArguments(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;
    .registers 19
    .param p1, "deepLink"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 131
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/navigation/NavArgument;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 132
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_16

    .line 133
    return-object v4

    .line 135
    :cond_16
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v3, "bundle":Landroid/os/Bundle;
    iget-object v5, v0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 137
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_22
    if-ge v6, v5, :cond_46

    .line 138
    iget-object v7, v0, Landroidx/navigation/NavDeepLink;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 139
    .local v7, "argumentName":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation/NavArgument;

    .line 141
    .local v9, "argument":Landroidx/navigation/NavArgument;
    invoke-direct {v0, v3, v7, v8, v9}, Landroidx/navigation/NavDeepLink;->parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 142
    return-object v4

    .line 137
    .end local v7    # "argumentName":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "argument":Landroidx/navigation/NavArgument;
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 145
    .end local v6    # "index":I
    :cond_46
    iget-boolean v6, v0, Landroidx/navigation/NavDeepLink;->mIsParameterizedQuery:Z

    if-eqz v6, :cond_e1

    .line 146
    iget-object v6, v0, Landroidx/navigation/NavDeepLink;->mParamArgMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_de

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 147
    .local v7, "paramName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 148
    .local v8, "argMatcher":Ljava/util/regex/Matcher;
    iget-object v9, v0, Landroidx/navigation/NavDeepLink;->mParamArgMap:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation/NavDeepLink$ParamQuery;

    .line 149
    .local v9, "storedParam":Landroidx/navigation/NavDeepLink$ParamQuery;
    move-object/from16 v10, p1

    invoke-virtual {v10, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "inputParams":Ljava/lang/String;
    if-eqz v11, :cond_84

    .line 152
    invoke-virtual {v9}, Landroidx/navigation/NavDeepLink$ParamQuery;->getParamRegex()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 153
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_84

    .line 154
    return-object v4

    .line 158
    :cond_84
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_85
    invoke-virtual {v9}, Landroidx/navigation/NavDeepLink$ParamQuery;->size()I

    move-result v13

    if-ge v12, v13, :cond_d9

    .line 159
    const/4 v13, 0x0

    .line 160
    .local v13, "value":Ljava/lang/String;
    if-eqz v8, :cond_98

    .line 161
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 163
    :cond_98
    invoke-virtual {v9, v12}, Landroidx/navigation/NavDeepLink$ParamQuery;->getArgumentName(I)Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, "argName":Ljava/lang/String;
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/navigation/NavArgument;

    .line 166
    .local v15, "argument":Landroidx/navigation/NavArgument;
    if-eqz v15, :cond_ca

    if-eqz v13, :cond_b4

    .line 167
    const-string v4, "[{}]"

    const-string v1, ""

    invoke-virtual {v13, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 168
    :cond_b4
    invoke-virtual {v15}, Landroidx/navigation/NavArgument;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c3

    .line 169
    invoke-virtual {v15}, Landroidx/navigation/NavArgument;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_ca

    .line 170
    :cond_c3
    invoke-virtual {v15}, Landroidx/navigation/NavArgument;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 171
    const/4 v13, 0x0

    .line 174
    :cond_ca
    :goto_ca
    invoke-direct {v0, v3, v14, v13, v15}, Landroidx/navigation/NavDeepLink;->parseArgument(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroidx/navigation/NavArgument;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 175
    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_d2
    const/4 v1, 0x0

    .line 158
    .end local v13    # "value":Ljava/lang/String;
    .end local v14    # "argName":Ljava/lang/String;
    .end local v15    # "argument":Landroidx/navigation/NavArgument;
    add-int/lit8 v12, v12, 0x1

    move-object v4, v1

    move-object/from16 v1, p2

    goto :goto_85

    :cond_d9
    move-object v1, v4

    .line 178
    .end local v7    # "paramName":Ljava/lang/String;
    .end local v8    # "argMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "storedParam":Landroidx/navigation/NavDeepLink$ParamQuery;
    .end local v11    # "inputParams":Ljava/lang/String;
    .end local v12    # "index":I
    move-object/from16 v1, p2

    goto/16 :goto_54

    .line 146
    :cond_de
    move-object/from16 v10, p1

    goto :goto_e3

    .line 145
    :cond_e1
    move-object/from16 v10, p1

    .line 180
    :goto_e3
    return-object v3
.end method

.method isExactDeepLink()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Landroidx/navigation/NavDeepLink;->mExactDeepLink:Z

    return v0
.end method

.method matches(Landroid/net/Uri;)Z
    .registers 4
    .param p1, "deepLink"    # Landroid/net/Uri;

    .line 121
    iget-object v0, p0, Landroidx/navigation/NavDeepLink;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
