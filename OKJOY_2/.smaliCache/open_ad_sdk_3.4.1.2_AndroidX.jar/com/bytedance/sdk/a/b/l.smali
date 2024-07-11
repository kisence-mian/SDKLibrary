.class public final Lcom/bytedance/sdk/a/b/l;
.super Ljava/lang/Object;
.source "Cookie.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    nop

    .line 48
    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/l;->a:Ljava/util/regex/Pattern;

    .line 49
    nop

    .line 50
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/l;->b:Ljava/util/regex/Pattern;

    .line 51
    nop

    .line 52
    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/l;->c:Ljava/util/regex/Pattern;

    .line 53
    nop

    .line 54
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/l;->d:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 11

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    .line 71
    iput-wide p3, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    .line 72
    iput-object p5, p0, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    .line 74
    iput-boolean p7, p0, Lcom/bytedance/sdk/a/b/l;->j:Z

    .line 75
    iput-boolean p8, p0, Lcom/bytedance/sdk/a/b/l;->k:Z

    .line 76
    iput-boolean p9, p0, Lcom/bytedance/sdk/a/b/l;->m:Z

    .line 77
    iput-boolean p10, p0, Lcom/bytedance/sdk/a/b/l;->l:Z

    .line 78
    return-void
.end method

.method private static a(Ljava/lang/String;IIZ)I
    .registers 7

    .line 400
    nop

    :goto_1
    if-ge p1, p2, :cond_3c

    .line 401
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 402
    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_10

    const/16 v1, 0x9

    if-ne v0, v1, :cond_33

    :cond_10
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_33

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1c

    const/16 v1, 0x39

    if-le v0, v1, :cond_33

    :cond_1c
    const/16 v1, 0x61

    if-lt v0, v1, :cond_24

    const/16 v1, 0x7a

    if-le v0, v1, :cond_33

    :cond_24
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2c

    const/16 v1, 0x5a

    if-le v0, v1, :cond_33

    :cond_2c
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    move v0, v2

    .line 407
    :goto_34
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_39

    return p1

    .line 400
    :cond_39
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 409
    :cond_3c
    return p2
.end method

.method private static a(Ljava/lang/String;)J
    .registers 7

    .line 421
    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_f

    .line 422
    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_d

    goto :goto_e

    :cond_d
    move-wide v0, v2

    :goto_e
    return-wide v0

    .line 423
    :catch_f
    move-exception v2

    .line 425
    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 426
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_26

    :cond_21
    const-wide v0, 0x7fffffffffffffffL

    :goto_26
    return-wide v0

    .line 428
    :cond_27
    throw v2
.end method

