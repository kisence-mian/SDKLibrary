.class public Lcom/uc/crashsdk/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;

.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/Object;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/f;->a:Z

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/f;->c:Ljava/lang/Object;

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/f;->e:Ljava/lang/Object;

    .line 476
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/f;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .registers 6

    .line 440
    invoke-static {}, Lcom/uc/crashsdk/f;->f()[Ljava/io/File;

    move-result-object v0

    .line 442
    nop

    .line 443
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 444
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v2, :cond_1e

    aget-object v5, v0, v3

    .line 445
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 446
    add-int/lit8 v4, v4, 0x1

    .line 444
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1e
    move v1, v4

    .line 451
    :cond_1f
    return v1
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .registers 5

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 109
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 110
    return v1

    .line 113
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    const-string v2, "="

    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 114
    if-gez v0, :cond_2c

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " line not contain \'=\'!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 116
    return v1

    .line 119
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    .line 120
    const-string p1, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 121
    if-gez p1, :cond_3a

    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 125
    :cond_3a
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 126
    nop

    .line 128
    :try_start_3f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_48

    .line 129
    if-gez p0, :cond_46

    .line 130
    goto :goto_47

    .line 129
    :cond_46
    move v1, p0

    .line 134
    :goto_47
    goto :goto_4c

    .line 132
    :catch_48
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 135
    :goto_4c
    return v1
.end method

.method static a(Z)I
    .registers 4

    .line 242
    nop

    .line 243
    sget-object v0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    monitor-enter v0

    .line 244
    const/4 v1, 0x0

    if-eqz p0, :cond_18

    .line 245
    :try_start_7
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-static {p0}, Lcom/uc/crashsdk/f;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 247
    const/4 v1, 0x1

    .line 249
    :cond_12
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    goto :goto_3a

    .line 259
    :catchall_16
    move-exception p0

    goto :goto_3c

    .line 251
    :cond_18
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 252
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    invoke-static {v2}, Lcom/uc/crashsdk/f;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 256
    :cond_34
    goto :goto_20

    .line 257
    :cond_35
    sget-object p0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 259
    :goto_3a
    monitor-exit v0

    .line 261
    return v1

    .line 259
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_16

    goto :goto_3f

    :goto_3e
    throw p0

    :goto_3f
    goto :goto_3e
.end method

.method private static a(Ljava/io/File;)Ljava/lang/StringBuffer;
    .registers 5

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 81
    return-object v1

    .line 84
    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/f;->d()[C

    move-result-object v0

    .line 85
    if-nez v0, :cond_16

    .line 86
    const-string p0, "crashsdk"

    const-string v0, "readCrashStatData alloc buffer failed!"

    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-object v1

    .line 90
    :cond_16
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    nop

    .line 93
    :try_start_1c
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_37
    .catchall {:try_start_1c .. :try_end_21} :catchall_35

    .line 94
    :try_start_21
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    move-result p0

    .line 95
    if-lez p0, :cond_2b

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, p0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_32
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2f

    .line 101
    :cond_2b
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_3e

    :catchall_2f
    move-exception p0

    move-object v1, v3

    goto :goto_40

    .line 98
    :catch_32
    move-exception p0

    move-object v1, v3

    goto :goto_38

    .line 101
    :catchall_35
    move-exception p0

    goto :goto_40

    .line 98
    :catch_37
    move-exception p0

    :goto_38
    :try_start_38
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    .line 101
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 102
    :goto_3e
    nop

    .line 103
    return-object v2

    .line 101
    :goto_40
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method static a(I)V
    .registers 2

    .line 24
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(II)V

    .line 25
    return-void
.end method

.method static a(II)V
    .registers 7

    .line 28
    if-nez p1, :cond_1b

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Add stat for type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " with count 0!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 30
    return-void

    .line 32
    :cond_1b
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x2ef

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-direct {v1, v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 33
    invoke-static {v0, v1}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    .line 36
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 7

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 141
    const-string v1, "="

    const-string v2, "\n"

    if-gez v0, :cond_1c

    .line 142
    if-lez p2, :cond_42

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 146
    :cond_1c
    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 147
    if-gez v2, :cond_26

    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 151
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, v0, v2, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_42
    return-void
.end method

.method public static a(I[Ljava/lang/Object;)Z
    .registers 4

    .line 533
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_60

    .line 563
    return v1

    .line 548
    :pswitch_6
    sget-boolean p0, Lcom/uc/crashsdk/f;->a:Z

    if-nez p0, :cond_13

    if-eqz p1, :cond_d

    goto :goto_13

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 549
    :cond_13
    :goto_13
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/String;

    .line 552
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 554
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 555
    return v0

    .line 557
    :cond_26
    return v1

    .line 542
    :pswitch_27
    sget-boolean p0, Lcom/uc/crashsdk/f;->a:Z

    if-nez p0, :cond_34

    if-eqz p1, :cond_2e

    goto :goto_34

    :cond_2e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 543
    :cond_34
    :goto_34
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/String;

    .line 544
    invoke-static {p0}, Lcom/uc/crashsdk/f;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 535
    :pswitch_3d
    sget-boolean p0, Lcom/uc/crashsdk/f;->a:Z

    if-nez p0, :cond_4a

    if-eqz p1, :cond_44

    goto :goto_4a

    :cond_44
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 536
    :cond_4a
    :goto_4a
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 537
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 538
    invoke-static {p0, p1}, Lcom/uc/crashsdk/f;->b(II)Z

    move-result p0

    return p0

    nop

    :pswitch_data_60
    .packed-switch 0x2ef
        :pswitch_3d
        :pswitch_27
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Ljava/io/File;Ljava/lang/StringBuffer;)Z
    .registers 5

    .line 163
    nop

    .line 164
    nop

    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_21
    .catchall {:try_start_4 .. :try_end_9} :catchall_1f

    .line 167
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, p0, v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_1c
    .catchall {:try_start_9 .. :try_end_14} :catchall_19

    .line 169
    const/4 v0, 0x1

    .line 173
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_28

    :catchall_19
    move-exception p0

    move-object v1, v2

    goto :goto_2a

    .line 170
    :catch_1c
    move-exception p0

    move-object v1, v2

    goto :goto_22

    .line 173
    :catchall_1f
    move-exception p0

    goto :goto_2a

    .line 170
    :catch_21
    move-exception p0

    :goto_22
    :try_start_22
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 173
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 174
    :goto_28
    nop

    .line 175
    return v0

    .line 173
    :goto_2a
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method static a(Ljava/lang/String;)Z
    .registers 4

    .line 455
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 v2, 0x2f1

    invoke-direct {v0, v2, v1}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z
    .registers 3

    .line 316
    sget-object v0, Lcom/uc/crashsdk/f;->c:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/String;Z)Z
    .registers 5

    .line 320
    const-string v0, "crash detail report"

    invoke-static {p1, v0}, Lcom/uc/crashsdk/a/h;->a(ZLjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 321
    return v0

    .line 324
    :cond_a
    new-instance p1, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x2f0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-direct {p1, v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    move-result p0

    return p0
.end method

.method static b()I
    .registers 5

    .line 461
    invoke-static {}, Lcom/uc/crashsdk/f;->f()[Ljava/io/File;

    move-result-object v0

    .line 463
    nop

    .line 464
    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 465
    array-length v2, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v1, v2, :cond_1d

    aget-object v4, v0, v1

    .line 466
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 467
    add-int/lit8 v3, v3, 0x1

    .line 465
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1d
    move v1, v3

    .line 472
    :cond_1e
    return v1
.end method

.method static b(Z)I
    .registers 3

    .line 279
    nop

    .line 280
    sget-object v0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    monitor-enter v0

    .line 281
    if-eqz p0, :cond_19

    .line 282
    :try_start_6
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 284
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const/4 p0, 0x1

    goto :goto_16

    .line 283
    :cond_15
    const/4 p0, 0x0

    .line 287
    :goto_16
    goto :goto_20

    .line 291
    :catchall_17
    move-exception p0

    goto :goto_22

    .line 288
    :cond_19
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    .line 289
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 291
    :goto_20
    monitor-exit v0

    .line 292
    return p0

    .line 291
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_17

    throw p0
.end method

.method public static b(I)V
    .registers 1

    .line 522
    packed-switch p0, :pswitch_data_a

    goto :goto_8

    .line 524
    :pswitch_4
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/uc/crashsdk/f;->d(Z)V

    .line 525
    :goto_8
    return-void

    nop

    :pswitch_data_a
    .packed-switch 0x2bc
        :pswitch_4
    .end packed-switch
.end method

.method private static b(II)Z
    .registers 6

    .line 40
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->u()Z
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 43
    goto :goto_8

    .line 41
    :catchall_4
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 46
    :goto_8
    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0}, Lcom/uc/crashsdk/f;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    if-nez v1, :cond_25

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Stat type not exists: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "crashsdk"

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return v0

    .line 52
    :cond_25
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_6b

    .line 54
    :try_start_2e
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_38

    .line 59
    :cond_37
    goto :goto_3c

    .line 57
    :catchall_38
    move-exception v2

    :try_start_39
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 61
    :goto_3c
    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 62
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 63
    if-nez v2, :cond_4d

    .line 64
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    :cond_4d
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_5e
    invoke-static {v2, v1}, Lcom/uc/crashsdk/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v3

    .line 72
    add-int/2addr v3, p1

    invoke-static {v2, v1, v3}, Lcom/uc/crashsdk/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    move-result p0
    :try_end_6a
    .catchall {:try_start_39 .. :try_end_6a} :catchall_6b

    return p0

    .line 73
    :catchall_6b
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 76
    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 14

    .line 182
    invoke-static {}, Lcom/uc/crashsdk/f;->e()V

    .line 183
    sget-object v0, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 184
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {v1}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 186
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/StringBuffer;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 187
    monitor-exit v0

    return v3

    .line 191
    :cond_18
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 192
    const/4 v4, 0x0

    if-gez v2, :cond_2a

    .line 193
    const-string p0, "Can not found process name start!"

    const-string v1, "crashsdk"

    invoke-static {v1, p0, v4}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    monitor-exit v0

    return v3

    .line 197
    :cond_2a
    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 198
    const-string v6, "]"

    invoke-virtual {p0, v6, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 199
    if-gez v6, :cond_3d

    .line 200
    const-string p0, "Can not found process name end!"

    const-string v1, "crashsdk"

    invoke-static {v1, p0, v4}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    monitor-exit v0

    return v3

    .line 204
    :cond_3d
    invoke-virtual {p0, v2, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_94

    .line 205
    nop

    .line 207
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_44
    :try_start_44
    sget-object v7, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_86

    .line 208
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 209
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 211
    invoke-static {p0, v7}, Lcom/uc/crashsdk/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v9

    .line 212
    if-lez v9, :cond_83

    .line 213
    invoke-static {v2, v8, v9}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;II)V

    .line 216
    sget-object v10, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    monitor-enter v10
    :try_end_62
    .catchall {:try_start_44 .. :try_end_62} :catchall_8d

    .line 217
    :try_start_62
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseIntArray;

    .line 218
    if-nez v11, :cond_72

    .line 219
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 220
    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_72
    invoke-virtual {v11, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    add-int/2addr v12, v9

    .line 224
    invoke-virtual {v11, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    monitor-exit v10
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_80

    .line 227
    :try_start_7b
    invoke-static {p0, v7, v3}, Lcom/uc/crashsdk/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8d

    .line 228
    const/4 v6, 0x1

    goto :goto_83

    .line 225
    :catchall_80
    move-exception v2

    :try_start_81
    monitor-exit v10
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    :try_start_82
    throw v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_8d

    .line 207
    :cond_83
    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 232
    :cond_86
    if-eqz v6, :cond_8b

    .line 233
    :try_start_88
    invoke-static {v1, p0}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    .line 237
    :cond_8b
    monitor-exit v0

    return v5

    .line 232
    :catchall_8d
    move-exception v2

    if-eqz v6, :cond_93

    .line 233
    invoke-static {v1, p0}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    :cond_93
    throw v2

    .line 238
    :catchall_94
    move-exception p0

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_88 .. :try_end_96} :catchall_94

    goto :goto_98

    :goto_97
    throw p0

    :goto_98
    goto :goto_97
.end method

.method private static c(I)Ljava/lang/String;
    .registers 2

    .line 332
    invoke-static {}, Lcom/uc/crashsdk/f;->e()V

    .line 333
    sget-object v0, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 334
    :try_start_6
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 335
    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p0
.end method

.method static c()V
    .registers 4

    .line 516
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v0, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 519
    return-void
.end method

.method static c(Z)V
    .registers 2

    .line 399
    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result v0

    if-nez v0, :cond_7

    .line 400
    return-void

    .line 402
    :cond_7
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 403
    return-void

    .line 406
    :cond_e
    invoke-static {}, Lcom/uc/crashsdk/e;->j()V

    .line 409
    invoke-static {}, Lcom/uc/crashsdk/a/h;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 411
    invoke-static {p0}, Lcom/uc/crashsdk/a/h;->a(Z)V

    .line 416
    :cond_1a
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 418
    invoke-static {p0}, Lcom/uc/crashsdk/f;->d(Z)V

    .line 419
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Z)Z

    .line 420
    invoke-static {p0}, Lcom/uc/crashsdk/a/h;->b(Z)V

    .line 422
    :cond_2d
    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 5

    .line 265
    sget-object v0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 266
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 267
    return v1

    .line 270
    :cond_c
    nop

    :goto_d
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 271
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 272
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 273
    invoke-static {p0, v2, v3}, Lcom/uc/crashsdk/d;->a(Ljava/lang/String;II)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 275
    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method static d(Z)V
    .registers 4

    .line 479
    sget-boolean v0, Lcom/uc/crashsdk/f;->f:Z

    if-eqz v0, :cond_5

    .line 480
    return-void

    .line 483
    :cond_5
    sget-object v0, Lcom/uc/crashsdk/f;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_8
    sget-boolean v1, Lcom/uc/crashsdk/f;->f:Z

    if-eqz v1, :cond_e

    .line 485
    monitor-exit v0

    return-void

    .line 487
    :cond_e
    const-string v1, "crash detail"

    invoke-static {p0, v1}, Lcom/uc/crashsdk/a/h;->a(ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 488
    monitor-exit v0

    return-void

    .line 491
    :cond_18
    const/4 p0, 0x0

    .line 492
    invoke-static {}, Lcom/uc/crashsdk/b;->p()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    .line 493
    nop

    .line 494
    const/4 p0, 0x2

    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    .line 495
    invoke-static {}, Lcom/uc/crashsdk/b;->o()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 496
    const/16 p0, 0x2a

    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    .line 506
    :cond_30
    :goto_30
    const/4 p0, 0x1

    goto :goto_4a

    .line 498
    :cond_32
    invoke-static {}, Lcom/uc/crashsdk/b;->q()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 499
    nop

    .line 500
    const/16 p0, 0x65

    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    .line 501
    invoke-static {}, Lcom/uc/crashsdk/b;->o()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 502
    const/16 p0, 0x2b

    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    goto :goto_30

    .line 506
    :cond_4a
    :goto_4a
    if-eqz p0, :cond_4f

    .line 507
    invoke-static {v2, v2}, Lcom/uc/crashsdk/f;->a(II)V

    .line 509
    :cond_4f
    const/16 p0, 0x64

    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    .line 511
    sput-boolean v2, Lcom/uc/crashsdk/f;->f:Z

    .line 512
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_58

    goto :goto_5c

    :goto_5b
    throw p0

    :goto_5c
    goto :goto_5b
.end method

.method private static d()[C
    .registers 3

    .line 296
    nop

    .line 297
    const/4 v0, 0x0

    const/16 v1, 0x400

    .line 298
    :cond_4
    :goto_4
    if-nez v0, :cond_12

    if-lez v1, :cond_12

    .line 300
    :try_start_8
    new-array v0, v1, [C
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    .line 307
    goto :goto_4

    .line 301
    :catchall_b
    move-exception v2

    .line 303
    div-int/lit8 v1, v1, 0x2

    .line 304
    const/16 v2, 0x200

    if-ge v1, v2, :cond_4

    .line 305
    :cond_12
    return-object v0
.end method

.method private static e()V
    .registers 3

    .line 339
    sget-object v0, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 340
    :try_start_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_b

    .line 341
    monitor-exit v0

    return-void

    .line 344
    :cond_b
    const/16 v1, 0x64

    const-string v2, "start_pv"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    const/16 v1, 0x66

    const-string v2, "start_hpv"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    const/4 v1, 0x1

    const-string v2, "all_all"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    const/4 v1, 0x2

    const-string v2, "all_fg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    const/16 v1, 0x65

    const-string v2, "all_bg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    const/4 v1, 0x3

    const-string v2, "java_fg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    const/4 v1, 0x4

    const-string v2, "java_bg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    const/4 v1, 0x7

    const-string v2, "native_fg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    const/16 v1, 0x8

    const-string v2, "native_bg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    const/16 v1, 0x1b

    const-string v2, "native_anr_fg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    const/16 v1, 0x1c

    const-string v2, "native_anr_bg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    const/16 v1, 0x9

    const-string v2, "native_ok"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    const/16 v1, 0xa

    const-string v2, "unexp_anr"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    const/16 v1, 0x1d

    const-string v2, "unexp_lowmem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    const/16 v1, 0x1e

    const-string v2, "unexp_killed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    const/16 v1, 0x1f

    const-string v2, "unexp_exit"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    const/16 v1, 0x20

    const-string v2, "unexp_restart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    const/16 v1, 0xb

    const-string v2, "unexp_fg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    const/16 v1, 0xc

    const-string v2, "unexp_bg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    const/16 v1, 0x28

    const-string v2, "anr_fg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    const/16 v1, 0x29

    const-string v2, "anr_bg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    const/16 v1, 0x2a

    const-string v2, "anr_cr_fg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    const/16 v1, 0x2b

    const-string v2, "anr_cr_bg"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    const/16 v1, 0xd

    const-string v2, "log_up_succ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    const/16 v1, 0xe

    const-string v2, "log_up_fail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    const/16 v1, 0xf

    const-string v2, "log_empty"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    const/16 v1, 0xc8

    const-string v2, "log_tmp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    const/16 v1, 0x10

    const-string v2, "log_abd_all"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    const/16 v1, 0x16

    const-string v2, "log_abd_builtin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    const/16 v1, 0x17

    const-string v2, "log_abd_custom"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    const/16 v1, 0x11

    const-string v2, "log_large"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    const/16 v1, 0x12

    const-string v2, "log_up_all"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    const/16 v1, 0x13

    const-string v2, "log_up_bytes"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    const/16 v1, 0x14

    const-string v2, "log_up_crash"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    const/16 v1, 0x15

    const-string v2, "log_up_custom"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    const/16 v1, 0x18

    const-string v2, "log_zipped"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    const/16 v1, 0xc9

    const-string v2, "log_enced"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    const/16 v1, 0x19

    const-string v2, "log_renamed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    const/16 v1, 0x1a

    const-string v2, "log_safe_skip"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    monitor-exit v0

    return-void

    :catchall_119
    move-exception v1

    monitor-exit v0
    :try_end_11b
    .catchall {:try_start_3 .. :try_end_11b} :catchall_119

    throw v1
.end method

.method private static f()[Ljava/io/File;
    .registers 7

    .line 425
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_39

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    array-length v2, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2c

    aget-object v4, v0, v3

    .line 430
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".st"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 431
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 434
    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0

    .line 436
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method
