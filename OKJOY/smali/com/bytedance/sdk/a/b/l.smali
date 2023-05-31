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

    .prologue
    .line 47
    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/l;->a:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/l;->b:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/l;->c:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/l;->d:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 12

    .prologue
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
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 400
    move v0, p1

    :goto_3
    if-ge v0, p2, :cond_38

    .line 401
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 402
    const/16 v4, 0x20

    if-ge v1, v4, :cond_11

    const/16 v4, 0x9

    if-ne v1, v4, :cond_31

    :cond_11
    const/16 v4, 0x7f

    if-ge v1, v4, :cond_31

    const/16 v4, 0x30

    if-lt v1, v4, :cond_1d

    const/16 v4, 0x39

    if-le v1, v4, :cond_31

    :cond_1d
    const/16 v4, 0x61

    if-lt v1, v4, :cond_25

    const/16 v4, 0x7a

    if-le v1, v4, :cond_31

    :cond_25
    const/16 v4, 0x41

    if-lt v1, v4, :cond_2d

    const/16 v4, 0x5a

    if-le v1, v4, :cond_31

    :cond_2d
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_39

    :cond_31
    move v4, v2

    .line 407
    :goto_32
    if-nez p3, :cond_3b

    move v1, v2

    :goto_35
    if-ne v4, v1, :cond_3d

    move p2, v0

    .line 409
    :cond_38
    return p2

    :cond_39
    move v4, v3

    .line 402
    goto :goto_32

    :cond_3b
    move v1, v3

    .line 407
    goto :goto_35

    .line 400
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)J
    .registers 7

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 421
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_f

    move-result-wide v2

    .line 422
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_d

    .line 426
    :cond_c
    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v2

    .line 422
    goto :goto_c

    .line 423
    :catch_f
    move-exception v2

    .line 425
    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 426
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_c

    .line 428
    :cond_26
    throw v2
.end method