.method private static a(Ljava/lang/String;II)J
    .registers 15

    .line 340
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;IIZ)I

    move-result p1

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 348
    sget-object v1, Lcom/bytedance/sdk/a/b/l;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 350
    :goto_18
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge p1, p2, :cond_a5

    .line 351
    add-int/lit8 v11, p1, 0x1

    invoke-static {p0, v11, p2, v10}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;IIZ)I

    move-result v11

    .line 352
    invoke-virtual {v1, p1, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 354
    if-ne v4, v2, :cond_4d

    sget-object p1, Lcom/bytedance/sdk/a/b/l;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 355
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 356
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 357
    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_9d

    .line 358
    :cond_4d
    if-ne v5, v2, :cond_64

    sget-object p1, Lcom/bytedance/sdk/a/b/l;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 359
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_9d

    .line 360
    :cond_64
    if-ne v6, v2, :cond_87

    sget-object p1, Lcom/bytedance/sdk/a/b/l;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 361
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 v6, p1, 0x4

    .line 363
    :cond_86
    goto :goto_9d

    :cond_87
    if-ne v3, v2, :cond_86

    sget-object p1, Lcom/bytedance/sdk/a/b/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 364
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 367
    :goto_9d
    add-int/lit8 v11, v11, 0x1

    invoke-static {p0, v11, p2, v0}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;IIZ)I

    move-result p1

    .line 368
    goto/16 :goto_18

    .line 371
    :cond_a5
    const/16 p0, 0x46

    if-lt v3, p0, :cond_af

    const/16 p0, 0x63

    if-gt v3, p0, :cond_af

    add-int/lit16 v3, v3, 0x76c

    .line 372
    :cond_af
    if-ltz v3, :cond_b7

    const/16 p0, 0x45

    if-gt v3, p0, :cond_b7

    add-int/lit16 v3, v3, 0x7d0

    .line 376
    :cond_b7
    const/16 p0, 0x641

    if-lt v3, p0, :cond_11f

    .line 377
    if-eq v6, v2, :cond_119

    .line 378
    if-lt v5, v10, :cond_113

    const/16 p0, 0x1f

    if-gt v5, p0, :cond_113

    .line 379
    if-ltz v4, :cond_10d

    const/16 p0, 0x17

    if-gt v4, p0, :cond_10d

    .line 380
    if-ltz v7, :cond_107

    const/16 p0, 0x3b

    if-gt v7, p0, :cond_107

    .line 381
    if-ltz v8, :cond_101

    if-gt v8, p0, :cond_101

    .line 383
    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lcom/bytedance/sdk/a/b/a/c;->g:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 384
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 385
    invoke-virtual {p0, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 386
    sub-int/2addr v6, v10

    invoke-virtual {p0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 387
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    .line 388
    const/16 p1, 0xb

    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->set(II)V

    .line 389
    const/16 p1, 0xc

    invoke-virtual {p0, p1, v7}, Ljava/util/Calendar;->set(II)V

    .line 390
    const/16 p1, 0xd

    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    .line 391
    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 392
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    .line 381
    :cond_101
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 380
    :cond_107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 379
    :cond_10d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 378
    :cond_113
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 377
    :cond_119
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 376
    :cond_11f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static a(JLcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/l;
    .registers 27

    .line 232
    move-object/from16 v1, p3

    .line 233
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 234
    const/4 v3, 0x0

    const/16 v4, 0x3b

    invoke-static {v1, v3, v2, v4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v0

    .line 236
    const/16 v5, 0x3d

    invoke-static {v1, v3, v0, v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v6

    .line 237
    const/4 v7, 0x0

    if-ne v6, v0, :cond_17

    return-object v7

    .line 239
    :cond_17
    invoke-static {v1, v3, v6}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_14a

    invoke-static {v9}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_2a

    goto/16 :goto_14a

    .line 242
    :cond_2a
    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-static {v1, v6, v0}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 243
    invoke-static {v6}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v10, :cond_37

    return-object v7

    .line 245
    :cond_37
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    nop

    .line 254
    add-int/2addr v0, v8

    const-wide/16 v10, -0x1

    const-wide v12, 0xe677d21fdbffL

    move v15, v3

    move/from16 v16, v15

    move/from16 v18, v16

    move-object v14, v7

    move/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    move-object v8, v14

    .line 255
    :goto_54
    if-ge v0, v2, :cond_cd

    .line 256
    invoke-static {v1, v0, v2, v4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v7

    .line 258
    invoke-static {v1, v0, v7, v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v4

    .line 259
    invoke-static {v1, v0, v4}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-ge v4, v7, :cond_6b

    add-int/lit8 v4, v4, 0x1

    .line 261
    invoke-static {v1, v4, v7}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_6d

    :cond_6b
    const-string v4, ""

    .line 264
    :goto_6d
    const-string v5, "expires"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 266
    :try_start_75
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v4, v3, v0}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;II)J

    move-result-wide v21
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_7d} :catch_81

    .line 267
    nop

    .line 270
    const/16 v18, 0x1

    goto :goto_c5

    .line 268
    :catch_81
    move-exception v0

    .line 270
    goto :goto_c5

    .line 271
    :cond_83
    const-string v5, "max-age"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 273
    :try_start_8b
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8f} :catch_93

    .line 274
    nop

    .line 277
    const/16 v18, 0x1

    goto :goto_c5

    .line 275
    :catch_93
    move-exception v0

    .line 277
    goto :goto_c5

    .line 278
    :cond_95
    const-string v5, "domain"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 280
    :try_start_9d
    invoke-static {v4}, Lcom/bytedance/sdk/a/b/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_a1} :catch_a5

    .line 281
    nop

    .line 284
    move/from16 v17, v3

    goto :goto_c5

    .line 282
    :catch_a5
    move-exception v0

    .line 284
    goto :goto_c5

    .line 285
    :cond_a7
    const-string v5, "path"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 286
    move-object v8, v4

    goto :goto_c5

    .line 287
    :cond_b1
    const-string v4, "secure"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 288
    const/4 v15, 0x1

    goto :goto_c5

    .line 289
    :cond_bb
    const-string v4, "httponly"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 290
    const/16 v16, 0x1

    .line 293
    :cond_c5
    :goto_c5
    add-int/lit8 v0, v7, 0x1

    .line 294
    const/16 v4, 0x3b

    const/16 v5, 0x3d

    const/4 v7, 0x0

    goto :goto_54

    .line 298
    :cond_cd
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, v19, v0

    if-nez v2, :cond_d5

    .line 299
    move-wide v11, v0

    goto :goto_fd

    .line 300
    :cond_d5
    cmp-long v0, v19, v10

    if-eqz v0, :cond_fb

    .line 301
    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v0, v19, v0

    if-gtz v0, :cond_e7

    const-wide/16 v0, 0x3e8

    mul-long v19, v19, v0

    goto :goto_ec

    :cond_e7
    const-wide v19, 0x7fffffffffffffffL

    .line 304
    :goto_ec
    add-long v0, p0, v19

    .line 305
    cmp-long v2, v0, p0

    if-ltz v2, :cond_f9

    cmp-long v2, v0, v12

    if-lez v2, :cond_f7

    goto :goto_f9

    :cond_f7
    move-wide v11, v0

    goto :goto_fd

    .line 306
    :cond_f9
    :goto_f9
    move-wide v11, v12

    goto :goto_fd

    .line 300
    :cond_fb
    move-wide/from16 v11, v21

    .line 311
    :goto_fd
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    .line 312
    if-nez v14, :cond_105

    .line 313
    move-object v13, v0

    goto :goto_10e

    .line 314
    :cond_105
    invoke-static {v0, v14}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10d

    .line 315
    const/4 v1, 0x0

    return-object v1

    .line 314
    :cond_10d
    move-object v13, v14

    .line 319
    :goto_10e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_124

    .line 320
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/h/a;->a()Lcom/bytedance/sdk/a/b/a/h/a;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/bytedance/sdk/a/b/a/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_124

    .line 321
    const/4 v1, 0x0

    return-object v1

    .line 326
    :cond_124
    const-string v0, "/"

    if-eqz v8, :cond_131

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12f

    goto :goto_131

    :cond_12f
    move-object v14, v8

    goto :goto_142

    .line 327
    :cond_131
    :goto_131
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/a/b/s;->h()Ljava/lang/String;

    move-result-object v1

    .line 328
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 329
    if-eqz v2, :cond_141

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_141
    move-object v14, v0

    .line 332
    :goto_142
    new-instance v0, Lcom/bytedance/sdk/a/b/l;

    move-object v8, v0

    move-object v10, v6

    invoke-direct/range {v8 .. v18}, Lcom/bytedance/sdk/a/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v0

    .line 240
    :cond_14a
    :goto_14a
    const/4 v1, 0x0

    return-object v1
.end method

.method public static a(Lcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/l;
    .registers 4

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/sdk/a/b/l;->a(JLcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/s;Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/s;",
            "Lcom/bytedance/sdk/a/b/r;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/l;",
            ">;"
        }
    .end annotation

    .line 454
    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/r;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 455
    nop

    .line 457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_29

    .line 458
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/bytedance/sdk/a/b/l;->a(Lcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/l;

    move-result-object v3

    .line 459
    if-nez v3, :cond_1c

    goto :goto_26

    .line 460
    :cond_1c
    if-nez v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    :cond_23
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 464
    :cond_29
    if-eqz v1, :cond_30

    .line 465
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_34

    .line 466
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 464
    :goto_34
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 195
    return v1

    .line 198
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_27

    .line 200
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    .line 201
    return v1

    .line 204
    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 437
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 440
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 441
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 443
    :cond_13
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 444
    if-eqz p0, :cond_1a

    .line 447
    return-object p0

    .line 445
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 438
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method a(Z)Ljava/lang/String;
    .registers 7

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/l;->l:Z

    if-eqz v1, :cond_3a

    .line 574
    iget-wide v1, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    .line 575
    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 577
    :cond_26
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_3a
    :goto_3a
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/l;->m:Z

    if-nez v1, :cond_4f

    .line 582
    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    if-eqz p1, :cond_4a

    .line 584
    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_4a
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_4f
    const-string p1, "; path="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-boolean p1, p0, Lcom/bytedance/sdk/a/b/l;->j:Z

    if-eqz p1, :cond_63

    .line 592
    const-string p1, "; secure"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_63
    iget-boolean p1, p0, Lcom/bytedance/sdk/a/b/l;->k:Z

    if-eqz p1, :cond_6c

    .line 596
    const-string p1, "; httponly"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 604
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/l;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 605
    :cond_6
    check-cast p1, Lcom/bytedance/sdk/a/b/l;

    .line 606
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    .line 608
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-wide v2, p1, Lcom/bytedance/sdk/a/b/l;->g:J

    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_52

    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/l;->j:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/l;->j:Z

    if-ne v0, v2, :cond_52

    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/l;->k:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/l;->k:Z

    if-ne v0, v2, :cond_52

    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/l;->l:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/l;->l:Z

    if-ne v0, v2, :cond_52

    iget-boolean p1, p1, Lcom/bytedance/sdk/a/b/l;->m:Z

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/l;->m:Z

    if-ne p1, v0, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    nop

    .line 606
    :goto_53
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 619
    nop

    .line 620
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 621
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 622
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 623
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 624
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    .line 625
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/l;->j:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 626
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/l;->k:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 627
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/l;->l:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 628
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/l;->m:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 629
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/l;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
