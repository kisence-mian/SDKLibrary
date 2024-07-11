.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;

    .line 45
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z

    .line 56
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 13
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z
    .param p2, "tz"    # Ljava/util/TimeZone;

    .line 68
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 69
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    const-string v1, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "capacity":I
    if-eqz p1, :cond_19

    const-string v2, ".sss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    add-int/2addr v1, v2

    .line 74
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "Z"

    goto :goto_26

    :cond_24
    const-string v2, "+hh:mm"

    :goto_26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-string v5, "yyyy"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 78
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    const-string v3, "MM"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v5, "dd"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 82
    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v5, "hh"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v3, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 84
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v7, "mm"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "ss"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 88
    if-eqz p1, :cond_b3

    .line 89
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "sss"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 93
    :cond_b3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 94
    .local v6, "offset":I
    if-eqz v6, :cond_ea

    .line 95
    const v8, 0xea60

    div-int v9, v6, v8

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 96
    .local v9, "hours":I
    div-int v8, v6, v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 97
    .local v8, "minutes":I
    if-gez v6, :cond_d3

    goto :goto_d5

    :cond_d3
    const/16 v4, 0x2b

    :goto_d5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v9, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v8, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 101
    .end local v8    # "minutes":I
    .end local v9    # "hours":I
    goto :goto_ef

    .line 102
    :cond_ea
    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :goto_ef
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 345
    move v0, p1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 347
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_17

    const/16 v2, 0x39

    if-le v1, v2, :cond_14

    goto :goto_17

    .line 345
    .end local v1    # "c":C
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .restart local v1    # "c":C
    :cond_17
    :goto_17
    return v0

    .line 349
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 6
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "strValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    .local v1, "i":I
    :goto_a
    if-lez v1, :cond_14

    .line 336
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 338
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 24
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 124
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 126
    .local v3, "fail":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 129
    .local v0, "offset":I
    add-int/lit8 v4, v0, 0x4

    .end local v0    # "offset":I
    .local v4, "offset":I
    invoke-static {v1, v0, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    .line 130
    .local v0, "year":I
    const/16 v5, 0x2d

    invoke-static {v1, v4, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 135
    :cond_19
    add-int/lit8 v6, v4, 0x2

    .end local v4    # "offset":I
    .local v6, "offset":I
    invoke-static {v1, v4, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    .line 136
    .local v4, "month":I
    invoke-static {v1, v6, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 141
    :cond_27
    add-int/lit8 v7, v6, 0x2

    .end local v6    # "offset":I
    .local v7, "offset":I
    invoke-static {v1, v6, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    .line 143
    .local v6, "day":I
    const/4 v8, 0x0

    .line 144
    .local v8, "hour":I
    const/4 v9, 0x0

    .line 145
    .local v9, "minutes":I
    const/4 v10, 0x0

    .line 146
    .local v10, "seconds":I
    const/4 v11, 0x0

    .line 149
    .local v11, "milliseconds":I
    const/16 v12, 0x54

    invoke-static {v1, v7, v12}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v12
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_37} :catch_21f
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_37} :catch_21a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_37} :catch_215

    .line 151
    .local v12, "hasT":Z
    if-nez v12, :cond_5d

    :try_start_39
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v13, v7, :cond_5d

    .line 152
    new-instance v5, Ljava/util/GregorianCalendar;

    add-int/lit8 v13, v4, -0x1

    invoke-direct {v5, v0, v13, v6}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    .local v5, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    return-object v13

    .line 266
    .end local v0    # "year":I
    .end local v4    # "month":I
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v6    # "day":I
    .end local v7    # "offset":I
    .end local v8    # "hour":I
    .end local v9    # "minutes":I
    .end local v10    # "seconds":I
    .end local v11    # "milliseconds":I
    .end local v12    # "hasT":Z
    :catch_4e
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_218

    .line 264
    :catch_53
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_21d

    .line 262
    :catch_58
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_222

    .line 158
    .restart local v0    # "year":I
    .restart local v4    # "month":I
    .restart local v6    # "day":I
    .restart local v7    # "offset":I
    .restart local v8    # "hour":I
    .restart local v9    # "minutes":I
    .restart local v10    # "seconds":I
    .restart local v11    # "milliseconds":I
    .restart local v12    # "hasT":Z
    :cond_5d
    const/16 v13, 0x2b

    const/16 v14, 0x5a

    if-eqz v12, :cond_d8

    .line 161
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v15, v7, 0x2

    .end local v7    # "offset":I
    .local v15, "offset":I
    invoke-static {v1, v7, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    move v8, v7

    .line 162
    const/16 v7, 0x3a

    invoke-static {v1, v15, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v16

    if-eqz v16, :cond_76

    .line 163
    add-int/lit8 v15, v15, 0x1

    .line 166
    :cond_76
    add-int/lit8 v5, v15, 0x2

    .end local v15    # "offset":I
    .local v5, "offset":I
    invoke-static {v1, v15, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v15

    move v9, v15

    .line 167
    invoke-static {v1, v5, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 168
    add-int/lit8 v5, v5, 0x1

    move v7, v5

    goto :goto_88

    .line 167
    :cond_87
    move v7, v5

    .line 171
    .end local v5    # "offset":I
    .restart local v7    # "offset":I
    :goto_88
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_d8

    .line 172
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 173
    .local v5, "c":C
    if-eq v5, v14, :cond_d8

    if-eq v5, v13, :cond_d8

    const/16 v15, 0x2d

    if-eq v5, v15, :cond_d8

    .line 174
    add-int/lit8 v15, v7, 0x2

    .end local v7    # "offset":I
    .restart local v15    # "offset":I
    invoke-static {v1, v7, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 175
    .end local v10    # "seconds":I
    .local v7, "seconds":I
    const/16 v10, 0x3b

    if-le v7, v10, :cond_ac

    const/16 v10, 0x3f

    if-ge v7, v10, :cond_ac

    const/16 v7, 0x3b

    move v10, v7

    goto :goto_ad

    .line 177
    :cond_ac
    move v10, v7

    .end local v7    # "seconds":I
    .restart local v10    # "seconds":I
    :goto_ad
    const/16 v7, 0x2e

    invoke-static {v1, v15, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 178
    add-int/lit8 v15, v15, 0x1

    .line 179
    add-int/lit8 v7, v15, 0x1

    invoke-static {v1, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v7

    .line 180
    .local v7, "endOffset":I
    add-int/lit8 v13, v15, 0x3

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 181
    .local v13, "parseEndOffset":I
    invoke-static {v1, v15, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17
    :try_end_c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_39 .. :try_end_c7} :catch_58
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_c7} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_c7} :catch_4e

    .line 183
    .local v17, "fraction":I
    sub-int v18, v13, v15

    packed-switch v18, :pswitch_data_296

    .line 191
    move/from16 v11, v17

    goto :goto_d5

    .line 185
    :pswitch_cf
    mul-int/lit8 v11, v17, 0xa

    .line 186
    goto :goto_d5

    .line 188
    :pswitch_d2
    mul-int/lit8 v11, v17, 0x64

    .line 189
    nop

    .line 193
    :goto_d5
    move v15, v7

    goto :goto_d8

    .line 177
    .end local v7    # "endOffset":I
    .end local v13    # "parseEndOffset":I
    .end local v17    # "fraction":I
    :cond_d7
    move v7, v15

    .line 200
    .end local v5    # "c":C
    .end local v15    # "offset":I
    .local v7, "offset":I
    :cond_d8
    :goto_d8
    :try_start_d8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_203

    .line 204
    const/4 v5, 0x0

    .line 205
    .local v5, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13
    :try_end_e3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d8 .. :try_end_e3} :catch_21f
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_e3} :catch_21a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d8 .. :try_end_e3} :catch_215

    .line 207
    .local v13, "timezoneIndicator":C
    const/4 v15, 0x1

    if-ne v13, v14, :cond_f0

    .line 208
    :try_start_e6
    sget-object v14, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;
    :try_end_e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e6 .. :try_end_e8} :catch_58
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_e8} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_e8} :catch_4e

    move-object v5, v14

    .line 209
    add-int/2addr v7, v15

    move-object/from16 v16, v3

    move/from16 v21, v12

    goto/16 :goto_1d0

    .line 210
    :cond_f0
    const/16 v14, 0x2b

    if-eq v13, v14, :cond_11c

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_fb

    move-object/from16 v16, v3

    goto :goto_11e

    .line 245
    :cond_fb
    :try_start_fb
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_102
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_fb .. :try_end_102} :catch_21f
    .catch Ljava/lang/NumberFormatException; {:try_start_fb .. :try_end_102} :catch_21a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_102} :catch_215

    move-object/from16 v16, v3

    .end local v3    # "fail":Ljava/lang/Exception;
    .local v16, "fail":Ljava/lang/Exception;
    :try_start_104
    const-string v3, "Invalid time zone indicator \'"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\'"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v16    # "fail":Ljava/lang/Exception;
    .end local p0    # "date":Ljava/lang/String;
    .end local p1    # "pos":Ljava/text/ParsePosition;
    throw v14

    .line 210
    .restart local v3    # "fail":Ljava/lang/Exception;
    .restart local p0    # "date":Ljava/lang/String;
    .restart local p1    # "pos":Ljava/text/ParsePosition;
    :cond_11c
    move-object/from16 v16, v3

    .line 211
    .end local v3    # "fail":Ljava/lang/Exception;
    .restart local v16    # "fail":Ljava/lang/Exception;
    :goto_11e
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "timezoneOffset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x5

    if-lt v14, v15, :cond_12b

    move-object v14, v3

    goto :goto_13e

    :cond_12b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_13e
    move-object v3, v14

    .line 216
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v7, v14

    .line 218
    const-string v14, "+0000"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c5

    const-string v14, "+00:00"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15c

    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v21, v12

    goto/16 :goto_1cb

    .line 225
    :cond_15c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GMT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "timezoneId":Ljava/lang/String;
    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    move-object v5, v15

    .line 230
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, "act":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1be

    .line 237
    move-object/from16 v18, v3

    .end local v3    # "timezoneOffset":Ljava/lang/String;
    .local v18, "timezoneOffset":Ljava/lang/String;
    const-string v3, ":"

    move/from16 v19, v7

    .end local v7    # "offset":I
    .local v19, "offset":I
    const-string v7, ""

    invoke-virtual {v15, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "cleaned":Ljava/lang/String;
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_193

    move/from16 v21, v12

    goto :goto_1ce

    .line 239
    :cond_193
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v20, v3

    .end local v3    # "cleaned":Ljava/lang/String;
    .local v20, "cleaned":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v12

    .end local v12    # "hasT":Z
    .local v21, "hasT":Z
    const-string v12, "Mismatching time zone indicator: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " given, resolves to "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 240
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v16    # "fail":Ljava/lang/Exception;
    .end local p0    # "date":Ljava/lang/String;
    .end local p1    # "pos":Ljava/text/ParsePosition;
    throw v7

    .line 231
    .end local v18    # "timezoneOffset":Ljava/lang/String;
    .end local v19    # "offset":I
    .end local v20    # "cleaned":Ljava/lang/String;
    .end local v21    # "hasT":Z
    .local v3, "timezoneOffset":Ljava/lang/String;
    .restart local v7    # "offset":I
    .restart local v12    # "hasT":Z
    .restart local v16    # "fail":Ljava/lang/Exception;
    .restart local p0    # "date":Ljava/lang/String;
    .restart local p1    # "pos":Ljava/text/ParsePosition;
    :cond_1be
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v21, v12

    .end local v3    # "timezoneOffset":Ljava/lang/String;
    .end local v7    # "offset":I
    .end local v12    # "hasT":Z
    .restart local v18    # "timezoneOffset":Ljava/lang/String;
    .restart local v19    # "offset":I
    .restart local v21    # "hasT":Z
    goto :goto_1ce

    .line 218
    .end local v14    # "timezoneId":Ljava/lang/String;
    .end local v15    # "act":Ljava/lang/String;
    .end local v18    # "timezoneOffset":Ljava/lang/String;
    .end local v19    # "offset":I
    .end local v21    # "hasT":Z
    .restart local v3    # "timezoneOffset":Ljava/lang/String;
    .restart local v7    # "offset":I
    .restart local v12    # "hasT":Z
    :cond_1c5
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v21, v12

    .line 219
    .end local v3    # "timezoneOffset":Ljava/lang/String;
    .end local v7    # "offset":I
    .end local v12    # "hasT":Z
    .restart local v18    # "timezoneOffset":Ljava/lang/String;
    .restart local v19    # "offset":I
    .restart local v21    # "hasT":Z
    :goto_1cb
    sget-object v3, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    move-object v5, v3

    .line 244
    .end local v18    # "timezoneOffset":Ljava/lang/String;
    :goto_1ce
    move/from16 v7, v19

    .line 248
    .end local v19    # "offset":I
    .restart local v7    # "offset":I
    :goto_1d0
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    .local v3, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    const/4 v12, 0x1

    invoke-virtual {v3, v12, v0}, Ljava/util/Calendar;->set(II)V

    .line 251
    add-int/lit8 v12, v4, -0x1

    const/4 v14, 0x2

    invoke-virtual {v3, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/4 v12, 0x5

    invoke-virtual {v3, v12, v6}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v12, 0xb

    invoke-virtual {v3, v12, v8}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v12, 0xc

    invoke-virtual {v3, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v12, 0xd

    invoke-virtual {v3, v12, v10}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v12, 0xe

    invoke-virtual {v3, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    return-object v12

    .line 201
    .end local v5    # "timezone":Ljava/util/TimeZone;
    .end local v13    # "timezoneIndicator":C
    .end local v16    # "fail":Ljava/lang/Exception;
    .end local v21    # "hasT":Z
    .local v3, "fail":Ljava/lang/Exception;
    .restart local v12    # "hasT":Z
    :cond_203
    move-object/from16 v16, v3

    move/from16 v21, v12

    .end local v3    # "fail":Ljava/lang/Exception;
    .end local v12    # "hasT":Z
    .restart local v16    # "fail":Ljava/lang/Exception;
    .restart local v21    # "hasT":Z
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No time zone indicator"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v16    # "fail":Ljava/lang/Exception;
    .end local p0    # "date":Ljava/lang/String;
    .end local p1    # "pos":Ljava/text/ParsePosition;
    throw v3
    :try_end_20f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_104 .. :try_end_20f} :catch_213
    .catch Ljava/lang/NumberFormatException; {:try_start_104 .. :try_end_20f} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_104 .. :try_end_20f} :catch_20f

    .line 266
    .end local v0    # "year":I
    .end local v4    # "month":I
    .end local v6    # "day":I
    .end local v7    # "offset":I
    .end local v8    # "hour":I
    .end local v9    # "minutes":I
    .end local v10    # "seconds":I
    .end local v11    # "milliseconds":I
    .end local v21    # "hasT":Z
    .restart local v16    # "fail":Ljava/lang/Exception;
    .restart local p0    # "date":Ljava/lang/String;
    .restart local p1    # "pos":Ljava/text/ParsePosition;
    :catch_20f
    move-exception v0

    goto :goto_218

    .line 264
    :catch_211
    move-exception v0

    goto :goto_21d

    .line 262
    :catch_213
    move-exception v0

    goto :goto_222

    .line 266
    .end local v16    # "fail":Ljava/lang/Exception;
    .restart local v3    # "fail":Ljava/lang/Exception;
    :catch_215
    move-exception v0

    move-object/from16 v16, v3

    .line 267
    .end local v3    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "fail":Ljava/lang/Exception;
    :goto_218
    move-object v3, v0

    .end local v16    # "fail":Ljava/lang/Exception;
    .restart local v3    # "fail":Ljava/lang/Exception;
    goto :goto_224

    .line 264
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_21a
    move-exception v0

    move-object/from16 v16, v3

    .line 265
    .end local v3    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "fail":Ljava/lang/Exception;
    :goto_21d
    move-object v3, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "fail":Ljava/lang/Exception;
    .restart local v3    # "fail":Ljava/lang/Exception;
    goto :goto_223

    .line 262
    :catch_21f
    move-exception v0

    move-object/from16 v16, v3

    .line 263
    .end local v3    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "fail":Ljava/lang/Exception;
    :goto_222
    move-object v3, v0

    .line 268
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v16    # "fail":Ljava/lang/Exception;
    .restart local v3    # "fail":Ljava/lang/Exception;
    :goto_223
    nop

    .line 269
    :goto_224
    if-nez v1, :cond_228

    const/4 v0, 0x0

    goto :goto_23f

    :cond_228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "input":Ljava/lang/String;
    :goto_23f
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "msg":Ljava/lang/String;
    if-eqz v4, :cond_24b

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26c

    .line 272
    :cond_24b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    :cond_26c
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse date ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v5, "ex":Ljava/text/ParseException;
    invoke-virtual {v5, v3}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v5

    :pswitch_data_296
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_cf
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 301
    if-ltz p1, :cond_6c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_6c

    if-gt p1, p2, :cond_6c

    .line 305
    move v0, p1

    .line 306
    .local v0, "i":I
    const/4 v1, 0x0

    .line 308
    .local v1, "result":I
    const-string v2, "Invalid number: "

    const/16 v3, 0xa

    if-ge v0, p2, :cond_3c

    .line 309
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 310
    .local v0, "digit":I
    if-ltz v0, :cond_21

    .line 313
    neg-int v1, v0

    move v0, v4

    goto :goto_3c

    .line 311
    :cond_21
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    .end local v4    # "i":I
    .local v0, "i":I
    :cond_3c
    :goto_3c
    if-ge v0, p2, :cond_6a

    .line 316
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 317
    .local v0, "digit":I
    if-ltz v0, :cond_4f

    .line 320
    mul-int/lit8 v1, v1, 0xa

    .line 321
    sub-int/2addr v1, v0

    move v0, v4

    goto :goto_3c

    .line 318
    :cond_4f
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    .end local v4    # "i":I
    .local v0, "i":I
    :cond_6a
    neg-int v2, v1

    return v2

    .line 302
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_6c
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