.method private static a(Ljava/lang/String;II)J
    .registers 13

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;IIZ)I

    move-result v6

    .line 342
    const/4 v5, -0x1

    .line 343
    const/4 v4, -0x1

    .line 344
    const/4 v3, -0x1

    .line 345
    const/4 v2, -0x1

    .line 346
    const/4 v1, -0x1

    .line 347
    const/4 v0, -0x1

    .line 348
    sget-object v7, Lcom/bytedance/sdk/a/b/l;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 350
    :goto_11
    if-ge v6, p2, :cond_a8

    .line 351
    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    invoke-static {p0, v8, p2, v9}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;IIZ)I

    move-result v8

    .line 352
    invoke-virtual {v7, v6, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 354
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4f

    sget-object v6, Lcom/bytedance/sdk/a/b/l;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 355
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 356
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 357
    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 367
    :cond_47
    :goto_47
    add-int/lit8 v6, v8, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, p2, v8}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;IIZ)I

    move-result v6

    goto :goto_11

    .line 358
    :cond_4f
    const/4 v6, -0x1

    if-ne v2, v6, :cond_68

    sget-object v6, Lcom/bytedance/sdk/a/b/l;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 359
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_47

    .line 360
    :cond_68
    const/4 v6, -0x1

    if-ne v1, v6, :cond_8f

    sget-object v6, Lcom/bytedance/sdk/a/b/l;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 361
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 362
    sget-object v6, Lcom/bytedance/sdk/a/b/l;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    goto :goto_47

    .line 363
    :cond_8f
    const/4 v6, -0x1

    if-ne v0, v6, :cond_47

    sget-object v6, Lcom/bytedance/sdk/a/b/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 364
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_47

    .line 371
    :cond_a8
    const/16 v6, 0x46

    if-lt v0, v6, :cond_b2

    const/16 v6, 0x63

    if-gt v0, v6, :cond_b2

    add-int/lit16 v0, v0, 0x76c

    .line 372
    :cond_b2
    if-ltz v0, :cond_ba

    const/16 v6, 0x45

    if-gt v0, v6, :cond_ba

    add-int/lit16 v0, v0, 0x7d0

    .line 376
    :cond_ba
    const/16 v6, 0x641

    if-ge v0, v6, :cond_c4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 377
    :cond_c4
    const/4 v6, -0x1

    if-ne v1, v6, :cond_cd

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 378
    :cond_cd
    const/4 v6, 0x1

    if-lt v2, v6, :cond_d4

    const/16 v6, 0x1f

    if-le v2, v6, :cond_da

    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 379
    :cond_da
    if-ltz v5, :cond_e0

    const/16 v6, 0x17

    if-le v5, v6, :cond_e6

    :cond_e0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 380
    :cond_e6
    if-ltz v4, :cond_ec

    const/16 v6, 0x3b

    if-le v4, v6, :cond_f2

    :cond_ec
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 381
    :cond_f2
    if-ltz v3, :cond_f8

    const/16 v6, 0x3b

    if-le v3, v6, :cond_fe

    :cond_f8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 383
    :cond_fe
    new-instance v6, Ljava/util/GregorianCalendar;

    sget-object v7, Lcom/bytedance/sdk/a/b/a/c;->g:Ljava/util/TimeZone;

    invoke-direct {v6, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 384
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setLenient(Z)V

    .line 385
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 386
    const/4 v0, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 387
    const/4 v0, 0x5

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 388
    const/16 v0, 0xb

    invoke-virtual {v6, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 389
    const/16 v0, 0xc

    invoke-virtual {v6, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 390
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 391
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 392
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static a(JLcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/l;
    .registers 24

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    .line 234
    const/16 v3, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v3

    .line 236
    const/16 v4, 0x3d

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v5

    .line 237
    if-ne v5, v3, :cond_1b

    const/4 v3, 0x0

    .line 332
    :goto_1a
    return-object v3

    .line 239
    :cond_1b
    move-object/from16 v0, p3

    invoke-static {v0, v2, v5}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_30

    :cond_2e
    const/4 v3, 0x0

    goto :goto_1a

    .line 242
    :cond_30
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-static {v5}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_41

    const/4 v3, 0x0

    goto :goto_1a

    .line 245
    :cond_41
    const-wide v14, 0xe677d21fdbffL

    .line 246
    const-wide/16 v6, -0x1

    .line 247
    const/4 v8, 0x0

    .line 248
    const/4 v2, 0x0

    .line 249
    const/4 v10, 0x0

    .line 250
    const/4 v11, 0x0

    .line 251
    const/4 v12, 0x1

    .line 252
    const/4 v13, 0x0

    .line 254
    add-int/lit8 v3, v3, 0x1

    .line 255
    :goto_50
    move/from16 v0, v16

    if-ge v3, v0, :cond_f9

    .line 256
    const/16 v9, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v3, v1, v9}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v17

    .line 258
    const/16 v9, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v3, v1, v9}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v9

    .line 259
    move-object/from16 v0, p3

    invoke-static {v0, v3, v9}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v18

    .line 260
    move/from16 v0, v17

    if-ge v9, v0, :cond_9d

    add-int/lit8 v3, v9, 0x1

    .line 261
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v3, v1}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 264
    :goto_7c
    const-string v9, "expires"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 266
    const/4 v9, 0x0

    :try_start_87
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v3, v9, v0}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;II)J
    :try_end_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_90} :catch_a0

    move-result-wide v14

    .line 267
    const/4 v13, 0x1

    move-object v3, v8

    move-wide v8, v14

    .line 293
    :goto_94
    add-int/lit8 v14, v17, 0x1

    move-object/from16 v19, v3

    move v3, v14

    move-wide v14, v8

    move-object/from16 v8, v19

    .line 294
    goto :goto_50

    .line 261
    :cond_9d
    const-string v3, ""

    goto :goto_7c

    .line 268
    :catch_a0
    move-exception v3

    move-object v3, v8

    move-wide v8, v14

    .line 270
    goto :goto_94

    .line 271
    :cond_a4
    const-string v9, "max-age"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 273
    :try_start_ae
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;)J
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b1} :catch_b6

    move-result-wide v6

    .line 274
    const/4 v13, 0x1

    move-object v3, v8

    move-wide v8, v14

    .line 277
    goto :goto_94

    .line 275
    :catch_b6
    move-exception v3

    move-object v3, v8

    move-wide v8, v14

    .line 277
    goto :goto_94

    .line 278
    :cond_ba
    const-string v9, "domain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cf

    .line 280
    :try_start_c4
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/l;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_c7} :catch_cb

    move-result-object v3

    .line 281
    const/4 v12, 0x0

    move-wide v8, v14

    .line 284
    goto :goto_94

    .line 282
    :catch_cb
    move-exception v3

    move-object v3, v8

    move-wide v8, v14

    .line 284
    goto :goto_94

    .line 285
    :cond_cf
    const-string v9, "path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_dd

    move-object v2, v3

    move-object v3, v8

    move-wide v8, v14

    .line 286
    goto :goto_94

    .line 287
    :cond_dd
    const-string v3, "secure"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 288
    const/4 v10, 0x1

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    .line 289
    :cond_eb
    const-string v3, "httponly"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 290
    const/4 v11, 0x1

    move-object v3, v8

    move-wide v8, v14

    goto :goto_94

    .line 298
    :cond_f9
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v3, v6, v16

    if-nez v3, :cond_11f

    .line 299
    const-wide/high16 v6, -0x8000000000000000L

    .line 311
    :cond_101
    :goto_101
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v3

    .line 312
    if-nez v8, :cond_14c

    move-object v8, v3

    .line 319
    :cond_108
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v3, v9, :cond_155

    .line 320
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/h/a;->a()Lcom/bytedance/sdk/a/b/a/h/a;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/bytedance/sdk/a/b/a/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_155

    .line 321
    const/4 v3, 0x0

    goto/16 :goto_1a

    .line 300
    :cond_11f
    const-wide/16 v16, -0x1

    cmp-long v3, v6, v16

    if-eqz v3, :cond_17d

    .line 301
    const-wide v14, 0x20c49ba5e353f7L

    cmp-long v3, v6, v14

    if-gtz v3, :cond_146

    const-wide/16 v14, 0x3e8

    mul-long/2addr v6, v14

    .line 304
    :goto_131
    add-long v6, v6, p0

    .line 305
    cmp-long v3, v6, p0

    if-ltz v3, :cond_140

    const-wide v14, 0xe677d21fdbffL

    cmp-long v3, v6, v14

    if-lez v3, :cond_101

    .line 306
    :cond_140
    const-wide v6, 0xe677d21fdbffL

    goto :goto_101

    .line 301
    :cond_146
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_131

    .line 314
    :cond_14c
    invoke-static {v3, v8}, Lcom/bytedance/sdk/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_108

    .line 315
    const/4 v3, 0x0

    goto/16 :goto_1a

    .line 326
    :cond_155
    if-eqz v2, :cond_15f

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17b

    .line 327
    :cond_15f
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/a/b/s;->h()Ljava/lang/String;

    move-result-object v2

    .line 328
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 329
    if-eqz v3, :cond_178

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_170
    move-object v9, v2

    .line 332
    :goto_171
    new-instance v3, Lcom/bytedance/sdk/a/b/l;

    invoke-direct/range {v3 .. v13}, Lcom/bytedance/sdk/a/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto/16 :goto_1a

    .line 329
    :cond_178
    const-string v2, "/"

    goto :goto_170

    :cond_17b
    move-object v9, v2

    goto :goto_171

    :cond_17d
    move-wide v6, v14

    goto :goto_101

    :cond_17f
    move-object v3, v8

    move-wide v8, v14

    goto/16 :goto_94
