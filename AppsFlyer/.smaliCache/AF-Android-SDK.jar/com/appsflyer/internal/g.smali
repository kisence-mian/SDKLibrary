.class final Lcom/appsflyer/internal/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/g$b;,
        Lcom/appsflyer/internal/g$c;,
        Lcom/appsflyer/internal/g$e;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 28
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 29
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-object v2
.end method


# virtual methods
.method final AFInAppEventType(Ljava/util/List;)Ljava/util/Map;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 149
    nop

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 154
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 155
    nop

    .line 1130
    const-string v4, "sVS"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    .line 1131
    :goto_29
    const-string v8, "sVE"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_33

    const/4 v9, 0x1

    goto :goto_34

    :cond_33
    const/4 v9, 0x0

    .line 1133
    :goto_34
    if-eqz v5, :cond_3b

    if-eqz v9, :cond_3b

    .line 1134
    sget-object v5, Lcom/appsflyer/internal/g$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/g$e;

    goto :goto_42

    .line 1135
    :cond_3b
    if-eqz v5, :cond_40

    .line 1136
    sget-object v5, Lcom/appsflyer/internal/g$e;->AFInAppEventType:Lcom/appsflyer/internal/g$e;

    goto :goto_42

    .line 1139
    :cond_40
    sget-object v5, Lcom/appsflyer/internal/g$e;->values:Lcom/appsflyer/internal/g$e;

    .line 155
    :goto_42
    nop

    .line 157
    sget-object v9, Lcom/appsflyer/internal/g$e;->values:Lcom/appsflyer/internal/g$e;

    const-string v10, "er"

    if-eq v5, v9, :cond_29a

    .line 158
    const-string v9, "sT"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 159
    const-string v11, "sN"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 161
    const-string v12, "n"

    if-eqz v11, :cond_61

    .line 162
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 164
    :cond_61
    const-string v11, "uk"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :goto_66
    invoke-static {}, Lcom/appsflyer/internal/g$c;->values()[Lcom/appsflyer/internal/g$c;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v12

    aget-object v11, v11, v12

    .line 2099
    new-instance v12, Ljava/util/ArrayList;

    .line 2100
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2099
    invoke-static {v4}, Lcom/appsflyer/internal/g;->AFInAppEventParameterName(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2102
    sget-object v4, Lcom/appsflyer/internal/g$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/g$e;

    if-ne v5, v4, :cond_8c

    .line 2103
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/g;->AFInAppEventParameterName(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2106
    :cond_8c
    sget-object v2, Lcom/appsflyer/internal/g$c;->valueOf:Lcom/appsflyer/internal/g$c;

    const/4 v8, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x5

    const-string v15, "##.#"

    if-ne v11, v2, :cond_180

    .line 2107
    nop

    .line 3046
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3047
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigDecimal;

    .line 3118
    move-object v11, v5

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 3119
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 3121
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    .line 3047
    nop

    .line 3048
    nop

    .line 3188
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3189
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 3190
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 3048
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3049
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 4188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 4190
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 3049
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3050
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3051
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v14, :cond_172

    .line 3052
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigDecimal;

    const/4 v7, 0x4

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    .line 5118
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    .line 5119
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 5121
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v13, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v6, v6, v13

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    .line 3052
    nop

    .line 3053
    invoke-virtual {v6, v4}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 3052
    nop

    .line 5188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 5189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 5190
    invoke-virtual {v6, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 3052
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    const/4 v4, 0x5

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    const/4 v6, 0x2

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigDecimal;

    invoke-virtual {v4, v6}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 6188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 6190
    invoke-virtual {v6, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 3054
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3056
    :cond_172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3057
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3058
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3059
    nop

    .line 2107
    goto/16 :goto_27a

    .line 2108
    :cond_180
    move-object v11, v5

    .line 7071
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7072
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_20b

    .line 7073
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 7188
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 7189
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 7190
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 7073
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7074
    const/4 v4, 0x4

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 8188
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8189
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 8190
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 7074
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7075
    const/4 v4, 0x5

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    const/4 v5, 0x2

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/math/BigDecimal;

    invoke-virtual {v4, v8}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 9188
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 9189
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 9190
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9191
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 7075
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7077
    :cond_20b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7078
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 10188
    new-instance v7, Ljava/text/DecimalFormat;

    invoke-direct {v7, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 10189
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 10190
    invoke-virtual {v7, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 7078
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7079
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 11188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 11189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 11190
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 11191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 7079
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7080
    const/4 v5, 0x2

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 12188
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 12189
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 12190
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 12191
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 7080
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7081
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7082
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7083
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7085
    move-object v4, v5

    .line 167
    :goto_27a
    const-string v2, "v"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/appsflyer/internal/g$b;->values()[Lcom/appsflyer/internal/g$b;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    .line 12232
    iget-object v2, v2, Lcom/appsflyer/internal/g$b;->AFInAppEventType:Ljava/lang/String;

    .line 169
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    nop

    .line 176
    sget-object v2, Lcom/appsflyer/internal/g$e;->AFInAppEventType:Lcom/appsflyer/internal/g$e;

    if-ne v11, v2, :cond_298

    const-string v2, "no_svs"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_298
    goto/16 :goto_a

    .line 171
    :cond_29a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    const-string v1, "na"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object v0

    .line 179
    :cond_2a5
    return-object v0
.end method
