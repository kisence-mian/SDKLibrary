.class public Lcom/anythink/hb/LogUtil;
.super Ljava/lang/Object;


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    invoke-static {}, Lcom/anythink/hb/HeaderBiddingAggregator;->isDebugMode()Z

    move-result v0

    sput-boolean v0, Lcom/anythink/hb/LogUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 144
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 145
    const/4 v0, 0x0

    :goto_8
    if-ge v0, p0, :cond_12

    .line 146
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 148
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    .line 112
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_75

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 114
    if-lez v1, :cond_2a

    const/16 v4, 0xa

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2a

    .line 115
    invoke-static {v1}, Lcom/anythink/hb/LogUtil;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_2a
    sparse-switch v3, :sswitch_data_7a

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 120
    :sswitch_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    goto :goto_30

    .line 124
    :sswitch_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 128
    :sswitch_63
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v1, v1, -0x1

    .line 130
    invoke-static {v1}, Lcom/anythink/hb/LogUtil;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 139
    :cond_75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :sswitch_data_7a
    .sparse-switch
        0x2c -> :sswitch_4c
        0x5b -> :sswitch_33
        0x5d -> :sswitch_63
        0x7b -> :sswitch_33
        0x7d -> :sswitch_63
    .end sparse-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 154
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move v3, v2

    .line 155
    :goto_b
    if-ge v3, v5, :cond_74

    .line 156
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 157
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_6f

    .line 158
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 159
    const/16 v3, 0x75

    if-ne v0, v3, :cond_4f

    move v0, v2

    move v3, v1

    move v1, v2

    .line 162
    :goto_24
    const/4 v4, 0x4

    if-ge v1, v4, :cond_4a

    .line 163
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 164
    sparse-switch v3, :sswitch_data_7a

    .line 162
    :goto_30
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_24

    .line 175
    :sswitch_34
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x30

    .line 176
    goto :goto_30

    .line 183
    :sswitch_3a
    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x61

    .line 184
    goto :goto_30

    .line 191
    :sswitch_42
    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x41

    goto :goto_30

    .line 197
    :cond_4a
    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 199
    :cond_4f
    const/16 v3, 0x74

    if-ne v0, v3, :cond_5a

    .line 200
    const/16 v0, 0x9

    .line 207
    :cond_55
    :goto_55
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v1

    goto :goto_b

    .line 201
    :cond_5a
    const/16 v3, 0x72

    if-ne v0, v3, :cond_61

    .line 202
    const/16 v0, 0xd

    goto :goto_55

    .line 203
    :cond_61
    const/16 v3, 0x6e

    if-ne v0, v3, :cond_68

    .line 204
    const/16 v0, 0xa

    goto :goto_55

    .line 205
    :cond_68
    const/16 v3, 0x66

    if-ne v0, v3, :cond_55

    .line 206
    const/16 v0, 0xc

    goto :goto_55

    .line 210
    :cond_6f
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v0

    goto :goto_b

    .line 213
    :cond_74
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    nop

    :sswitch_data_7a
    .sparse-switch
        0x30 -> :sswitch_34
        0x31 -> :sswitch_34
        0x32 -> :sswitch_34
        0x33 -> :sswitch_34
        0x34 -> :sswitch_34
        0x35 -> :sswitch_34
        0x36 -> :sswitch_34
        0x37 -> :sswitch_34
        0x38 -> :sswitch_34
        0x39 -> :sswitch_34
        0x41 -> :sswitch_42
        0x42 -> :sswitch_42
        0x43 -> :sswitch_42
        0x44 -> :sswitch_42
        0x45 -> :sswitch_42
        0x46 -> :sswitch_42
        0x61 -> :sswitch_3a
        0x62 -> :sswitch_3a
        0x63 -> :sswitch_3a
        0x64 -> :sswitch_3a
        0x65 -> :sswitch_3a
        0x66 -> :sswitch_3a
    .end sparse-switch
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    sget-boolean v0, Lcom/anythink/hb/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 88
    sget-boolean v0, Lcom/anythink/hb/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 57
    sget-boolean v0, Lcom/anythink/hb/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_7
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 104
    sget-boolean v0, Lcom/anythink/hb/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_8a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1154
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 1155
    :goto_15
    if-ge v0, v5, :cond_7f

    .line 1156
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1157
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_7a

    .line 1158
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1159
    const/16 v3, 0x75

    if-ne v0, v3, :cond_5a

    move v3, v1

    move v0, v1

    .line 1162
    :goto_2d
    const/4 v4, 0x4

    if-ge v3, v4, :cond_54

    .line 1163
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1164
    sparse-switch v2, :sswitch_data_8c

    .line 1162
    :goto_39
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2d

    .line 1175
    :sswitch_3e
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x30

    .line 1176
    goto :goto_39

    .line 1183
    :sswitch_44
    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x61

    .line 1184
    goto :goto_39

    .line 1191
    :sswitch_4c
    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x41

    goto :goto_39

    .line 1197
    :cond_54
    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    .line 1198
    goto :goto_15

    .line 1199
    :cond_5a
    const/16 v3, 0x74

    if-ne v0, v3, :cond_65

    .line 1200
    const/16 v0, 0x9

    .line 1207
    :cond_60
    :goto_60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_15

    .line 1201
    :cond_65
    const/16 v3, 0x72

    if-ne v0, v3, :cond_6c

    .line 1202
    const/16 v0, 0xd

    goto :goto_60

    .line 1203
    :cond_6c
    const/16 v3, 0x6e

    if-ne v0, v3, :cond_73

    .line 1204
    const/16 v0, 0xa

    goto :goto_60

    .line 1205
    :cond_73
    const/16 v3, 0x66

    if-ne v0, v3, :cond_60

    .line 1206
    const/16 v0, 0xc

    goto :goto_60

    .line 1210
    :cond_7a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v3

    goto :goto_15

    .line 1213
    :cond_7f
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/anythink/hb/LogUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_8a
    return-void

    .line 1164
    nop

    :sswitch_data_8c
    .sparse-switch
        0x30 -> :sswitch_3e
        0x31 -> :sswitch_3e
        0x32 -> :sswitch_3e
        0x33 -> :sswitch_3e
        0x34 -> :sswitch_3e
        0x35 -> :sswitch_3e
        0x36 -> :sswitch_3e
        0x37 -> :sswitch_3e
        0x38 -> :sswitch_3e
        0x39 -> :sswitch_3e
        0x41 -> :sswitch_4c
        0x42 -> :sswitch_4c
        0x43 -> :sswitch_4c
        0x44 -> :sswitch_4c
        0x45 -> :sswitch_4c
        0x46 -> :sswitch_4c
        0x61 -> :sswitch_44
        0x62 -> :sswitch_44
        0x63 -> :sswitch_44
        0x64 -> :sswitch_44
        0x65 -> :sswitch_44
        0x66 -> :sswitch_44
    .end sparse-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    sget-boolean v0, Lcom/anythink/hb/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_7
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 73
    sget-boolean v0, Lcom/anythink/hb/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_7
    return-void
.end method