.end method

.method public static a(Lcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/l;
    .registers 4

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/sdk/a/b/l;->a(JLcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/s;Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/s;",
            "Lcom/bytedance/sdk/a/b/r;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/r;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 455
    const/4 v1, 0x0

    .line 457
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_2b

    .line 458
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/b/l;->a(Lcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/l;

    move-result-object v5

    .line 459
    if-nez v5, :cond_1f

    .line 457
    :goto_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 460
    :cond_1f
    if-nez v1, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    :goto_26
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1b

    .line 464
    :cond_2b
    if-eqz v1, :cond_32

    .line 465
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 464
    :goto_31
    return-object v0

    .line 466
    :cond_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_31

    :cond_37
    move-object v0, v1

    goto :goto_26
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 204
    :cond_7
    :goto_7
    return v0

    .line 198
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_27

    .line 200
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 204
    :cond_27
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 437
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 440
    :cond_e
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 441
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 443
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    if-nez v0, :cond_27

    .line 445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 447
    :cond_27
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method a(Z)Ljava/lang/String;
    .registers 8

    .prologue
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

    if-eqz v1, :cond_25

    .line 574
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_5c

    .line 575
    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_25
    :goto_25
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/l;->m:Z

    if-nez v1, :cond_3a

    .line 582
    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    if-eqz p1, :cond_35

    .line 584
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_35
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_3a
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/l;->j:Z

    if-eqz v1, :cond_4e

    .line 592
    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_4e
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/l;->k:Z

    if-eqz v1, :cond_57

    .line 596
    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 577
    :cond_5c
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 604
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/l;

    if-nez v1, :cond_6

    .line 606
    :cond_5
    :goto_5
    return v0

    .line 605
    :cond_6
    check-cast p1, Lcom/bytedance/sdk/a/b/l;

    .line 606
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v2, p1, Lcom/bytedance/sdk/a/b/l;->g:J

    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/bytedance/sdk/a/b/l;->j:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/l;->j:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lcom/bytedance/sdk/a/b/l;->k:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/l;->k:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lcom/bytedance/sdk/a/b/l;->l:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/l;->l:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lcom/bytedance/sdk/a/b/l;->m:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/l;->m:Z

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 619
    .line 620
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/l;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 621
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/l;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 622
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/l;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 623
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/l;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 624
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    iget-wide v6, p0, Lcom/bytedance/sdk/a/b/l;->g:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 625
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/l;->j:Z

    if-eqz v0, :cond_51

    move v0, v1

    :goto_38
    add-int/2addr v0, v3

    .line 626
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/l;->k:Z

    if-eqz v0, :cond_53

    move v0, v1

    :goto_40
    add-int/2addr v0, v3

    .line 627
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/l;->l:Z

    if-eqz v0, :cond_55

    move v0, v1

    :goto_48
    add-int/2addr v0, v3

    .line 628
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/bytedance/sdk/a/b/l;->m:Z

    if-eqz v3, :cond_57

    :goto_4f
    add-int/2addr v0, v1

    .line 629
    return v0

    :cond_51
    move v0, v2

    .line 625
    goto :goto_38

    :cond_53
    move v0, v2

    .line 626
    goto :goto_40

    :cond_55
    move v0, v2

    .line 627
    goto :goto_48

    :cond_57
    move v1, v2

    .line 628
    goto :goto_4f
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/l;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
