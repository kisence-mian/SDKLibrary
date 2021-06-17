.class public Lcom/umeng/commonsdk/statistics/common/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field public static DEBUG:Z = false

.field private static final LEVEL_DEBUG:I = 0x2

.field private static final LEVEL_ERROR:I = 0x5

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_VERBOSE:I = 0x1

.field private static final LEVEL_WARN:I = 0x4

.field private static LOG_MAXLENGTH:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    .line 33
    const-string v0, "MobclickAgent"

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    .line 277
    const/16 v0, 0x7d0

    sput v0, Lcom/umeng/commonsdk/statistics/common/MLog;->LOG_MAXLENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    .line 225
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 249
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 250
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :cond_8
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 210
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 106
    :try_start_0
    const-string v0, ""

    .line 107
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 108
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 111
    :cond_1e
    if-eqz p1, :cond_26

    .line 112
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 114
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 119
    :goto_29
    goto :goto_2e

    .line 117
    :catchall_2a
    move-exception p0

    .line 118
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 120
    :goto_2e
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .registers 3

    .line 188
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method public static varargs d(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 49
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 53
    goto :goto_18

    .line 51
    :catchall_14
    move-exception p0

    .line 52
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 54
    :goto_18
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    .line 237
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 267
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 268
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 214
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 124
    :try_start_0
    const-string v0, ""

    .line 125
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 126
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 129
    :cond_1e
    if-eqz p1, :cond_26

    .line 130
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 132
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 136
    :goto_29
    goto :goto_2e

    .line 134
    :catchall_2a
    move-exception p0

    .line 135
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 137
    :goto_2e
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 3

    .line 192
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public static varargs e(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 59
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 63
    goto :goto_18

    .line 61
    :catchall_14
    move-exception p0

    .line 62
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 64
    :goto_18
    return-void
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 367
    nop

    .line 368
    nop

    .line 369
    nop

    .line 371
    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2c

    .line 372
    :try_start_9
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_28

    .line 373
    :try_start_e
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 374
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 375
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 376
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_26

    .line 379
    nop

    .line 381
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    .line 383
    goto :goto_21

    .line 382
    :catchall_20
    move-exception v0

    .line 385
    :goto_21
    nop

    .line 386
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_3c

    .line 377
    :catchall_26
    move-exception p0

    goto :goto_2a

    :catchall_28
    move-exception p0

    move-object v2, v0

    :goto_2a
    move-object v0, v1

    goto :goto_2e

    :catchall_2c
    move-exception p0

    move-object v2, v0

    .line 379
    :goto_2e
    if-eqz v0, :cond_35

    .line 381
    :try_start_30
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    .line 383
    goto :goto_35

    .line 382
    :catchall_34
    move-exception p0

    .line 385
    :cond_35
    :goto_35
    if-eqz v2, :cond_3a

    .line 386
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 389
    :cond_3a
    const-string p0, ""

    :goto_3c
    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    .line 229
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 255
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 256
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    :cond_8
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 198
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 89
    :try_start_0
    const-string v0, ""

    .line 90
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 91
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 94
    :cond_1e
    if-eqz p1, :cond_26

    .line 95
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 97
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 101
    :goto_29
    goto :goto_2e

    .line 99
    :catchall_2a
    move-exception p0

    .line 100
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 102
    :goto_2e
    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .registers 3

    .line 176
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method public static varargs i(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 39
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 43
    goto :goto_18

    .line 41
    :catchall_14
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 44
    :goto_18
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .line 281
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 282
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 283
    nop

    .line 284
    sget v1, Lcom/umeng/commonsdk/statistics/common/MLog;->LOG_MAXLENGTH:I

    .line 285
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    const/16 v4, 0x64

    if-ge v2, v4, :cond_76

    .line 287
    if-le v0, v1, :cond_4b

    .line 288
    packed-switch p0, :pswitch_data_9a

    goto :goto_41

    .line 296
    :pswitch_19
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    goto :goto_41

    .line 302
    :pswitch_21
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    goto :goto_41

    .line 293
    :pswitch_29
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    goto :goto_41

    .line 290
    :pswitch_31
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    goto :goto_41

    .line 299
    :pswitch_39
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    nop

    .line 308
    :goto_41
    nop

    .line 309
    sget v3, Lcom/umeng/commonsdk/statistics/common/MLog;->LOG_MAXLENGTH:I

    add-int/2addr v3, v1

    .line 285
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_f

    .line 311
    :cond_4b
    packed-switch p0, :pswitch_data_a8

    .line 329
    goto :goto_76

    .line 319
    :pswitch_4f
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    goto :goto_76

    .line 325
    :pswitch_57
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    goto :goto_76

    .line 316
    :pswitch_5f
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    goto :goto_76

    .line 313
    :pswitch_67
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    goto :goto_76

    .line 322
    :pswitch_6f
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_76
    :goto_76
    if-eqz p3, :cond_99

    .line 337
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/MLog;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_99

    .line 339
    packed-switch p0, :pswitch_data_b6

    goto :goto_99

    .line 347
    :pswitch_86
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    goto :goto_99

    .line 353
    :pswitch_8a
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    goto :goto_99

    .line 344
    :pswitch_8e
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    goto :goto_99

    .line 341
    :pswitch_92
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    goto :goto_99

    .line 350
    :pswitch_96
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_99
    :goto_99
    return-void

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_31
        :pswitch_29
        :pswitch_21
        :pswitch_19
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;)V
    .registers 3

    .line 221
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 243
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 244
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    :cond_8
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 202
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 141
    :try_start_0
    const-string v0, ""

    .line 142
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 143
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 146
    :cond_1e
    if-eqz p1, :cond_26

    .line 147
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 149
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 153
    :goto_29
    goto :goto_2e

    .line 151
    :catchall_2a
    move-exception p0

    .line 152
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 154
    :goto_2e
    return-void
.end method

.method public static v(Ljava/lang/Throwable;)V
    .registers 3

    .line 180
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method public static varargs v(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 69
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 73
    goto :goto_18

    .line 71
    :catchall_14
    move-exception p0

    .line 72
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 74
    :goto_18
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    .line 233
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 261
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 262
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 206
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 158
    :try_start_0
    const-string v0, ""

    .line 159
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 160
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 163
    :cond_1e
    if-eqz p1, :cond_26

    .line 164
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 166
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 171
    :goto_29
    goto :goto_2e

    .line 169
    :catchall_2a
    move-exception p0

    .line 170
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 172
    :goto_2e
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 3

    .line 184
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    return-void
.end method

.method public static varargs w(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 79
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 83
    goto :goto_18

    .line 81
    :catchall_14
    move-exception p0

    .line 82
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 84
    :goto_18
    return-void
.end method
