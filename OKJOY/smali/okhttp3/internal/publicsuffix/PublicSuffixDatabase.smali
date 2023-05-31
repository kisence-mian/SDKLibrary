.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 40
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 45
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 24
    .param p0, "bytesToSearch"    # [B
    .param p1, "labels"    # [[B
    .param p2, "labelIndex"    # I

    .prologue
    .line 198
    const/4 v13, 0x0

    .line 199
    .local v13, "low":I
    move-object/from16 v0, p0

    array-length v10, v0

    .line 200
    .local v10, "high":I
    const/4 v14, 0x0

    .line 201
    .local v14, "match":Ljava/lang/String;
    :goto_5
    if-ge v13, v10, :cond_c6

    .line 202
    add-int v19, v13, v10

    div-int/lit8 v15, v19, 0x2

    .line 205
    .local v15, "mid":I
    :goto_b
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_1e

    aget-byte v19, p0, v15

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e

    .line 206
    add-int/lit8 v15, v15, -0x1

    goto :goto_b

    .line 208
    :cond_1e
    add-int/lit8 v15, v15, 0x1

    .line 211
    const/4 v8, 0x1

    .line 212
    .local v8, "end":I
    :goto_21
    add-int v19, v15, v8

    aget-byte v19, p0, v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_30

    .line 213
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    .line 215
    :cond_30
    add-int v19, v15, v8

    sub-int v18, v19, v15

    .line 220
    .local v18, "publicSuffixLength":I
    move/from16 v7, p2

    .line 221
    .local v7, "currentLabelIndex":I
    const/4 v6, 0x0

    .line 222
    .local v6, "currentLabelByteIndex":I
    const/16 v16, 0x0

    .line 224
    .local v16, "publicSuffixByteIndex":I
    const/4 v9, 0x0

    .line 227
    .local v9, "expectDot":Z
    :cond_3a
    :goto_3a
    if-eqz v9, :cond_50

    .line 228
    const/16 v3, 0x2e

    .line 229
    .local v3, "byte0":I
    const/4 v9, 0x0

    .line 234
    :goto_3f
    add-int v19, v15, v16

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 236
    .local v4, "byte1":I
    sub-int v5, v3, v4

    .line 237
    .local v5, "compareResult":I
    if-eqz v5, :cond_59

    .line 256
    :cond_4b
    if-gez v5, :cond_7e

    .line 257
    add-int/lit8 v10, v15, -0x1

    goto :goto_5

    .line 231
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    :cond_50
    aget-object v19, p1, v7

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    .restart local v3    # "byte0":I
    goto :goto_3f

    .line 239
    .restart local v4    # "byte1":I
    .restart local v5    # "compareResult":I
    :cond_59
    add-int/lit8 v16, v16, 0x1

    .line 240
    add-int/lit8 v6, v6, 0x1

    .line 241
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4b

    .line 243
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v6, :cond_3a

    .line 246
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_4b

    .line 249
    add-int/lit8 v7, v7, 0x1

    .line 250
    const/4 v6, -0x1

    .line 251
    const/4 v9, 0x1

    goto :goto_3a

    .line 258
    :cond_7e
    if-lez v5, :cond_85

    .line 259
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto :goto_5

    .line 262
    :cond_85
    sub-int v17, v18, v16

    .line 263
    .local v17, "publicSuffixBytesLeft":I
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v12, v19, v6

    .line 264
    .local v12, "labelBytesLeft":I
    add-int/lit8 v11, v7, 0x1

    .local v11, "i":I
    :goto_92
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_a7

    .line 265
    aget-object v19, p1, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 264
    add-int/lit8 v11, v11, 0x1

    goto :goto_92

    .line 268
    :cond_a7
    move/from16 v0, v17

    if-ge v12, v0, :cond_af

    .line 269
    add-int/lit8 v10, v15, -0x1

    goto/16 :goto_5

    .line 270
    :cond_af
    move/from16 v0, v17

    if-le v12, v0, :cond_b9

    .line 271
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_5

    .line 274
    :cond_b9
    new-instance v14, Ljava/lang/String;

    .end local v14    # "match":Ljava/lang/String;
    sget-object v19, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 279
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    .end local v6    # "currentLabelByteIndex":I
    .end local v7    # "currentLabelIndex":I
    .end local v8    # "end":I
    .end local v9    # "expectDot":Z
    .end local v11    # "i":I
    .end local v12    # "labelBytesLeft":I
    .end local v15    # "mid":I
    .end local v16    # "publicSuffixByteIndex":I
    .end local v17    # "publicSuffixBytesLeft":I
    .end local v18    # "publicSuffixLength":I
    .restart local v14    # "match":Ljava/lang/String;
    :cond_c6
    return-object v14
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "domainLabels"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 111
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_25

    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 112
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    .line 121
    :goto_15
    monitor-enter p0

    .line 122
    :try_start_16
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v11, :cond_34

    .line 123
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 126
    :catchall_22
    move-exception v11

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v11

    .line 115
    :cond_25
    :try_start_25
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_15

    .line 116
    :catch_2b
    move-exception v5

    .line 117
    .local v5, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15

    .line 126
    .end local v5    # "ignored":Ljava/lang/InterruptedException;
    :cond_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_22

    .line 129
    array-length v11, p1

    new-array v0, v11, [[B

    .line 130
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_39
    array-length v11, p1

    if-ge v4, v11, :cond_49

    .line 131
    aget-object v11, p1, v4

    sget-object v12, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    aput-object v11, v0, v4

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 136
    :cond_49
    const/4 v1, 0x0

    .line 137
    .local v1, "exactMatch":Ljava/lang/String;
    const/4 v4, 0x0

    :goto_4b
    array-length v11, v0

    if-ge v4, v11, :cond_57

    .line 138
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v11, v0, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "rule":Ljava/lang/String;
    if-eqz v8, :cond_a2

    .line 140
    move-object v1, v8

    .line 150
    .end local v8    # "rule":Ljava/lang/String;
    :cond_57
    const/4 v9, 0x0

    .line 151
    .local v9, "wildcardMatch":Ljava/lang/String;
    array-length v11, v0

    if-le v11, v13, :cond_74

    .line 152
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    .line 153
    .local v7, "labelsWithWildcard":[[B
    const/4 v6, 0x0

    .local v6, "labelIndex":I
    :goto_62
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_74

    .line 154
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v11, v7, v6

    .line 155
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v11, v7, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 156
    .restart local v8    # "rule":Ljava/lang/String;
    if-eqz v8, :cond_a5

    .line 157
    move-object v9, v8

    .line 164
    .end local v6    # "labelIndex":I
    .end local v7    # "labelsWithWildcard":[[B
    .end local v8    # "rule":Ljava/lang/String;
    :cond_74
    const/4 v3, 0x0

    .line 165
    .local v3, "exception":Ljava/lang/String;
    if-eqz v9, :cond_86

    .line 166
    const/4 v6, 0x0

    .restart local v6    # "labelIndex":I
    :goto_78
    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_86

    .line 167
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v11, v0, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 169
    .restart local v8    # "rule":Ljava/lang/String;
    if-eqz v8, :cond_a8

    .line 170
    move-object v3, v8

    .line 176
    .end local v6    # "labelIndex":I
    .end local v8    # "rule":Ljava/lang/String;
    :cond_86
    if-eqz v3, :cond_ab

    .line 178
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v11, "\\."

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_a1
    :goto_a1
    return-object v2

    .line 137
    .end local v3    # "exception":Ljava/lang/String;
    .end local v9    # "wildcardMatch":Ljava/lang/String;
    .restart local v8    # "rule":Ljava/lang/String;
    :cond_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 153
    .restart local v6    # "labelIndex":I
    .restart local v7    # "labelsWithWildcard":[[B
    .restart local v9    # "wildcardMatch":Ljava/lang/String;
    :cond_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 166
    .end local v7    # "labelsWithWildcard":[[B
    .restart local v3    # "exception":Ljava/lang/String;
    :cond_a8
    add-int/lit8 v6, v6, 0x1

    goto :goto_78

    .line 180
    .end local v6    # "labelIndex":I
    .end local v8    # "rule":Ljava/lang/String;
    :cond_ab
    if-nez v1, :cond_b2

    if-nez v9, :cond_b2

    .line 181
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    goto :goto_a1

    .line 184
    :cond_b2
    if-eqz v1, :cond_c8

    .line 185
    const-string v11, "\\."

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "exactRuleLabels":[Ljava/lang/String;
    :goto_ba
    if-eqz v9, :cond_cb

    .line 189
    const-string v11, "\\."

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "wildcardRuleLabels":[Ljava/lang/String;
    :goto_c2
    array-length v11, v2

    array-length v12, v10

    if-gt v11, v12, :cond_a1

    move-object v2, v10

    .line 194
    goto :goto_a1

    .line 186
    .end local v2    # "exactRuleLabels":[Ljava/lang/String;
    .end local v10    # "wildcardRuleLabels":[Ljava/lang/String;
    :cond_c8
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_ba

    .line 190
    .restart local v2    # "exactRuleLabels":[Ljava/lang/String;
    :cond_cb
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_c2
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    const-class v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v7, "publicsuffixes.gz"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 314
    .local v3, "resource":Ljava/io/InputStream;
    if-nez v3, :cond_b

    .line 335
    :goto_a
    return-void

    .line 316
    :cond_b
    new-instance v6, Lokio/GzipSource;

    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v7

    invoke-direct {v6, v7}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 318
    .local v0, "bufferedSource":Lokio/BufferedSource;
    :try_start_18
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 319
    .local v4, "totalBytes":I
    new-array v2, v4, [B

    .line 320
    .local v2, "publicSuffixListBytes":[B
    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V

    .line 322
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 323
    .local v5, "totalExceptionBytes":I
    new-array v1, v5, [B

    .line 324
    .local v1, "publicSuffixExceptionListBytes":[B
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_39

    .line 326
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 329
    monitor-enter p0

    .line 330
    :try_start_2e
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 331
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 332
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3e

    .line 334
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_a

    .line 326
    .end local v1    # "publicSuffixExceptionListBytes":[B
    .end local v2    # "publicSuffixListBytes":[B
    .end local v4    # "totalBytes":I
    .end local v5    # "totalExceptionBytes":I
    :catchall_39
    move-exception v6

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 332
    .restart local v1    # "publicSuffixExceptionListBytes":[B
    .restart local v2    # "publicSuffixListBytes":[B
    .restart local v4    # "totalBytes":I
    .restart local v5    # "totalExceptionBytes":I
    :catchall_3e
    move-exception v6

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v6
.end method

.method private readTheListUninterruptibly()V
    .registers 6

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 292
    .local v1, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_14
    .catchall {:try_start_1 .. :try_end_4} :catchall_29

    .line 303
    if-eqz v1, :cond_d

    .line 304
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 299
    :cond_d
    :goto_d
    return-void

    .line 294
    :catch_e
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/InterruptedIOException;
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 296
    const/4 v1, 0x1

    .line 300
    goto :goto_1

    .line 297
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_14
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_29

    .line 303
    if-eqz v1, :cond_d

    .line 304
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_d

    .line 303
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_29
    move-exception v2

    if-eqz v1, :cond_33

    .line 304
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_33
    throw v2
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x0

    .line 80
    if-nez p1, :cond_d

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "domain == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_d
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "unicodeDomain":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "domainLabels":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "rule":[Ljava/lang/String;
    array-length v7, v0

    array-length v8, v5

    if-ne v7, v8, :cond_29

    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_29

    .line 88
    const/4 v7, 0x0

    .line 107
    :goto_28
    return-object v7

    .line 92
    :cond_29
    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_52

    .line 94
    array-length v7, v0

    array-length v8, v5

    sub-int v2, v7, v8

    .line 100
    .local v2, "firstLabelOffset":I
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "punycodeLabels":[Ljava/lang/String;
    move v3, v2

    .local v3, "i":I
    :goto_41
    array-length v7, v4

    if-ge v3, v7, :cond_59

    .line 103
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 97
    .end local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .end local v2    # "firstLabelOffset":I
    .end local v3    # "i":I
    .end local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_52
    array-length v7, v0

    array-length v8, v5

    add-int/lit8 v8, v8, 0x1

    sub-int v2, v7, v8

    .restart local v2    # "firstLabelOffset":I
    goto :goto_35

    .line 105
    .restart local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_28
.end method

.method setListBytes([B[B)V
    .registers 5
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    .prologue
    .line 339
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 340
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 341
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 343
    return-void
.end method
