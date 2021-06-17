.class public Lcom/uc/crashsdk/a/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static final i:Ljava/lang/Object;

.field private static final j:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/a/g;->a:Z

    .line 365
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/a/g;->c:Ljava/lang/String;

    .line 367
    sput-object v0, Lcom/uc/crashsdk/a/g;->d:Ljava/lang/String;

    .line 369
    sput-object v0, Lcom/uc/crashsdk/a/g;->e:Ljava/lang/String;

    .line 424
    sput-object v0, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    .line 425
    sput-object v0, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/a/g;->h:Z

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a/g;->i:Ljava/lang/Object;

    .line 590
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_22

    sput-object v0, Lcom/uc/crashsdk/a/g;->j:[C

    return-void

    :array_22
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    .line 394
    sget-object v0, Lcom/uc/crashsdk/a/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/io/File;IZ)Ljava/lang/String;
    .registers 7

    .line 155
    nop

    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    .line 158
    :try_start_8
    new-array p0, p1, [B

    .line 159
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    .line 160
    if-lez p1, :cond_28

    .line 161
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v0, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_19

    .line 168
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 161
    return-object v3

    .line 163
    :catchall_19
    move-exception p0

    goto :goto_1d

    :catchall_1b
    move-exception p0

    move-object v2, v1

    .line 164
    :goto_1d
    if-eqz p2, :cond_28

    .line 165
    :try_start_1f
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_28

    .line 168
    :catchall_23
    move-exception p0

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_28
    :goto_28
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 169
    nop

    .line 170
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 266
    nop

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 269
    invoke-static {p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 271
    goto :goto_2d

    .line 272
    :cond_18
    if-eqz p2, :cond_2c

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    move-object v1, p0

    goto :goto_2d

    .line 272
    :cond_2c
    move-object v1, p0

    .line 282
    :cond_2d
    :goto_2d
    if-nez v1, :cond_30

    .line 283
    goto :goto_31

    .line 282
    :cond_30
    move-object p1, v1

    .line 285
    :goto_31
    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 533
    nop

    .line 535
    nop

    .line 537
    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 539
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3e

    .line 540
    :try_start_14
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x200

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 542
    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    :goto_20
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 548
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_39

    .line 552
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 553
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 548
    return-object v0

    .line 549
    :catchall_39
    move-exception v2

    goto :goto_41

    :catchall_3b
    move-exception v2

    move-object p0, v0

    goto :goto_41

    :catchall_3e
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_41
    const/4 v3, 0x0

    :try_start_42
    invoke-static {v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 552
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 553
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 554
    nop

    .line 555
    return-object v0

    .line 552
    :catchall_4d
    move-exception v0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 553
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public static a(Ljava/io/File;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    nop

    .line 198
    nop

    .line 200
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_9
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_2f

    .line 201
    :try_start_e
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v4, 0x200

    invoke-direct {p0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_2b

    .line 202
    const/4 v2, 0x0

    .line 204
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 205
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_29

    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 207
    if-lez p1, :cond_16

    if-lt v2, p1, :cond_16

    .line 208
    :cond_25
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_37

    .line 211
    :catchall_29
    move-exception p1

    goto :goto_2d

    :catchall_2b
    move-exception p1

    move-object p0, v2

    :goto_2d
    move-object v2, v3

    goto :goto_31

    :catchall_2f
    move-exception p1

    move-object p0, v2

    :goto_31
    :try_start_31
    invoke-static {p1, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 214
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 215
    :goto_37
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 216
    nop

    .line 217
    return-object v0

    .line 214
    :catchall_3c
    move-exception p1

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 215
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_45

    :goto_44
    throw p1

    :goto_45
    goto :goto_44
.end method

.method public static a(I)V
    .registers 1

    .line 479
    packed-switch p0, :pswitch_data_12

    .line 485
    sget-boolean p0, Lcom/uc/crashsdk/a/g;->a:Z

    if-eqz p0, :cond_c

    .line 488
    return-void

    .line 481
    :pswitch_8
    invoke-static {}, Lcom/uc/crashsdk/a/g;->l()V

    .line 482
    return-void

    .line 485
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_data_12
    .packed-switch 0x320
        :pswitch_8
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 372
    sget-object v0, Lcom/uc/crashsdk/a/g;->b:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 373
    const-string v0, "mContext is existed"

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 375
    :cond_9
    sput-object p0, Lcom/uc/crashsdk/a/g;->b:Landroid/content/Context;

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 377
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/a/g;->c:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/a/g;->d:Ljava/lang/String;

    .line 381
    :try_start_17
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v1, "primaryCpuAbi"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 384
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 385
    if-eqz p0, :cond_31

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 386
    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/uc/crashsdk/a/g;->e:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_32

    .line 390
    :cond_31
    return-void

    .line 388
    :catchall_32
    move-exception p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V

    .line 391
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .line 254
    if-eqz p0, :cond_b

    .line 256
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 259
    return-void

    .line 257
    :catchall_6
    move-exception p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V

    .line 261
    :cond_b
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 46
    const/high16 v0, 0x80000

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    :cond_21
    const/4 v1, 0x0

    :try_start_22
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_45

    :try_start_27
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_41

    :goto_2c
    :try_start_2c
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_38

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3f

    goto :goto_2c

    :cond_38
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_3f
    move-exception p1

    goto :goto_43

    :catchall_41
    move-exception p1

    move-object p0, v1

    :goto_43
    move-object v1, v2

    goto :goto_47

    :catchall_45
    move-exception p1

    move-object p0, v1

    :goto_47
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_4f

    :goto_4e
    throw p1

    :goto_4f
    goto :goto_4e
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V

    .line 335
    return-void
.end method

.method private static a(Ljava/lang/Throwable;Z)V
    .registers 2

    .line 346
    if-nez p1, :cond_8

    :try_start_2
    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 347
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_c

    .line 350
    :cond_b
    return-void

    .line 349
    :catchall_c
    move-exception p0

    .line 351
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 7

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_22

    .line 102
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_22

    aget-object v4, v0, v3

    .line 103
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    move-result v4

    .line 104
    if-nez v4, :cond_1f

    .line 105
    return v2

    .line 102
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 111
    :cond_22
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    .line 239
    nop

    .line 240
    nop

    .line 242
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_18

    .line 243
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p1, v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 244
    const/4 v0, 0x1

    .line 248
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_1f

    .line 245
    :catchall_15
    move-exception p0

    move-object v1, v2

    goto :goto_19

    :catchall_18
    move-exception p0

    :goto_19
    :try_start_19
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_21

    .line 248
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 249
    :goto_1f
    nop

    .line 250
    return v0

    .line 248
    :catchall_21
    move-exception p0

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/File;[B)Z
    .registers 5

    .line 221
    nop

    .line 222
    nop

    .line 225
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_17

    .line 226
    :try_start_9
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 227
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_14

    .line 228
    const/4 v0, 0x1

    .line 232
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_1e

    .line 229
    :catchall_14
    move-exception p0

    move-object v1, v2

    goto :goto_18

    :catchall_17
    move-exception p0

    :goto_18
    :try_start_18
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 232
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 233
    :goto_1e
    nop

    .line 235
    return v0

    .line 232
    :catchall_20
    move-exception p0

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    .line 295
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/StringBuffer;)Z
    .registers 1

    .line 299
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 398
    sget-object v0, Lcom/uc/crashsdk/a/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/io/File;)V
    .registers 2

    .line 115
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 116
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 2

    .line 341
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V

    .line 342
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 1

    .line 303
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)J
    .registers 6

    .line 308
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_18

    .line 310
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_10} :catch_17

    .line 311
    cmp-long p0, v3, v1

    if-gez p0, :cond_15

    .line 312
    goto :goto_16

    .line 311
    :cond_15
    move-wide v1, v3

    .line 314
    :goto_16
    return-wide v1

    .line 315
    :catch_17
    move-exception p0

    .line 316
    :cond_18
    return-wide v1
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 402
    sget-object v0, Lcom/uc/crashsdk/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 123
    nop

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_a

    .line 125
    return-object v1

    .line 128
    :cond_a
    const/4 v0, 0x0

    .line 130
    const/4 v2, 0x0

    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_34

    .line 131
    const/16 p0, 0x100

    :try_start_13
    new-array p0, p0, [B

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    :goto_1a
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_29

    .line 136
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 138
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_31

    .line 142
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_3b

    .line 139
    :catchall_31
    move-exception p0

    move-object v0, v3

    goto :goto_35

    :catchall_34
    move-exception p0

    :goto_35
    :try_start_35
    invoke-static {p0, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3d

    .line 142
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 143
    :goto_3b
    nop

    .line 144
    return-object v1

    .line 142
    :catchall_3d
    move-exception p0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_43

    :goto_42
    throw p0

    :goto_43
    goto :goto_42
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .line 406
    sget-object v0, Lcom/uc/crashsdk/a/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 407
    return-object v0

    .line 409
    :cond_5
    const-string v0, ""

    return-object v0
.end method

.method public static d(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 150
    const/16 v0, 0x40

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 562
    nop

    .line 565
    :try_start_1
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 566
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 568
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 570
    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    add-int/2addr v0, v2

    :goto_1e
    if-ge v2, v0, :cond_37

    aget-byte v3, p0, v2

    sget-object v4, Lcom/uc/crashsdk/a/g;->j:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v5, v4, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3c

    .line 573
    goto :goto_45

    .line 571
    :catch_3c
    move-exception p0

    .line 572
    const-string v0, "crashsdk"

    const-string v1, "getMD5: "

    invoke-static {v0, v1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 575
    :goto_45
    return-object p0
.end method

.method public static e()Z
    .registers 1

    .line 429
    invoke-static {}, Lcom/uc/crashsdk/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 430
    const/4 v0, 0x1

    return v0

    .line 432
    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/a/g;->f()Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/io/File;)[B
    .registers 5

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 175
    return-object v1

    .line 178
    :cond_8
    nop

    .line 179
    nop

    .line 182
    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 183
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_21

    .line 184
    :try_start_16
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1f

    .line 185
    nop

    .line 189
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 190
    move-object v1, v0

    goto :goto_2b

    .line 186
    :catchall_1f
    move-exception p0

    goto :goto_23

    :catchall_21
    move-exception p0

    move-object v2, v1

    :goto_23
    const/4 v0, 0x0

    :try_start_24
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 189
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 190
    nop

    .line 192
    :goto_2b
    return-object v1

    .line 189
    :catchall_2c
    move-exception p0

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static f()Z
    .registers 2

    .line 437
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 438
    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    .line 437
    return v0
.end method

.method public static g()Z
    .registers 3

    .line 442
    invoke-static {}, Lcom/uc/crashsdk/a/g;->i()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 445
    const-string v1, " root "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 446
    if-lez v1, :cond_29

    .line 447
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 448
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 449
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_29
    return v2
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    .line 457
    invoke-static {}, Lcom/uc/crashsdk/a/g;->l()V

    .line 458
    sget-object v0, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 459
    const-string v0, ""

    return-object v0

    .line 461
    :cond_e
    sget-object v0, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    .line 465
    invoke-static {}, Lcom/uc/crashsdk/a/g;->l()V

    .line 466
    sget-object v0, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 467
    const-string v0, ""

    return-object v0

    .line 469
    :cond_e
    sget-object v0, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static j()V
    .registers 4

    .line 473
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x3a98

    invoke-static {v1, v0, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 476
    return-void
.end method

.method public static k()V
    .registers 2

    .line 525
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/uc/crashsdk/a/g;->h:Z

    if-nez v0, :cond_9

    goto :goto_18

    .line 528
    :cond_9
    const/16 v0, 0x7b

    sget-object v1, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 529
    const/16 v0, 0x7c

    sget-object v1, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 530
    return-void

    .line 526
    :cond_18
    :goto_18
    return-void
.end method

.method private static l()V
    .registers 8

    .line 493
    sget-boolean v0, Lcom/uc/crashsdk/a/g;->h:Z

    if-eqz v0, :cond_5

    .line 494
    return-void

    .line 497
    :cond_5
    sget-object v0, Lcom/uc/crashsdk/a/g;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_8
    sget-boolean v1, Lcom/uc/crashsdk/a/g;->h:Z

    if-eqz v1, :cond_e

    .line 499
    monitor-exit v0

    return-void

    .line 502
    :cond_e
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sh"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "-c"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "type su"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 504
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 506
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 507
    if-lez v3, :cond_69

    const-string v7, "/su"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 508
    const/16 v7, 0x2f

    add-int/2addr v3, v5

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 509
    if-lez v3, :cond_69

    .line 510
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    .line 511
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "ls"

    aput-object v3, v1, v4

    const-string v3, "-l"

    aput-object v3, v1, v5

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 514
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    .line 519
    :cond_69
    sput-boolean v5, Lcom/uc/crashsdk/a/g;->h:Z

    .line 520
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_70

    .line 521
    invoke-static {}, Lcom/uc/crashsdk/a/g;->k()V

    .line 522
    return-void

    .line 520
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method
