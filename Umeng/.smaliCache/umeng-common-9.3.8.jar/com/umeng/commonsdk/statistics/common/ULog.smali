.class public Lcom/umeng/commonsdk/statistics/common/ULog;
.super Ljava/lang/Object;
.source "ULog.java"


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

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    .line 34
    const-string v0, "ULog"

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    .line 278
    const/16 v0, 0x7d0

    sput v0, Lcom/umeng/commonsdk/statistics/common/ULog;->LOG_MAXLENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    .line 226
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 250
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 251
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    :cond_8
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 211
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 107
    :try_start_0
    const-string v0, ""

    .line 108
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 109
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 112
    :cond_1e
    if-eqz p1, :cond_26

    .line 113
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 115
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 120
    :goto_29
    goto :goto_2e

    .line 118
    :catchall_2a
    move-exception p0

    .line 119
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 121
    :goto_2e
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .registers 3

    .line 189
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method public static varargs d(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 50
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 54
    goto :goto_18

    .line 52
    :catchall_14
    move-exception p0

    .line 53
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 55
    :goto_18
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    .line 238
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 268
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 269
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 215
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 125
    :try_start_0
    const-string v0, ""

    .line 126
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 127
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 130
    :cond_1e
    if-eqz p1, :cond_26

    .line 131
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 133
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 137
    :goto_29
    goto :goto_2e

    .line 135
    :catchall_2a
    move-exception p0

    .line 136
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 138
    :goto_2e
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 3

    .line 193
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    return-void
.end method

.method public static varargs e(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 64
    goto :goto_18

    .line 62
    :catchall_14
    move-exception p0

    .line 63
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 65
    :goto_18
    return-void
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 372
    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2c

    .line 373
    :try_start_9
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_28

    .line 374
    :try_start_e
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 375
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 376
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 377
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_26

    .line 380
    nop

    .line 382
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    .line 384
    goto :goto_21

    .line 383
    :catchall_20
    move-exception v0

    .line 386
    :goto_21
    nop

    .line 387
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_3c

    .line 378
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

    .line 380
    :goto_2e
    if-eqz v0, :cond_35

    .line 382
    :try_start_30
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    .line 384
    goto :goto_35

    .line 383
    :catchall_34
    move-exception p0

    .line 386
    :cond_35
    :goto_35
    if-eqz v2, :cond_3a

    .line 387
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 390
    :cond_3a
    const-string p0, ""

    :goto_3c
    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    .line 230
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 256
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 257
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    :cond_8
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 199
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 90
    :try_start_0
    const-string v0, ""

    .line 91
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 92
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 95
    :cond_1e
    if-eqz p1, :cond_26

    .line 96
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 98
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 102
    :goto_29
    goto :goto_2e

    .line 100
    :catchall_2a
    move-exception p0

    .line 101
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 103
    :goto_2e
    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .registers 3

    .line 177
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    return-void
.end method

.method public static varargs i(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 40
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 41
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 44
    goto :goto_18

    .line 42
    :catchall_14
    move-exception p0

    .line 43
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 45
    :goto_18
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 283
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 284
    nop

    .line 285
    sget v1, Lcom/umeng/commonsdk/statistics/common/ULog;->LOG_MAXLENGTH:I

    .line 286
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    const/16 v4, 0x64

    if-ge v2, v4, :cond_76

    .line 288
    if-le v0, v1, :cond_4b

    .line 289
    packed-switch p0, :pswitch_data_9a

    goto :goto_41

    .line 297
    :pswitch_19
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    goto :goto_41

    .line 303
    :pswitch_21
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    goto :goto_41

    .line 294
    :pswitch_29
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    goto :goto_41

    .line 291
    :pswitch_31
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    goto :goto_41

    .line 300
    :pswitch_39
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    nop

    .line 309
    :goto_41
    nop

    .line 310
    sget v3, Lcom/umeng/commonsdk/statistics/common/ULog;->LOG_MAXLENGTH:I

    add-int/2addr v3, v1

    .line 286
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_f

    .line 312
    :cond_4b
    packed-switch p0, :pswitch_data_a8

    .line 330
    goto :goto_76

    .line 320
    :pswitch_4f
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    goto :goto_76

    .line 326
    :pswitch_57
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    goto :goto_76

    .line 317
    :pswitch_5f
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    goto :goto_76

    .line 314
    :pswitch_67
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    goto :goto_76

    .line 323
    :pswitch_6f
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_76
    :goto_76
    if-eqz p3, :cond_99

    .line 338
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/ULog;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 339
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_99

    .line 340
    packed-switch p0, :pswitch_data_b6

    goto :goto_99

    .line 348
    :pswitch_86
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    goto :goto_99

    .line 354
    :pswitch_8a
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    goto :goto_99

    .line 345
    :pswitch_8e
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    goto :goto_99

    .line 342
    :pswitch_92
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    goto :goto_99

    .line 351
    :pswitch_96
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
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

    .line 222
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 244
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 245
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :cond_8
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 203
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 142
    :try_start_0
    const-string v0, ""

    .line 143
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 144
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 145
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 147
    :cond_1e
    if-eqz p1, :cond_26

    .line 148
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 150
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 154
    :goto_29
    goto :goto_2e

    .line 152
    :catchall_2a
    move-exception p0

    .line 153
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 155
    :goto_2e
    return-void
.end method

.method public static v(Ljava/lang/Throwable;)V
    .registers 3

    .line 181
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void
.end method

.method public static varargs v(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 70
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 74
    goto :goto_18

    .line 72
    :catchall_14
    move-exception p0

    .line 73
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 75
    :goto_18
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    .line 234
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 262
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 263
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 207
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 159
    :try_start_0
    const-string v0, ""

    .line 160
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 161
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 164
    :cond_1e
    if-eqz p1, :cond_26

    .line 165
    const/4 v0, 0x0

    aget-object p1, p1, v0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 167
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 172
    :goto_29
    goto :goto_2e

    .line 170
    :catchall_2a
    move-exception p0

    .line 171
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 173
    :goto_2e
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 3

    .line 185
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return-void
.end method

.method public static varargs w(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    sget-object p1, Lcom/umeng/commonsdk/statistics/common/ULog;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 84
    goto :goto_18

    .line 82
    :catchall_14
    move-exception p0

    .line 83
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/Throwable;)V

    .line 85
    :goto_18
    return-void
.end method
