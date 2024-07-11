.class public Lcom/bytedance/sdk/openadsdk/preload/a/d/a;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field a:I

.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[I

.field private m:I

.field private n:[Ljava/lang/String;

.field private o:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1588
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/f;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/f;

    .line 1610
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c:Z

    .line 237
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    .line 238
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 239
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 241
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    .line 242
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 244
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 268
    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l:[I

    .line 269
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    .line 271
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    const/4 v3, 0x6

    aput v3, v2, v0

    .line 282
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n:[Ljava/lang/String;

    .line 283
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    .line 289
    if-eqz p1, :cond_32

    .line 292
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b:Ljava/io/Reader;

    .line 293
    return-void

    .line 290
    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .registers 5

    .line 1263
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l:[I

    array-length v2, v1

    if-ne v0, v2, :cond_21

    .line 1264
    mul-int/lit8 v0, v0, 0x2

    .line 1265
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l:[I

    .line 1266
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    .line 1267
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n:[Ljava/lang/String;

    .line 1269
    :cond_21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    aput p1, v0, v1

    .line 1270
    return-void
.end method

.method private a(C)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    sparse-switch p1, :sswitch_data_a

    .line 764
    const/4 p1, 0x1

    return p1

    .line 750
    :sswitch_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 762
    :sswitch_8
    const/4 p1, 0x0

    return p1

    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1431
    :goto_4
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_14

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_14

    .line 1444
    :cond_13
    return v3

    .line 1432
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    aget-char v1, v1, v2

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_29

    .line 1433
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    .line 1434
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 1435
    goto :goto_3a

    .line 1437
    :cond_29
    nop

    :goto_2a
    if-ge v3, v0, :cond_43

    .line 1438
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_40

    .line 1439
    nop

    .line 1431
    :goto_3a
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    goto :goto_4

    .line 1437
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1442
    :cond_43
    return v5
.end method

.method private b(Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    .line 1322
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1323
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1325
    :goto_6
    const/4 v3, 0x1

    if-ne v1, v2, :cond_37

    .line 1326
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1327
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1328
    nop

    .line 1394
    if-nez p1, :cond_16

    .line 1397
    const/4 p1, -0x1

    return p1

    .line 1395
    :cond_16
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1330
    :cond_33
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1331
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1334
    :cond_37
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    .line 1335
    const/16 v5, 0xa

    if-ne v1, v5, :cond_47

    .line 1336
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    .line 1337
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 1338
    goto :goto_b3

    .line 1339
    :cond_47
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b3

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b3

    const/16 v5, 0x9

    if-ne v1, v5, :cond_54

    .line 1340
    goto :goto_b3

    .line 1343
    :cond_54
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9e

    .line 1344
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1345
    const/4 v5, 0x2

    if-ne v4, v2, :cond_6d

    .line 1346
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1347
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v2

    .line 1348
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1349
    if-nez v2, :cond_6d

    .line 1350
    return v1

    .line 1354
    :cond_6d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 1355
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    aget-char v3, v0, v2

    .line 1356
    sparse-switch v3, :sswitch_data_b6

    .line 1376
    return v1

    .line 1369
    :sswitch_78
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1370
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->x()V

    .line 1371
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1372
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1373
    goto :goto_6

    .line 1359
    :sswitch_84
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1360
    const-string v1, "*/"

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1363
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v1, v5

    .line 1364
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1365
    goto/16 :goto_6

    .line 1361
    :cond_97
    const-string p1, "Unterminated comment"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 1378
    :cond_9e
    const/16 v2, 0x23

    if-ne v1, v2, :cond_b0

    .line 1379
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1385
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 1386
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->x()V

    .line 1387
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1388
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1393
    goto/16 :goto_6

    .line 1390
    :cond_b0
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1391
    return v1

    .line 1325
    :cond_b3
    :goto_b3
    move v1, v4

    goto/16 :goto_6

    :sswitch_data_b6
    .sparse-switch
        0x2a -> :sswitch_84
        0x2f -> :sswitch_78
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1562
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    .line 987
    const/4 v1, 0x0

    .line 989
    :goto_3
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 990
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 992
    move v4, v3

    move v3, v2

    .line 993
    :goto_9
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v4, :cond_5f

    .line 994
    add-int/lit8 v7, v2, 0x1

    aget-char v2, v0, v2

    .line 996
    if-ne v2, p1, :cond_28

    .line 997
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 998
    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    .line 999
    if-nez v1, :cond_20

    .line 1000
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1002
    :cond_20
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1005
    :cond_28
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_52

    .line 1006
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1007
    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    .line 1008
    if-nez v1, :cond_40

    .line 1009
    add-int/lit8 v1, v7, 0x1

    mul-int/lit8 v1, v1, 0x2

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 1012
    :cond_40
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1013
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->y()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1014
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1015
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1016
    nop

    .line 1017
    move v4, v3

    move v3, v2

    goto :goto_5e

    :cond_52
    const/16 v5, 0xa

    if-ne v2, v5, :cond_5d

    .line 1018
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    .line 1019
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 1021
    :cond_5d
    move v2, v7

    :goto_5e
    goto :goto_9

    .line 1023
    :cond_5f
    if-nez v1, :cond_6f

    .line 1024
    sub-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x2

    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 1027
    :cond_6f
    sub-int v4, v2, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1028
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1029
    invoke-direct {p0, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1032
    goto :goto_3

    .line 1030
    :cond_7d
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private b(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    .line 1279
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 1280
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_15

    .line 1281
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1282
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17

    .line 1284
    :cond_15
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1287
    :goto_17
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1289
    :cond_19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b:Ljava/io/Reader;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    .line 1290
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1293
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    const/4 v4, 0x1

    if-nez v1, :cond_48

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    if-nez v1, :cond_48

    if-lez v2, :cond_48

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_48

    .line 1294
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1295
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 1296
    add-int/lit8 p1, p1, 0x1

    .line 1299
    :cond_48
    if-lt v2, p1, :cond_19

    .line 1300
    return v4

    .line 1303
    :cond_4b
    return v3
.end method

.method private c(C)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    .line 1098
    :goto_2
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1099
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 1101
    :goto_6
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2d

    .line 1102
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    .line 1103
    if-ne v1, p1, :cond_12

    .line 1104
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1105
    return-void

    .line 1106
    :cond_12
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_20

    .line 1107
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1108
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->y()C

    .line 1109
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1110
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    goto :goto_2c

    .line 1111
    :cond_20
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2b

    .line 1112
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    .line 1113
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 1115
    :cond_2b
    move v1, v4

    :goto_2c
    goto :goto_6

    .line 1116
    :cond_2d
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1117
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_2

    .line 1118
    :cond_36
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private o()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 602
    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_33

    const/16 v2, 0x54

    if-ne v0, v2, :cond_10

    goto :goto_33

    .line 606
    :cond_10
    const/16 v2, 0x66

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x46

    if-ne v0, v2, :cond_19

    goto :goto_2b

    .line 610
    :cond_19
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_23

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_22

    goto :goto_23

    .line 615
    :cond_22
    return v1

    .line 611
    :cond_23
    :goto_23
    nop

    .line 612
    nop

    .line 613
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_3a

    .line 607
    :cond_2b
    :goto_2b
    nop

    .line 608
    nop

    .line 609
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_3a

    .line 603
    :cond_33
    :goto_33
    nop

    .line 604
    nop

    .line 605
    const/4 v0, 0x5

    const-string v2, "true"

    const-string v3, "TRUE"

    .line 619
    :goto_3a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 620
    const/4 v5, 0x1

    :goto_3f
    if-ge v5, v4, :cond_68

    .line 621
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    if-lt v6, v7, :cond_51

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v6

    if-nez v6, :cond_51

    .line 622
    return v1

    .line 624
    :cond_51
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 625
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_65

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_65

    .line 626
    return v1

    .line 620
    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 630
    :cond_68
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v2, v4

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    if-lt v2, v3, :cond_77

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_85

    :cond_77
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    .line 631
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(C)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 632
    return v1

    .line 636
    :cond_85
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 637
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v0
.end method

.method private t()I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    .line 643
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 644
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 646
    nop

    .line 647
    nop

    .line 648
    nop

    .line 649
    nop

    .line 651
    const/4 v6, 0x1

    const/4 v7, 0x0

    move v10, v6

    move v8, v7

    move v9, v8

    move v13, v9

    const-wide/16 v11, 0x0

    .line 655
    :goto_14
    add-int v14, v2, v8

    const/4 v15, 0x4

    const/4 v4, 0x2

    if-ne v14, v3, :cond_2c

    .line 656
    array-length v2, v1

    if-ne v8, v2, :cond_1e

    .line 659
    return v7

    .line 661
    :cond_1e
    add-int/lit8 v2, v8, 0x1

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 662
    goto/16 :goto_a9

    .line 664
    :cond_28
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 665
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    .line 668
    :cond_2c
    add-int v5, v2, v8

    aget-char v5, v1, v5

    .line 669
    const/4 v14, 0x5

    sparse-switch v5, :sswitch_data_e0

    .line 704
    const/16 v15, 0x30

    if-lt v5, v15, :cond_a2

    const/16 v15, 0x39

    if-le v5, v15, :cond_61

    goto/16 :goto_a2

    .line 690
    :sswitch_3e
    if-eq v9, v4, :cond_44

    if-ne v9, v15, :cond_43

    goto :goto_44

    .line 694
    :cond_43
    return v7

    .line 691
    :cond_44
    :goto_44
    nop

    .line 692
    move v9, v14

    goto/16 :goto_9e

    .line 697
    :sswitch_48
    if-ne v9, v4, :cond_4d

    .line 698
    nop

    .line 699
    const/4 v9, 0x3

    goto :goto_9e

    .line 701
    :cond_4d
    return v7

    .line 671
    :sswitch_4e
    if-nez v9, :cond_55

    .line 672
    nop

    .line 673
    nop

    .line 674
    move v9, v6

    move v13, v9

    goto :goto_9e

    .line 675
    :cond_55
    if-ne v9, v14, :cond_5a

    .line 676
    nop

    .line 677
    const/4 v9, 0x6

    goto :goto_9e

    .line 679
    :cond_5a
    return v7

    .line 682
    :sswitch_5b
    if-ne v9, v14, :cond_60

    .line 683
    nop

    .line 684
    const/4 v9, 0x6

    goto :goto_9e

    .line 686
    :cond_60
    return v7

    .line 710
    :cond_61
    if-eq v9, v6, :cond_99

    if-nez v9, :cond_66

    goto :goto_99

    .line 713
    :cond_66
    if-ne v9, v4, :cond_8d

    .line 714
    const-wide/16 v14, 0x0

    cmp-long v4, v11, v14

    if-nez v4, :cond_6f

    .line 715
    return v7

    .line 717
    :cond_6f
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v11

    add-int/lit8 v5, v5, -0x30

    int-to-long v4, v5

    sub-long/2addr v14, v4

    .line 718
    const-wide v4, -0xcccccccccccccccL

    cmp-long v4, v11, v4

    if-gtz v4, :cond_88

    if-nez v4, :cond_86

    cmp-long v4, v14, v11

    if-gez v4, :cond_86

    goto :goto_88

    :cond_86
    move v4, v7

    goto :goto_89

    :cond_88
    :goto_88
    move v4, v6

    :goto_89
    and-int/2addr v10, v4

    .line 720
    nop

    .line 721
    move-wide v11, v14

    goto :goto_9e

    :cond_8d
    const/4 v4, 0x3

    if-ne v9, v4, :cond_92

    .line 722
    const/4 v9, 0x4

    goto :goto_9e

    .line 723
    :cond_92
    if-eq v9, v14, :cond_97

    const/4 v4, 0x6

    if-ne v9, v4, :cond_9e

    .line 724
    :cond_97
    const/4 v9, 0x7

    goto :goto_9e

    .line 711
    :cond_99
    :goto_99
    add-int/lit8 v5, v5, -0x30

    neg-int v5, v5

    int-to-long v11, v5

    .line 712
    move v9, v4

    .line 654
    :cond_9e
    :goto_9e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_14

    .line 705
    :cond_a2
    :goto_a2
    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(C)Z

    move-result v1

    if-nez v1, :cond_de

    .line 706
    nop

    .line 730
    :goto_a9
    if-ne v9, v4, :cond_cd

    if-eqz v10, :cond_cd

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v11, v1

    if-nez v1, :cond_b5

    if-eqz v13, :cond_cd

    :cond_b5
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-nez v1, :cond_bd

    if-nez v13, :cond_cd

    .line 731
    :cond_bd
    if-eqz v13, :cond_c0

    goto :goto_c1

    :cond_c0
    neg-long v11, v11

    :goto_c1
    iput-wide v11, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i:J

    .line 732
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 733
    const/16 v1, 0xf

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v1

    .line 734
    :cond_cd
    if-eq v9, v4, :cond_d7

    const/4 v1, 0x4

    if-eq v9, v1, :cond_d7

    const/4 v1, 0x7

    if-ne v9, v1, :cond_d6

    goto :goto_d7

    .line 739
    :cond_d6
    return v7

    .line 736
    :cond_d7
    :goto_d7
    iput v8, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    .line 737
    const/16 v1, 0x10

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v1

    .line 708
    :cond_de
    return v7

    nop

    :sswitch_data_e0
    .sparse-switch
        0x2b -> :sswitch_5b
        0x2d -> :sswitch_4e
        0x2e -> :sswitch_48
        0x45 -> :sswitch_3e
        0x65 -> :sswitch_3e
    .end sparse-switch
.end method

.method private u()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    nop

    .line 1041
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 1045
    :goto_4
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int v4, v3, v2

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    if-ge v4, v5, :cond_1b

    .line 1046
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    sparse-switch v3, :sswitch_data_6e

    .line 1045
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1052
    :sswitch_17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 1064
    :sswitch_1a
    goto :goto_29

    .line 1069
    :cond_1b
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    array-length v3, v3

    if-ge v2, v3, :cond_2b

    .line 1070
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1071
    goto :goto_4

    .line 1089
    :cond_29
    :goto_29
    move v0, v2

    goto :goto_4d

    .line 1078
    :cond_2b
    if-nez v1, :cond_38

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1081
    :cond_38
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1082
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1083
    nop

    .line 1084
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 1085
    nop

    .line 1089
    :goto_4d
    if-nez v1, :cond_59

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_65

    :cond_59
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1090
    :goto_65
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1091
    return-object v1

    .line 1084
    :cond_6b
    move v2, v0

    goto :goto_4

    nop

    :sswitch_data_6e
    .sparse-switch
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0x20 -> :sswitch_1a
        0x23 -> :sswitch_17
        0x2c -> :sswitch_1a
        0x2f -> :sswitch_17
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_17
        0x3d -> :sswitch_17
        0x5b -> :sswitch_1a
        0x5c -> :sswitch_17
        0x5d -> :sswitch_1a
        0x7b -> :sswitch_1a
        0x7d -> :sswitch_1a
    .end sparse-switch
.end method

.method private v()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    :goto_0
    const/4 v0, 0x0

    .line 1124
    :goto_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    if-ge v2, v3, :cond_1d

    .line 1125
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    sparse-switch v1, :sswitch_data_2a

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1131
    :sswitch_14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 1143
    :sswitch_17
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1144
    return-void

    .line 1147
    :cond_1d
    add-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1149
    return-void

    .line 1148
    :cond_28
    goto :goto_0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x9 -> :sswitch_17
        0xa -> :sswitch_17
        0xc -> :sswitch_17
        0xd -> :sswitch_17
        0x20 -> :sswitch_17
        0x23 -> :sswitch_14
        0x2c -> :sswitch_17
        0x2f -> :sswitch_14
        0x3a -> :sswitch_17
        0x3b -> :sswitch_14
        0x3d -> :sswitch_14
        0x5b -> :sswitch_17
        0x5c -> :sswitch_14
        0x5d -> :sswitch_17
        0x7b -> :sswitch_17
        0x7d -> :sswitch_17
    .end sparse-switch
.end method

.method private w()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1402
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c:Z

    if-eqz v0, :cond_5

    .line 1405
    return-void

    .line 1403
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private x()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1413
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_d

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1414
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 1415
    const/16 v1, 0xa

    if-ne v0, v1, :cond_23

    .line 1416
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    .line 1417
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 1418
    goto :goto_28

    .line 1419
    :cond_23
    const/16 v1, 0xd

    if-ne v0, v1, :cond_29

    .line 1420
    nop

    .line 1423
    :cond_28
    :goto_28
    return-void

    .line 1422
    :cond_29
    goto :goto_0
.end method

.method private y()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_15

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_15

    .line 1499
    :cond_10
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1502
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 1503
    const/16 v1, 0xa

    sparse-switch v0, :sswitch_data_b4

    .line 1553
    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1505
    :sswitch_2b
    const/4 v0, 0x4

    add-int/2addr v4, v0

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    if-le v4, v3, :cond_3d

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_3d

    .line 1506
    :cond_38
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1509
    :cond_3d
    :goto_3d
    const/4 v2, 0x0

    .line 1510
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/lit8 v4, v3, 0x4

    :goto_42
    if-ge v3, v4, :cond_98

    .line 1511
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    aget-char v5, v5, v3

    .line 1512
    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    .line 1513
    const/16 v6, 0x30

    if-lt v5, v6, :cond_58

    const/16 v6, 0x39

    if-gt v5, v6, :cond_58

    .line 1514
    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    int-to-char v2, v2

    goto :goto_73

    .line 1515
    :cond_58
    const/16 v6, 0x61

    if-lt v5, v6, :cond_66

    const/16 v6, 0x66

    if-gt v5, v6, :cond_66

    .line 1516
    add-int/lit8 v5, v5, -0x61

    add-int/2addr v5, v1

    add-int/2addr v2, v5

    int-to-char v2, v2

    goto :goto_73

    .line 1517
    :cond_66
    const/16 v6, 0x41

    if-lt v5, v6, :cond_76

    const/16 v6, 0x46

    if-gt v5, v6, :cond_76

    .line 1518
    add-int/lit8 v5, v5, -0x41

    add-int/2addr v5, v1

    add-int/2addr v2, v5

    int-to-char v2, v2

    .line 1510
    :goto_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1520
    :cond_76
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1523
    :cond_98
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1524
    return v2

    .line 1527
    :sswitch_9e
    const/16 v0, 0x9

    return v0

    .line 1536
    :sswitch_a1
    const/16 v0, 0xd

    return v0

    .line 1533
    :sswitch_a4
    return v1

    .line 1539
    :sswitch_a5
    const/16 v0, 0xc

    return v0

    .line 1530
    :sswitch_a8
    const/16 v0, 0x8

    return v0

    .line 1542
    :sswitch_ab
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    .line 1543
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    .line 1550
    :sswitch_b2
    return v0

    nop

    :sswitch_data_b4
    .sparse-switch
        0xa -> :sswitch_ab
        0x22 -> :sswitch_b2
        0x27 -> :sswitch_b2
        0x2f -> :sswitch_b2
        0x5c -> :sswitch_b2
        0x62 -> :sswitch_a8
        0x66 -> :sswitch_a5
        0x6e -> :sswitch_a4
        0x72 -> :sswitch_a1
        0x74 -> :sswitch_9e
        0x75 -> :sswitch_2b
    .end sparse-switch
.end method

.method private z()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1570
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Z)I

    .line 1571
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1573
    nop

    .line 1574
    add-int/lit8 v0, v1, 0x5

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    const/4 v3, 0x5

    if-le v0, v2, :cond_18

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1575
    return-void

    .line 1578
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    .line 1579
    aget-char v2, v0, v1

    const/16 v4, 0x29

    if-ne v2, v4, :cond_47

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_47

    add-int/lit8 v2, v1, 0x2

    aget-char v2, v0, v2

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_47

    add-int/lit8 v2, v1, 0x3

    aget-char v2, v0, v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_47

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_41

    goto :goto_47

    .line 1584
    :cond_41
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 1585
    return-void

    .line 1580
    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 341
    if-nez v0, :cond_8

    .line 342
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 344
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(I)V

    .line 346
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 347
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 351
    return-void

    .line 349
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .registers 2

    .line 325
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c:Z

    .line 326
    return-void
.end method

.method public b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 359
    if-nez v0, :cond_8

    .line 360
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 362
    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 363
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    .line 364
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 369
    return-void

    .line 367
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 377
    if-nez v0, :cond_8

    .line 378
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 380
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 381
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(I)V

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 386
    return-void

    .line 384
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1216
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 1217
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    .line 1218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1219
    return-void
.end method

.method public d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 394
    if-nez v0, :cond_8

    .line 395
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 397
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 398
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    .line 399
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 400
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 405
    return-void

    .line 403
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 412
    if-nez v0, :cond_8

    .line 413
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 415
    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 423
    if-nez v0, :cond_8

    .line 424
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 427
    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 456
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 454
    :pswitch_11
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->j:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 452
    :pswitch_14
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->g:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 439
    :pswitch_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 449
    :pswitch_1a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 444
    :pswitch_1d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 442
    :pswitch_20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->h:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 435
    :pswitch_23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 433
    :pswitch_26
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 431
    :pswitch_29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    .line 429
    :pswitch_2c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->c:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 777
    if-nez v0, :cond_8

    .line 778
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 781
    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    .line 782
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 783
    :cond_11
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1c

    .line 784
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 785
    :cond_1c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    .line 786
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    .line 790
    :goto_26
    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 791
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n:[Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 792
    return-object v0

    .line 788
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 805
    if-nez v0, :cond_8

    .line 806
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 809
    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 810
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 811
    :cond_11
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    .line 812
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 813
    :cond_1c
    const/16 v1, 0x9

    if-ne v0, v1, :cond_27

    .line 814
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 815
    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_31

    .line 816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 817
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    goto :goto_52

    .line 818
    :cond_31
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3c

    .line 819
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 820
    :cond_3c
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    .line 821
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 822
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 826
    :goto_52
    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 827
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 828
    return-object v0

    .line 824
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 840
    if-nez v0, :cond_8

    .line 841
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 843
    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 844
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 845
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 846
    return v3

    .line 847
    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    .line 848
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 849
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    .line 850
    return v2

    .line 852
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 864
    if-nez v0, :cond_8

    .line 865
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 867
    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    .line 868
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 869
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 873
    return-void

    .line 871
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 885
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 886
    if-nez v0, :cond_8

    .line 887
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 890
    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    .line 891
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 892
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 893
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i:J

    long-to-double v0, v0

    return-wide v0

    .line 896
    :cond_1f
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_3a

    .line 897
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 898
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    goto :goto_83

    .line 899
    :cond_3a
    const/16 v1, 0x8

    if-eq v0, v1, :cond_76

    const/16 v4, 0x9

    if-ne v0, v4, :cond_43

    goto :goto_76

    .line 901
    :cond_43
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4e

    .line 902
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    goto :goto_83

    .line 903
    :cond_4e
    if-ne v0, v3, :cond_51

    goto :goto_83

    .line 904
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_76
    :goto_76
    if-ne v0, v1, :cond_7b

    const/16 v0, 0x27

    goto :goto_7d

    :cond_7b
    const/16 v0, 0x22

    :goto_7d
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 907
    :goto_83
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 908
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 909
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c:Z

    if-nez v3, :cond_bd

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_9c

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_9c

    goto :goto_bd

    .line 910
    :cond_9c
    new-instance v2, Lcom/bytedance/sdk/openadsdk/preload/a/d/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 911
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/d;-><init>(Ljava/lang/String;)V

    throw v2

    .line 913
    :cond_bd
    :goto_bd
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 914
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 915
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 916
    return-wide v0
.end method

.method public l()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 931
    if-nez v0, :cond_8

    .line 932
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 935
    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    .line 936
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 937
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 938
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i:J

    return-wide v0

    .line 941
    :cond_1e
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_39

    .line 942
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 943
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    goto :goto_96

    .line 944
    :cond_39
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_69

    const/16 v5, 0x9

    if-eq v0, v5, :cond_69

    if-ne v0, v1, :cond_46

    goto :goto_69

    .line 959
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_69
    :goto_69
    if-ne v0, v1, :cond_72

    .line 946
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    goto :goto_7f

    .line 948
    :cond_72
    if-ne v0, v4, :cond_77

    const/16 v0, 0x27

    goto :goto_79

    :cond_77
    const/16 v0, 0x22

    :goto_79
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 951
    :goto_7f
    :try_start_7f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 952
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 953
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_93} :catch_94

    .line 954
    return-wide v0

    .line 955
    :catch_94
    move-exception v0

    .line 957
    nop

    .line 962
    :goto_96
    const/16 v0, 0xb

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 963
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 964
    double-to-long v4, v0

    .line 965
    long-to-double v6, v4

    cmpl-double v0, v6, v0

    if-nez v0, :cond_b8

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 969
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 970
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 971
    return-wide v4

    .line 966
    :cond_b8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1163
    if-nez v0, :cond_8

    .line 1164
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    .line 1168
    :cond_8
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_47

    .line 1169
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i:J

    long-to-int v4, v0

    .line 1170
    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_26

    .line 1173
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1175
    return v4

    .line 1171
    :cond_26
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_47
    const/16 v1, 0x10

    if-ne v0, v1, :cond_60

    .line 1179
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 1180
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    goto :goto_bd

    .line 1181
    :cond_60
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_90

    const/16 v5, 0x9

    if-eq v0, v5, :cond_90

    if-ne v0, v1, :cond_6d

    goto :goto_90

    .line 1196
    :cond_6d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1182
    :cond_90
    :goto_90
    if-ne v0, v1, :cond_99

    .line 1183
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    goto :goto_a6

    .line 1185
    :cond_99
    if-ne v0, v4, :cond_9e

    const/16 v0, 0x27

    goto :goto_a0

    :cond_9e
    const/16 v0, 0x22

    :goto_a0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 1188
    :goto_a6
    :try_start_a6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1189
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1190
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_ba} :catch_bb

    .line 1191
    return v0

    .line 1192
    :catch_bb
    move-exception v0

    .line 1194
    nop

    .line 1199
    :goto_bd
    const/16 v0, 0xb

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1201
    double-to-int v4, v0

    .line 1202
    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_df

    .line 1205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    .line 1206
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1208
    return v4

    .line 1203
    :cond_df
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x0

    move v1, v0

    .line 1229
    :goto_2
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1230
    if-nez v2, :cond_a

    .line 1231
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v2

    .line 1234
    :cond_a
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_14

    .line 1235
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(I)V

    .line 1236
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1237
    :cond_14
    if-ne v2, v4, :cond_1c

    .line 1238
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(I)V

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1240
    :cond_1c
    const/4 v3, 0x4

    if-ne v2, v3, :cond_27

    .line 1241
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    .line 1242
    add-int/lit8 v1, v1, -0x1

    goto :goto_68

    .line 1243
    :cond_27
    const/4 v3, 0x2

    if-ne v2, v3, :cond_32

    .line 1244
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    .line 1245
    add-int/lit8 v1, v1, -0x1

    goto :goto_68

    .line 1246
    :cond_32
    const/16 v3, 0xe

    if-eq v2, v3, :cond_65

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3b

    goto :goto_65

    .line 1248
    :cond_3b
    const/16 v3, 0x8

    if-eq v2, v3, :cond_5f

    const/16 v3, 0xc

    if-ne v2, v3, :cond_44

    goto :goto_5f

    .line 1250
    :cond_44
    const/16 v3, 0x9

    if-eq v2, v3, :cond_59

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4d

    goto :goto_59

    .line 1252
    :cond_4d
    const/16 v3, 0x10

    if-ne v2, v3, :cond_68

    .line 1253
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    goto :goto_68

    .line 1251
    :cond_59
    :goto_59
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c(C)V

    goto :goto_68

    .line 1249
    :cond_5f
    :goto_5f
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c(C)V

    goto :goto_68

    .line 1247
    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->v()V

    .line 1255
    :cond_68
    :goto_68
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    .line 1256
    if-nez v1, :cond_7f

    .line 1258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 1259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    .line 1260
    return-void

    .line 1256
    :cond_7f
    goto :goto_2
.end method

.method public p()Ljava/lang/String;
    .registers 6

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1463
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_40

    .line 1464
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_46

    goto :goto_3d

    .line 1473
    :pswitch_18
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1474
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n:[Ljava/lang/String;

    aget-object v4, v3, v2

    if-eqz v4, :cond_3d

    .line 1475
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 1467
    :pswitch_29
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1468
    nop

    .line 1463
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1485
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public final q()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c:Z

    return v0
.end method

.method r()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    .line 462
    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_16

    .line 463
    sub-int/2addr v1, v8

    aput v7, v0, v1

    goto/16 :goto_94

    .line 464
    :cond_16
    if-ne v2, v7, :cond_2e

    .line 466
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Z)I

    move-result v0

    .line 467
    sparse-switch v0, :sswitch_data_150

    .line 475
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 469
    :sswitch_26
    iput v6, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v6

    .line 471
    :sswitch_29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 473
    :sswitch_2c
    nop

    .line 477
    goto :goto_94

    :cond_2e
    const/4 v9, 0x5

    if-eq v2, v4, :cond_fe

    if-ne v2, v9, :cond_35

    goto/16 :goto_fe

    .line 515
    :cond_35
    if-ne v2, v6, :cond_67

    .line 516
    sub-int/2addr v1, v8

    aput v9, v0, v1

    .line 518
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Z)I

    move-result v0

    .line 519
    sparse-switch v0, :sswitch_data_15e

    .line 529
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 523
    :sswitch_48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 524
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f:I

    if-lt v0, v1, :cond_57

    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    aget-char v0, v0, v1

    const/16 v9, 0x3e

    if-ne v0, v9, :cond_66

    .line 525
    add-int/2addr v1, v8

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    goto :goto_66

    .line 521
    :sswitch_65
    nop

    .line 531
    :cond_66
    :goto_66
    goto :goto_94

    :cond_67
    const/4 v0, 0x6

    if-ne v2, v0, :cond_79

    .line 532
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c:Z

    if-eqz v0, :cond_71

    .line 533
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->z()V

    .line 535
    :cond_71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->l:[I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m:I

    sub-int/2addr v1, v8

    aput v5, v0, v1

    goto :goto_94

    .line 536
    :cond_79
    if-ne v2, v5, :cond_91

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Z)I

    move-result v0

    .line 538
    const/4 v1, -0x1

    if-ne v0, v1, :cond_88

    .line 539
    const/16 v0, 0x11

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v0

    .line 541
    :cond_88
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 542
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    goto :goto_93

    .line 544
    :cond_91
    if-eq v2, v3, :cond_f6

    :goto_93
    nop

    .line 548
    :goto_94
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Z)I

    move-result v0

    .line 549
    sparse-switch v0, :sswitch_data_168

    .line 575
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 578
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->o()I

    move-result v0

    .line 579
    if-eqz v0, :cond_d4

    .line 580
    return v0

    .line 573
    :sswitch_a7
    iput v8, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v8

    .line 551
    :sswitch_aa
    if-ne v2, v8, :cond_b2

    .line 552
    iput v6, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v6

    .line 571
    :sswitch_af
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v4

    .line 558
    :cond_b2
    :sswitch_b2
    if-eq v2, v8, :cond_be

    if-ne v2, v7, :cond_b7

    goto :goto_be

    .line 563
    :cond_b7
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 559
    :cond_be
    :goto_be
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 560
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 561
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v5

    .line 566
    :sswitch_c9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 567
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v3

    .line 569
    :sswitch_cf
    const/16 v0, 0x9

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v0

    .line 583
    :cond_d4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->t()I

    move-result v0

    .line 584
    if-eqz v0, :cond_db

    .line 585
    return v0

    .line 588
    :cond_db
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d:[C

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 592
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 593
    const/16 v0, 0xa

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v0

    .line 589
    :cond_ef
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 545
    :cond_f6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_fe
    :goto_fe
    sub-int/2addr v1, v8

    aput v6, v0, v1

    .line 480
    if-ne v2, v9, :cond_117

    .line 481
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Z)I

    move-result v0

    .line 482
    sparse-switch v0, :sswitch_data_186

    .line 490
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 484
    :sswitch_111
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v7

    .line 486
    :sswitch_114
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 493
    :cond_117
    :sswitch_117
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Z)I

    move-result v0

    .line 494
    const-string v1, "Expected name"

    sparse-switch v0, :sswitch_data_194

    .line 507
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 508
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    sub-int/2addr v2, v8

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    .line 509
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 510
    const/16 v0, 0xe

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v0

    .line 501
    :sswitch_134
    if-eq v2, v9, :cond_139

    .line 502
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v7

    .line 504
    :cond_139
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 498
    :sswitch_13e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->w()V

    .line 499
    const/16 v0, 0xc

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v0

    .line 496
    :sswitch_146
    const/16 v0, 0xd

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return v0

    .line 512
    :cond_14b
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_data_150
    .sparse-switch
        0x2c -> :sswitch_2c
        0x3b -> :sswitch_29
        0x5d -> :sswitch_26
    .end sparse-switch

    :sswitch_data_15e
    .sparse-switch
        0x3a -> :sswitch_65
        0x3d -> :sswitch_48
    .end sparse-switch

    :sswitch_data_168
    .sparse-switch
        0x22 -> :sswitch_cf
        0x27 -> :sswitch_c9
        0x2c -> :sswitch_b2
        0x3b -> :sswitch_b2
        0x5b -> :sswitch_af
        0x5d -> :sswitch_aa
        0x7b -> :sswitch_a7
    .end sparse-switch

    :sswitch_data_186
    .sparse-switch
        0x2c -> :sswitch_117
        0x3b -> :sswitch_114
        0x7d -> :sswitch_111
    .end sparse-switch

    :sswitch_data_194
    .sparse-switch
        0x22 -> :sswitch_146
        0x27 -> :sswitch_13e
        0x7d -> :sswitch_134
    .end sparse-switch
.end method

.method s()Ljava/lang/String;
    .registers 5

    .line 1452
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g:I

    add-int/lit8 v0, v0, 0x1

    .line 1453
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " column "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
