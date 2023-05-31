.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1594
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1616
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 290
    if-nez p1, :cond_3b

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_3b
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 294
    return-void
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1408
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_b

    .line 1409
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1411
    :cond_b
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1576
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1577
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1579
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1e

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1591
    :cond_1d
    :goto_1d
    return-void

    .line 1583
    :cond_1e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 1584
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1d

    .line 1583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1590
    :cond_34
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1d
.end method

.method private fillBuffer(I)Z
    .registers 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1284
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1285
    .local v0, "buffer":[C
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1286
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eq v3, v4, :cond_5b

    .line 1287
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1288
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1293
    :goto_1e
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1295
    :cond_20
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v5, v0

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5a

    .line 1296
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1299
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v3, :cond_55

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v3, :cond_55

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v3, :cond_55

    aget-char v3, v0, v2

    const v4, 0xfeff

    if-ne v3, v4, :cond_55

    .line 1300
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1301
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1302
    add-int/lit8 p1, p1, 0x1

    .line 1305
    :cond_55
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v3, p1, :cond_20

    .line 1306
    const/4 v2, 0x1

    .line 1309
    :cond_5a
    return v2

    .line 1290
    .end local v1    # "total":I
    :cond_5b
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1e
.end method

.method private isLiteral(C)Z
    .registers 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    sparse-switch p1, :sswitch_data_a

    .line 765
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 751
    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 763
    :sswitch_8
    const/4 v0, 0x0

    goto :goto_4

    .line 745
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

.method private nextNonWhitespace(Z)I
    .registers 12
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1328
    .local v0, "buffer":[C
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1329
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1331
    .local v3, "l":I
    :goto_6
    if-ne v4, v3, :cond_34

    .line 1332
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1333
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_30

    .line 1400
    if-eqz p1, :cond_bf

    .line 1401
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End of input"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1336
    :cond_30
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1337
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1340
    :cond_34
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .local v5, "p":I
    aget-char v1, v0, v4

    .line 1341
    .local v1, "c":I
    const/16 v7, 0xa

    if-ne v1, v7, :cond_46

    .line 1342
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1343
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    move v4, v5

    .line 1344
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_6

    .line 1345
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_46
    const/16 v7, 0x20

    if-eq v1, v7, :cond_c1

    const/16 v7, 0xd

    if-eq v1, v7, :cond_c1

    const/16 v7, 0x9

    if-ne v1, v7, :cond_54

    move v4, v5

    .line 1346
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_6

    .line 1349
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_54
    const/16 v7, 0x2f

    if-ne v1, v7, :cond_a9

    .line 1350
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1351
    if-ne v5, v3, :cond_71

    .line 1352
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1353
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    .line 1354
    .local v2, "charsLoaded":Z
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1355
    if-nez v2, :cond_71

    move v4, v5

    .line 1403
    .end local v1    # "c":I
    .end local v2    # "charsLoaded":Z
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :goto_70
    return v1

    .line 1360
    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_71
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1361
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v7

    .line 1362
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_c4

    move v4, v5

    .line 1382
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_70

    .line 1365
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_7d
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1366
    const-string v7, "*/"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 1367
    const-string v7, "Unterminated comment"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 1369
    :cond_92
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    .line 1370
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1371
    goto/16 :goto_6

    .line 1375
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_9a
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1376
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1377
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1378
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1379
    goto/16 :goto_6

    .line 1384
    .end local v4    # "p":I
    .end local v6    # "peek":C
    .restart local v5    # "p":I
    :cond_a9
    const/16 v7, 0x23

    if-ne v1, v7, :cond_bb

    .line 1385
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1391
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1392
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1393
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1394
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_6

    .line 1396
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_bb
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    move v4, v5

    .line 1397
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_70

    .line 1403
    .end local v1    # "c":I
    :cond_bf
    const/4 v1, -0x1

    goto :goto_70

    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_c1
    move v4, v5

    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto/16 :goto_6

    .line 1362
    :sswitch_data_c4
    .sparse-switch
        0x2a -> :sswitch_7d
        0x2f -> :sswitch_9a
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 13
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    .line 987
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 988
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 990
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_5
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 991
    .local v6, "p":I
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 993
    .local v4, "l":I
    move v8, v6

    .local v8, "start":I
    move v7, v6

    .line 994
    .end local v6    # "p":I
    .local v7, "p":I
    :goto_b
    if-ge v7, v4, :cond_60

    .line 995
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-char v2, v0, v7

    .line 997
    .local v2, "c":I
    if-ne v2, p1, :cond_29

    .line 998
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 999
    sub-int v9, v6, v8

    add-int/lit8 v5, v9, -0x1

    .line 1000
    .local v5, "len":I
    if-nez v1, :cond_21

    .line 1001
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0, v8, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1004
    :goto_20
    return-object v9

    .line 1003
    :cond_21
    invoke-virtual {v1, v0, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_20

    .line 1006
    .end local v5    # "len":I
    :cond_29
    const/16 v9, 0x5c

    if-ne v2, v9, :cond_53

    .line 1007
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1008
    sub-int v9, v6, v8

    add-int/lit8 v5, v9, -0x1

    .line 1009
    .restart local v5    # "len":I
    if-nez v1, :cond_42

    .line 1010
    add-int/lit8 v9, v5, 0x1

    mul-int/lit8 v3, v9, 0x2

    .line 1011
    .local v3, "estimatedLength":I
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1013
    .end local v3    # "estimatedLength":I
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_42
    invoke-virtual {v1, v0, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1014
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1015
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1016
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1017
    move v8, v6

    .end local v5    # "len":I
    :cond_51
    :goto_51
    move v7, v6

    .line 1022
    .end local v6    # "p":I
    .restart local v7    # "p":I
    goto :goto_b

    .line 1018
    .end local v7    # "p":I
    .restart local v6    # "p":I
    :cond_53
    const/16 v9, 0xa

    if-ne v2, v9, :cond_51

    .line 1019
    iget v9, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1020
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_51

    .line 1024
    .end local v2    # "c":I
    .end local v6    # "p":I
    .restart local v7    # "p":I
    :cond_60
    if-nez v1, :cond_6f

    .line 1025
    sub-int v9, v7, v8

    mul-int/lit8 v3, v9, 0x2

    .line 1026
    .restart local v3    # "estimatedLength":I
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1028
    .end local v3    # "estimatedLength":I
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_6f
    sub-int v9, v7, v8

    invoke-virtual {v1, v0, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1029
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1030
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1031
    const-string v9, "Unterminated string"

    invoke-direct {p0, v9}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v9

    throw v9
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1046
    .local v1, "i":I
    :cond_2
    :goto_2
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_2a

    .line 1047
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_68

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1053
    :sswitch_16
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1090
    :cond_19
    :goto_19
    :sswitch_19
    if-nez v0, :cond_5a

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1091
    .local v2, "result":Ljava/lang/String;
    :goto_24
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1092
    return-object v2

    .line 1070
    .end local v2    # "result":Ljava/lang/String;
    :cond_2a
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_38

    .line 1071
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_2

    .line 1079
    :cond_38
    if-nez v0, :cond_45

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1082
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_45
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1083
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1084
    const/4 v1, 0x0

    .line 1085
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_19

    .line 1090
    :cond_5a
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 1047
    nop

    :sswitch_data_68
    .sparse-switch
        0x9 -> :sswitch_19
        0xa -> :sswitch_19
        0xc -> :sswitch_19
        0xd -> :sswitch_19
        0x20 -> :sswitch_19
        0x23 -> :sswitch_16
        0x2c -> :sswitch_19
        0x2f -> :sswitch_16
        0x3a -> :sswitch_19
        0x3b -> :sswitch_16
        0x3d -> :sswitch_16
        0x5b -> :sswitch_19
        0x5c -> :sswitch_16
        0x5d -> :sswitch_19
        0x7b -> :sswitch_19
        0x7d -> :sswitch_19
    .end sparse-switch
.end method

.method private peekKeyword()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 599
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v7, v8

    .line 603
    .local v0, "c":C
    const/16 v7, 0x74

    if-eq v0, v7, :cond_f

    const/16 v7, 0x54

    if-ne v0, v7, :cond_2c

    .line 604
    :cond_f
    const-string v2, "true"

    .line 605
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 606
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 620
    .local v5, "peeking":I
    :goto_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 621
    .local v4, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_19
    if-ge v1, v4, :cond_62

    .line 622
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_4a

    add-int/lit8 v7, v1, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_4a

    move v5, v6

    .line 638
    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :goto_2b
    return v5

    .line 607
    :cond_2c
    const/16 v7, 0x66

    if-eq v0, v7, :cond_34

    const/16 v7, 0x46

    if-ne v0, v7, :cond_3a

    .line 608
    :cond_34
    const-string v2, "false"

    .line 609
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 610
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .restart local v5    # "peeking":I
    goto :goto_14

    .line 611
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_3a
    const/16 v7, 0x6e

    if-eq v0, v7, :cond_42

    const/16 v7, 0x4e

    if-ne v0, v7, :cond_48

    .line 612
    :cond_42
    const-string v2, "null"

    .line 613
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 614
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .restart local v5    # "peeking":I
    goto :goto_14

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_48
    move v5, v6

    .line 616
    goto :goto_2b

    .line 625
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_4a
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v1

    aget-char v0, v7, v8

    .line 626
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_5f

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_5f

    move v5, v6

    .line 627
    goto :goto_2b

    .line 621
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 631
    :cond_62
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_71

    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_80

    :cond_71
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v4

    aget-char v7, v7, v8

    .line 632
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v7

    if-eqz v7, :cond_80

    move v5, v6

    .line 633
    goto :goto_2b

    .line 637
    :cond_80
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 638
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2b
.end method

.method private peekNumber()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 644
    .local v2, "buffer":[C
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 645
    .local v9, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 647
    .local v6, "l":I
    const-wide/16 v12, 0x0

    .line 648
    .local v12, "value":J
    const/4 v8, 0x0

    .line 649
    .local v8, "negative":Z
    const/4 v4, 0x1

    .line 650
    .local v4, "fitsInLong":Z
    const/4 v7, 0x0

    .line 652
    .local v7, "last":I
    const/4 v5, 0x0

    .line 656
    .local v5, "i":I
    :goto_12
    add-int v14, v9, v5

    if-ne v14, v6, :cond_58

    .line 657
    array-length v14, v2

    if-ne v5, v14, :cond_1b

    .line 660
    const/4 v14, 0x0

    .line 740
    .end local v12    # "value":J
    :goto_1a
    return v14

    .line 662
    .restart local v12    # "value":J
    :cond_1b
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v14

    if-nez v14, :cond_50

    .line 731
    :cond_25
    const/4 v14, 0x2

    if-ne v7, v14, :cond_e6

    if-eqz v4, :cond_e6

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v12, v14

    if-nez v14, :cond_32

    if-eqz v8, :cond_e6

    :cond_32
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_3a

    if-nez v8, :cond_e6

    .line 732
    :cond_3a
    if-eqz v8, :cond_e3

    .end local v12    # "value":J
    :goto_3c
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 733
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 734
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1a

    .line 665
    .restart local v12    # "value":J
    :cond_50
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 666
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 669
    :cond_58
    add-int v14, v9, v5

    aget-char v3, v2, v14

    .line 670
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_fe

    .line 705
    const/16 v14, 0x30

    if-lt v3, v14, :cond_67

    const/16 v14, 0x39

    if-le v3, v14, :cond_97

    .line 706
    :cond_67
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 709
    const/4 v14, 0x0

    goto :goto_1a

    .line 672
    :sswitch_71
    if-nez v7, :cond_78

    .line 673
    const/4 v8, 0x1

    .line 674
    const/4 v7, 0x1

    .line 655
    :cond_75
    :goto_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 676
    :cond_78
    const/4 v14, 0x5

    if-ne v7, v14, :cond_7d

    .line 677
    const/4 v7, 0x6

    .line 678
    goto :goto_75

    .line 680
    :cond_7d
    const/4 v14, 0x0

    goto :goto_1a

    .line 683
    :sswitch_7f
    const/4 v14, 0x5

    if-ne v7, v14, :cond_84

    .line 684
    const/4 v7, 0x6

    .line 685
    goto :goto_75

    .line 687
    :cond_84
    const/4 v14, 0x0

    goto :goto_1a

    .line 691
    :sswitch_86
    const/4 v14, 0x2

    if-eq v7, v14, :cond_8c

    const/4 v14, 0x4

    if-ne v7, v14, :cond_8e

    .line 692
    :cond_8c
    const/4 v7, 0x5

    .line 693
    goto :goto_75

    .line 695
    :cond_8e
    const/4 v14, 0x0

    goto :goto_1a

    .line 698
    :sswitch_90
    const/4 v14, 0x2

    if-ne v7, v14, :cond_95

    .line 699
    const/4 v7, 0x3

    .line 700
    goto :goto_75

    .line 702
    :cond_95
    const/4 v14, 0x0

    goto :goto_1a

    .line 711
    :cond_97
    const/4 v14, 0x1

    if-eq v7, v14, :cond_9c

    if-nez v7, :cond_a2

    .line 712
    :cond_9c
    add-int/lit8 v14, v3, -0x30

    neg-int v14, v14

    int-to-long v12, v14

    .line 713
    const/4 v7, 0x2

    goto :goto_75

    .line 714
    :cond_a2
    const/4 v14, 0x2

    if-ne v7, v14, :cond_d6

    .line 715
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_ae

    .line 716
    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 718
    :cond_ae
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v12

    add-int/lit8 v16, v3, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .line 719
    .local v10, "newValue":J
    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-gtz v14, :cond_d0

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-nez v14, :cond_d4

    cmp-long v14, v10, v12

    if-gez v14, :cond_d4

    :cond_d0
    const/4 v14, 0x1

    :goto_d1
    and-int/2addr v4, v14

    .line 721
    move-wide v12, v10

    .line 722
    goto :goto_75

    .line 719
    :cond_d4
    const/4 v14, 0x0

    goto :goto_d1

    .line 722
    .end local v10    # "newValue":J
    :cond_d6
    const/4 v14, 0x3

    if-ne v7, v14, :cond_db

    .line 723
    const/4 v7, 0x4

    goto :goto_75

    .line 724
    :cond_db
    const/4 v14, 0x5

    if-eq v7, v14, :cond_e1

    const/4 v14, 0x6

    if-ne v7, v14, :cond_75

    .line 725
    :cond_e1
    const/4 v7, 0x7

    goto :goto_75

    .line 732
    .end local v3    # "c":C
    :cond_e3
    neg-long v12, v12

    goto/16 :goto_3c

    .line 735
    :cond_e6
    const/4 v14, 0x2

    if-eq v7, v14, :cond_ef

    const/4 v14, 0x4

    if-eq v7, v14, :cond_ef

    const/4 v14, 0x7

    if-ne v7, v14, :cond_fb

    .line 737
    :cond_ef
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 738
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1a

    .line 740
    :cond_fb
    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 670
    :sswitch_data_fe
    .sparse-switch
        0x2b -> :sswitch_7f
        0x2d -> :sswitch_71
        0x2e -> :sswitch_90
        0x45 -> :sswitch_86
        0x65 -> :sswitch_86
    .end sparse-switch
.end method

.method private push(I)V
    .registers 8
    .param p1, "newTop"    # I

    .prologue
    const/4 v5, 0x0

    .line 1264
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v4, v4

    if-ne v3, v4, :cond_35

    .line 1265
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 1266
    .local v2, "newStack":[I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    .line 1267
    .local v0, "newPathIndices":[I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1268
    .local v1, "newPathNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1270
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1271
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1272
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1273
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1275
    .end local v0    # "newPathIndices":[I
    .end local v1    # "newPathNames":[Ljava/lang/String;
    .end local v2    # "newStack":[I
    :cond_35
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v3, v4

    .line 1276
    return-void
.end method

.method private readEscapeCharacter()C
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 1504
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v5, v6, :cond_15

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1505
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1508
    :cond_15
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v5, v6

    .line 1509
    .local v2, "escaped":C
    sparse-switch v2, :sswitch_data_be

    .line 1559
    const-string v5, "Invalid escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1511
    :sswitch_29
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v5, v6, :cond_3e

    invoke-direct {p0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 1512
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1515
    :cond_3e
    const/4 v4, 0x0

    .line 1516
    .local v4, "result":C
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .local v1, "end":I
    :goto_43
    if-ge v3, v1, :cond_9b

    .line 1517
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v3

    .line 1518
    .local v0, "c":C
    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    .line 1519
    const/16 v5, 0x30

    if-lt v0, v5, :cond_5b

    const/16 v5, 0x39

    if-gt v0, v5, :cond_5b

    .line 1520
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 1516
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 1521
    :cond_5b
    const/16 v5, 0x61

    if-lt v0, v5, :cond_6a

    const/16 v5, 0x66

    if-gt v0, v5, :cond_6a

    .line 1522
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_58

    .line 1523
    :cond_6a
    const/16 v5, 0x41

    if-lt v0, v5, :cond_79

    const/16 v5, 0x46

    if-gt v0, v5, :cond_79

    .line 1524
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_58

    .line 1526
    :cond_79
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1529
    .end local v0    # "c":C
    :cond_9b
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1556
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :goto_a1
    return v4

    .line 1533
    :sswitch_a2
    const/16 v4, 0x9

    goto :goto_a1

    .line 1536
    :sswitch_a5
    const/16 v4, 0x8

    goto :goto_a1

    .line 1539
    :sswitch_a8
    const/16 v4, 0xa

    goto :goto_a1

    .line 1542
    :sswitch_ab
    const/16 v4, 0xd

    goto :goto_a1

    .line 1545
    :sswitch_ae
    const/16 v4, 0xc

    goto :goto_a1

    .line 1548
    :sswitch_b1
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1549
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :sswitch_bb
    move v4, v2

    .line 1556
    goto :goto_a1

    .line 1509
    nop

    :sswitch_data_be
    .sparse-switch
        0xa -> :sswitch_b1
        0x22 -> :sswitch_bb
        0x27 -> :sswitch_bb
        0x2f -> :sswitch_bb
        0x5c -> :sswitch_bb
        0x62 -> :sswitch_a5
        0x66 -> :sswitch_ae
        0x6e -> :sswitch_a8
        0x72 -> :sswitch_ab
        0x74 -> :sswitch_a2
        0x75 -> :sswitch_29
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .registers 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1099
    .local v0, "buffer":[C
    :cond_2
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1100
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .local v2, "l":I
    move v4, v3

    .line 1102
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_7
    if-ge v4, v2, :cond_2e

    .line 1103
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v1, v0, v4

    .line 1104
    .local v1, "c":I
    if-ne v1, p1, :cond_12

    .line 1105
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1106
    return-void

    .line 1107
    :cond_12
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_21

    .line 1108
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1109
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1110
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1111
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_1f
    :goto_1f
    move v4, v3

    .line 1116
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_7

    .line 1112
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_21
    const/16 v5, 0xa

    if-ne v1, v5, :cond_1f

    .line 1113
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1114
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1f

    .line 1117
    .end local v1    # "c":I
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_2e
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1118
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1119
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 6
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1435
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1437
    .local v1, "length":I
    :goto_4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v2, v3, :cond_11

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1438
    :cond_11
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v2, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2e

    .line 1439
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1440
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1437
    :cond_27
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_4

    .line 1443
    :cond_2e
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2f
    if-ge v0, v1, :cond_41

    .line 1444
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_27

    .line 1443
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1448
    :cond_41
    const/4 v2, 0x1

    .line 1450
    .end local v0    # "c":I
    :goto_42
    return v2

    :cond_43
    const/4 v2, 0x0

    goto :goto_42
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1419
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1420
    :cond_d
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 1421
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    .line 1422
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1423
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1429
    .end local v0    # "c":C
    :cond_25
    :goto_25
    return-void

    .line 1425
    .restart local v0    # "c":C
    :cond_26
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_25
.end method

.method private skipUnquotedValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1124
    :cond_0
    const/4 v0, 0x0

    .line 1125
    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1e

    .line 1126
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_2c

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1132
    :sswitch_15
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1144
    :sswitch_18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1150
    :goto_1d
    return-void

    .line 1148
    :cond_1e
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1149
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1d

    .line 1126
    nop

    :sswitch_data_2c
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 342
    .local v0, "p":I
    if-nez v0, :cond_9

    .line 343
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 345
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 346
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 347
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput v3, v1, v2

    .line 348
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 352
    return-void

    .line 350
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 378
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 379
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 381
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 382
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 383
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 387
    return-void

    .line 385
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1216
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1217
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1218
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1219
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1220
    return-void
.end method

.method doPeek()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 462
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v6, v7

    .line 463
    .local v1, "peekStack":I
    if-ne v1, v4, :cond_2b

    .line 464
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v3, v6, v7

    .line 549
    :cond_17
    :goto_17
    :pswitch_17
    :sswitch_17
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 550
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_172

    .line 576
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 579
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    .line 580
    .local v2, "result":I
    if-eqz v2, :cond_14f

    .line 594
    .end local v2    # "result":I
    :cond_2a
    :goto_2a
    return v2

    .line 465
    .end local v0    # "c":I
    :cond_2b
    if-ne v1, v3, :cond_42

    .line 467
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 468
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_190

    .line 476
    const-string v3, "Unterminated array"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 470
    :sswitch_3b
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2a

    .line 472
    :sswitch_3e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_17

    .line 478
    .end local v0    # "c":I
    :cond_42
    const/4 v6, 0x3

    if-eq v1, v6, :cond_47

    if-ne v1, v8, :cond_a3

    .line 479
    :cond_47
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v5, v6

    .line 481
    if-ne v1, v8, :cond_66

    .line 482
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 483
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_19e

    .line 491
    const-string v3, "Unterminated object"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 485
    :sswitch_5f
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_2a

    .line 487
    :sswitch_63
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 494
    .end local v0    # "c":I
    :cond_66
    :sswitch_66
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 495
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_1ac

    .line 508
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 509
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 510
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 511
    const/16 v2, 0xe

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2a

    .line 497
    :sswitch_82
    const/16 v2, 0xd

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2a

    .line 499
    :sswitch_87
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 500
    const/16 v2, 0xc

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2a

    .line 502
    :sswitch_8f
    if-eq v1, v8, :cond_95

    .line 503
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_2a

    .line 505
    :cond_95
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 513
    :cond_9c
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 516
    .end local v0    # "c":I
    :cond_a3
    if-ne v1, v2, :cond_dc

    .line 517
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v8, v6, v7

    .line 519
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 520
    .restart local v0    # "c":I
    packed-switch v0, :pswitch_data_1ba

    .line 530
    :pswitch_b4
    const-string v3, "Expected \':\'"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 524
    :pswitch_bb
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 525
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_ca

    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_ca
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v6, v7

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_17

    .line 526
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_17

    .line 532
    .end local v0    # "c":I
    :cond_dc
    const/4 v6, 0x6

    if-ne v1, v6, :cond_f0

    .line 533
    iget-boolean v6, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v6, :cond_e6

    .line 534
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 536
    :cond_e6
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v5, v6, v7

    goto/16 :goto_17

    .line 537
    :cond_f0
    if-ne v1, v5, :cond_10b

    .line 538
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 539
    .restart local v0    # "c":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_100

    .line 540
    const/16 v2, 0x11

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    .line 542
    :cond_100
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 543
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_17

    .line 545
    .end local v0    # "c":I
    :cond_10b
    const/16 v6, 0x8

    if-ne v1, v6, :cond_17

    .line 546
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 552
    .restart local v0    # "c":I
    :sswitch_117
    if-ne v1, v4, :cond_11d

    .line 553
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    .line 559
    :cond_11d
    :sswitch_11d
    if-eq v1, v4, :cond_121

    if-ne v1, v3, :cond_12f

    .line 560
    :cond_121
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 561
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 562
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v5

    goto/16 :goto_2a

    .line 564
    :cond_12f
    const-string v3, "Unexpected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 567
    :sswitch_136
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 568
    const/16 v2, 0x8

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    .line 570
    :sswitch_13f
    const/16 v2, 0x9

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    .line 572
    :sswitch_145
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    .line 574
    :sswitch_14a
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v2, v4

    goto/16 :goto_2a

    .line 584
    .restart local v2    # "result":I
    :cond_14f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    .line 585
    if-nez v2, :cond_2a

    .line 589
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-nez v3, :cond_168

    .line 590
    const-string v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 593
    :cond_168
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 594
    const/16 v2, 0xa

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_2a

    .line 550
    nop

    :sswitch_data_172
    .sparse-switch
        0x22 -> :sswitch_13f
        0x27 -> :sswitch_136
        0x2c -> :sswitch_11d
        0x3b -> :sswitch_11d
        0x5b -> :sswitch_145
        0x5d -> :sswitch_117
        0x7b -> :sswitch_14a
    .end sparse-switch

    .line 468
    :sswitch_data_190
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_3e
        0x5d -> :sswitch_3b
    .end sparse-switch

    .line 483
    :sswitch_data_19e
    .sparse-switch
        0x2c -> :sswitch_66
        0x3b -> :sswitch_63
        0x7d -> :sswitch_5f
    .end sparse-switch

    .line 495
    :sswitch_data_1ac
    .sparse-switch
        0x22 -> :sswitch_82
        0x27 -> :sswitch_87
        0x7d -> :sswitch_8f
    .end sparse-switch

    .line 520
    :pswitch_data_1ba
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_b4
        :pswitch_b4
        :pswitch_bb
    .end packed-switch
.end method

.method public endArray()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 360
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 361
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 363
    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 364
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 365
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 366
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 370
    return-void

    .line 368
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 395
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 396
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 398
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 399
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 400
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 401
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 402
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 406
    return-void

    .line 404
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1469
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .local v2, "size":I
    :goto_e
    if-ge v0, v2, :cond_41

    .line 1470
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_46

    .line 1469
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1473
    :pswitch_1a
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1479
    :pswitch_2e
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1480
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_17

    .line 1481
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1491
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1470
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 413
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 414
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 416
    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public final isLenient()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method locationString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1458
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v2, 0x1

    .line 1459
    .local v1, "line":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 1460
    .local v0, "column":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextBoolean()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 840
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 841
    .local v0, "p":I
    if-nez v0, :cond_9

    .line 842
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 844
    :cond_9
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1c

    .line 845
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 846
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 847
    const/4 v1, 0x1

    .line 851
    :goto_1b
    return v1

    .line 848
    :cond_1c
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2e

    .line 849
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 850
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_1b

    .line 853
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 886
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 887
    .local v0, "p":I
    if-nez v0, :cond_d

    .line 888
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 891
    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_23

    .line 892
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 893
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 894
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v2, v4

    .line 917
    :goto_22
    return-wide v2

    .line 897
    :cond_23
    const/16 v1, 0x10

    if-ne v0, v1, :cond_74

    .line 898
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 899
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 908
    :cond_3b
    :goto_3b
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 909
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 910
    .local v2, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_ba

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 911
    :cond_53
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 912
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 900
    .end local v2    # "result":D
    :cond_74
    if-eq v0, v4, :cond_7a

    const/16 v1, 0x9

    if-ne v0, v1, :cond_88

    .line 901
    :cond_7a
    if-ne v0, v4, :cond_85

    const/16 v1, 0x27

    :goto_7e
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3b

    :cond_85
    const/16 v1, 0x22

    goto :goto_7e

    .line 902
    :cond_88
    const/16 v1, 0xa

    if-ne v0, v1, :cond_93

    .line 903
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3b

    .line 904
    :cond_93
    if-eq v0, v8, :cond_3b

    .line 905
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a double but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 914
    .restart local v2    # "result":D
    :cond_ba
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 915
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 916
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    goto/16 :goto_22
.end method

.method public nextInt()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v10, 0x0

    .line 1163
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1164
    .local v2, "p":I
    if-nez v2, :cond_d

    .line 1165
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1169
    :cond_d
    const/16 v5, 0xf

    if-ne v2, v5, :cond_4e

    .line 1170
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v3, v6

    .line 1171
    .local v3, "result":I
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v8, v3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3e

    .line 1172
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1174
    :cond_3e
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1175
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    move v4, v3

    .line 1209
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_4d
    return v4

    .line 1179
    .end local v4    # "result":I
    :cond_4e
    const/16 v5, 0x10

    if-ne v2, v5, :cond_99

    .line 1180
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1181
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1200
    :goto_66
    const/16 v5, 0xb

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1201
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1202
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 1203
    .restart local v3    # "result":I
    int-to-double v6, v3

    cmpl-double v5, v6, v0

    if-eqz v5, :cond_f3

    .line 1204
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1182
    .end local v0    # "asDouble":D
    .end local v3    # "result":I
    :cond_99
    if-eq v2, v6, :cond_a1

    const/16 v5, 0x9

    if-eq v2, v5, :cond_a1

    if-ne v2, v7, :cond_ce

    .line 1183
    :cond_a1
    if-ne v2, v7, :cond_c0

    .line 1184
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1189
    :goto_a9
    :try_start_a9
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1190
    .restart local v3    # "result":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1191
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_be} :catch_107

    move v4, v3

    .line 1192
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_4d

    .line 1186
    .end local v4    # "result":I
    :cond_c0
    if-ne v2, v6, :cond_cb

    const/16 v5, 0x27

    :goto_c4
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_a9

    :cond_cb
    const/16 v5, 0x22

    goto :goto_c4

    .line 1197
    :cond_ce
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1206
    .restart local v0    # "asDouble":D
    .restart local v3    # "result":I
    :cond_f3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1207
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1208
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    move v4, v3

    .line 1209
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto/16 :goto_4d

    .line 1193
    .end local v0    # "asDouble":D
    .end local v4    # "result":I
    :catch_107
    move-exception v5

    goto/16 :goto_66
.end method

.method public nextLong()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 931
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 932
    .local v2, "p":I
    if-nez v2, :cond_d

    .line 933
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 936
    :cond_d
    const/16 v3, 0xf

    if-ne v2, v3, :cond_22

    .line 937
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 938
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 939
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 972
    :goto_21
    return-wide v4

    .line 942
    :cond_22
    const/16 v3, 0x10

    if-ne v2, v3, :cond_6d

    .line 943
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v3, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 944
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 963
    :goto_3a
    const/16 v3, 0xb

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 964
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 965
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 966
    .local v4, "result":J
    long-to-double v6, v4

    cmpl-double v3, v6, v0

    if-eqz v3, :cond_c8

    .line 967
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 945
    .end local v0    # "asDouble":D
    .end local v4    # "result":J
    :cond_6d
    if-eq v2, v6, :cond_75

    const/16 v3, 0x9

    if-eq v2, v3, :cond_75

    if-ne v2, v7, :cond_a3

    .line 946
    :cond_75
    if-ne v2, v7, :cond_95

    .line 947
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 952
    :goto_7d
    :try_start_7d
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 953
    .restart local v4    # "result":J
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 954
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_92} :catch_93

    goto :goto_21

    .line 956
    .end local v4    # "result":J
    :catch_93
    move-exception v3

    goto :goto_3a

    .line 949
    :cond_95
    if-ne v2, v6, :cond_a0

    const/16 v3, 0x27

    :goto_99
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_7d

    :cond_a0
    const/16 v3, 0x22

    goto :goto_99

    .line 960
    :cond_a3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 969
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":J
    :cond_c8
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 970
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 971
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    goto/16 :goto_21
.end method

.method public nextName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 778
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 779
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 782
    :cond_8
    const/16 v2, 0xe

    if-ne v0, v2, :cond_1c

    .line 783
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "result":Ljava/lang/String;
    :goto_10
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 792
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 793
    return-object v1

    .line 784
    .end local v1    # "result":Ljava/lang/String;
    :cond_1c
    const/16 v2, 0xc

    if-ne v0, v2, :cond_27

    .line 785
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_10

    .line 786
    .end local v1    # "result":Ljava/lang/String;
    :cond_27
    const/16 v2, 0xd

    if-ne v0, v2, :cond_32

    .line 787
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_10

    .line 789
    .end local v1    # "result":Ljava/lang/String;
    :cond_32
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextNull()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 865
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 866
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 868
    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    .line 869
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 870
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 874
    return-void

    .line 872
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 806
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 807
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 810
    :cond_8
    const/16 v2, 0xa

    if-ne v0, v2, :cond_20

    .line 811
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "result":Ljava/lang/String;
    :goto_10
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 828
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 829
    return-object v1

    .line 812
    .end local v1    # "result":Ljava/lang/String;
    :cond_20
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2b

    .line 813
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_10

    .line 814
    .end local v1    # "result":Ljava/lang/String;
    :cond_2b
    const/16 v2, 0x9

    if-ne v0, v2, :cond_36

    .line 815
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_10

    .line 816
    .end local v1    # "result":Ljava/lang/String;
    :cond_36
    const/16 v2, 0xb

    if-ne v0, v2, :cond_40

    .line 817
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 818
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_10

    .line 819
    .end local v1    # "result":Ljava/lang/String;
    :cond_40
    const/16 v2, 0xf

    if-ne v0, v2, :cond_4b

    .line 820
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_10

    .line 821
    .end local v1    # "result":Ljava/lang/String;
    :cond_4b
    const/16 v2, 0x10

    if-ne v0, v2, :cond_62

    .line 822
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 823
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_10

    .line 825
    .end local v1    # "result":Ljava/lang/String;
    :cond_62
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 424
    .local v0, "p":I
    if-nez v0, :cond_8

    .line 425
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 428
    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 457
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 430
    :pswitch_11
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 455
    :goto_13
    return-object v1

    .line 432
    :pswitch_14
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 434
    :pswitch_17
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 436
    :pswitch_1a
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 440
    :pswitch_1d
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 443
    :pswitch_20
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 445
    :pswitch_23
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 450
    :pswitch_26
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 453
    :pswitch_29
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 455
    :pswitch_2c
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 428
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_29
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 327
    return-void
.end method

.method public skipValue()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1228
    const/4 v0, 0x0

    .line 1230
    .local v0, "count":I
    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1231
    .local v1, "p":I
    if-nez v1, :cond_b

    .line 1232
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1235
    :cond_b
    if-ne v1, v5, :cond_2e

    .line 1236
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1237
    add-int/lit8 v0, v0, 0x1

    .line 1256
    :cond_12
    :goto_12
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1257
    if-nez v0, :cond_3

    .line 1259
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1260
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    const-string v4, "null"

    aput-object v4, v2, v3

    .line 1261
    return-void

    .line 1238
    :cond_2e
    if-ne v1, v4, :cond_36

    .line 1239
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1241
    :cond_36
    const/4 v2, 0x4

    if-ne v1, v2, :cond_42

    .line 1242
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1243
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1244
    :cond_42
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4e

    .line 1245
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1246
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1247
    :cond_4e
    const/16 v2, 0xe

    if-eq v1, v2, :cond_56

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5a

    .line 1248
    :cond_56
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_12

    .line 1249
    :cond_5a
    const/16 v2, 0x8

    if-eq v1, v2, :cond_62

    const/16 v2, 0xc

    if-ne v1, v2, :cond_68

    .line 1250
    :cond_62
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_12

    .line 1251
    :cond_68
    const/16 v2, 0x9

    if-eq v1, v2, :cond_70

    const/16 v2, 0xd

    if-ne v1, v2, :cond_76

    .line 1252
    :cond_70
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_12

    .line 1253
    :cond_76
    const/16 v2, 0x10

    if-ne v1, v2, :cond_12

    .line 1254
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
