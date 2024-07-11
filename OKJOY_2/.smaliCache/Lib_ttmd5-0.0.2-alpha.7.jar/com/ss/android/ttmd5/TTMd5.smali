.class public Lcom/ss/android/ttmd5/TTMd5;
.super Ljava/lang/Object;
.source "TTMd5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;,
        Lcom/ss/android/ttmd5/TTMd5$CHECK_MD5_STATUS;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAMPLE_COUNT:I = 0x9

.field private static final DEFAULT_SAMPLE_SIZE:I = 0x2000

.field private static final HEX_CHARS:[C

.field private static final PROTOCOL:Ljava/lang/String; = "ttmd5"

.field private static final TAG:Ljava/lang/String; = "TTMd5"

.field private static final VERSION_MAIN:I = 0x1

.field private static final VERSION_SUB:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ss/android/ttmd5/TTMd5;->HEX_CHARS:[C

    return-void

    :array_a
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _ttmd5(Lcom/ss/android/ttmd5/IRandomAccess;IJ)Ljava/lang/String;
    .registers 21
    .param p0, "randomAccess"    # Lcom/ss/android/ttmd5/IRandomAccess;
    .param p1, "sampleCount"    # I
    .param p2, "sampleSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    move/from16 v1, p1

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 274
    .local v11, "digester":Ljava/security/MessageDigest;
    if-nez v11, :cond_d

    .line 275
    const-string v0, ""

    return-object v0

    .line 278
    :cond_d
    :try_start_d
    invoke-interface/range {p0 .. p0}, Lcom/ss/android/ttmd5/IRandomAccess;->length()J

    move-result-wide v2

    move-wide v12, v2

    .line 282
    .local v12, "fileLength":J
    if-lez v1, :cond_2c

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_2c

    int-to-long v2, v1

    mul-long v2, v2, p2

    const-wide/16 v4, 0x8

    mul-long/2addr v4, v12

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_c1

    cmp-long v0, v2, v4

    if-lez v0, :cond_28

    goto :goto_2c

    :cond_28
    move-wide/from16 v9, p2

    move v14, v1

    goto :goto_30

    .line 284
    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    .line 285
    .end local p1    # "sampleCount":I
    .local v0, "sampleCount":I
    move-wide v1, v12

    .end local p2    # "sampleSize":J
    .local v1, "sampleSize":J
    move v14, v0

    move-wide v9, v1

    .line 288
    .end local v0    # "sampleCount":I
    .end local v1    # "sampleSize":J
    .local v9, "sampleSize":J
    .local v14, "sampleCount":I
    :goto_30
    const/16 v0, 0x2000

    :try_start_32
    new-array v3, v0, [B

    .line 290
    .local v3, "buffer":[B
    const-wide/16 v15, 0x0

    .line 293
    .local v15, "position":J
    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v4, v15

    move-wide v6, v9

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttmd5/TTMd5;->updateSample(Lcom/ss/android/ttmd5/IRandomAccess;Ljava/security/MessageDigest;[BJJ)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_bd

    .line 297
    const/4 v0, 0x2

    if-le v14, v0, :cond_70

    .line 300
    int-to-long v0, v14

    mul-long/2addr v0, v9

    sub-long v0, v12, v0

    add-int/lit8 v2, v14, -0x1

    int-to-long v4, v2

    :try_start_48
    div-long/2addr v0, v4
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_69

    .line 303
    .local v0, "step":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4a
    add-int/lit8 v4, v14, -0x1

    if-ge v2, v4, :cond_66

    .line 305
    add-long v4, v9, v0

    add-long/2addr v15, v4

    .line 307
    move-object/from16 v4, p0

    move-object v5, v11

    move-object v6, v3

    move-wide v7, v15

    move-wide/from16 p1, v9

    .end local v9    # "sampleSize":J
    .local p1, "sampleSize":J
    :try_start_58
    invoke-static/range {v4 .. v10}, Lcom/ss/android/ttmd5/TTMd5;->updateSample(Lcom/ss/android/ttmd5/IRandomAccess;Ljava/security/MessageDigest;[BJJ)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_60

    .line 303
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v9, p1

    goto :goto_4a

    .line 327
    .end local v0    # "step":J
    .end local v2    # "i":I
    .end local v3    # "buffer":[B
    .end local v12    # "fileLength":J
    .end local v15    # "position":J
    :catchall_60
    move-exception v0

    move-wide/from16 v1, p1

    move-object v3, v0

    goto/16 :goto_c6

    .line 303
    .end local p1    # "sampleSize":J
    .restart local v0    # "step":J
    .restart local v2    # "i":I
    .restart local v3    # "buffer":[B
    .restart local v9    # "sampleSize":J
    .restart local v12    # "fileLength":J
    .restart local v15    # "position":J
    :cond_66
    move-wide/from16 p1, v9

    .end local v9    # "sampleSize":J
    .restart local p1    # "sampleSize":J
    goto :goto_72

    .line 327
    .end local v0    # "step":J
    .end local v2    # "i":I
    .end local v3    # "buffer":[B
    .end local v12    # "fileLength":J
    .end local v15    # "position":J
    .end local p1    # "sampleSize":J
    .restart local v9    # "sampleSize":J
    :catchall_69
    move-exception v0

    move-wide/from16 p1, v9

    move-wide/from16 v1, p1

    move-object v3, v0

    .end local v9    # "sampleSize":J
    .restart local p1    # "sampleSize":J
    goto :goto_c6

    .line 297
    .end local p1    # "sampleSize":J
    .restart local v3    # "buffer":[B
    .restart local v9    # "sampleSize":J
    .restart local v12    # "fileLength":J
    .restart local v15    # "position":J
    :cond_70
    move-wide/from16 p1, v9

    .line 312
    .end local v9    # "sampleSize":J
    .restart local p1    # "sampleSize":J
    :goto_72
    const/4 v0, 0x1

    if-le v14, v0, :cond_82

    .line 314
    move-wide/from16 v1, p1

    .end local p1    # "sampleSize":J
    .restart local v1    # "sampleSize":J
    sub-long v7, v12, v1

    move-object/from16 v4, p0

    move-object v5, v11

    move-object v6, v3

    move-wide v9, v1

    :try_start_7e
    invoke-static/range {v4 .. v10}, Lcom/ss/android/ttmd5/TTMd5;->updateSample(Lcom/ss/android/ttmd5/IRandomAccess;Ljava/security/MessageDigest;[BJJ)V

    goto :goto_84

    .line 312
    .end local v1    # "sampleSize":J
    .restart local p1    # "sampleSize":J
    :cond_82
    move-wide/from16 v1, p1

    .line 317
    .end local p1    # "sampleSize":J
    .restart local v1    # "sampleSize":J
    :goto_84
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/ttmd5/TTMd5;->toHexString([B)Ljava/lang/String;

    move-result-object v4
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_ba

    .line 319
    .local v4, "md5":Ljava/lang/String;
    if-ne v14, v0, :cond_99

    cmp-long v0, v1, v12

    if-nez v0, :cond_99

    .line 322
    nop

    .line 328
    :try_start_93
    invoke-interface/range {p0 .. p0}, Lcom/ss/android/ttmd5/IRandomAccess;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    .line 331
    goto :goto_98

    .line 329
    :catchall_97
    move-exception v0

    .line 322
    :goto_98
    return-object v4

    .line 325
    :cond_99
    :try_start_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v1, v2}, Lcom/ss/android/ttmd5/TTMd5;->generateTTMd5Tag(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_b4
    .catchall {:try_start_99 .. :try_end_b4} :catchall_ba

    .line 328
    :try_start_b4
    invoke-interface/range {p0 .. p0}, Lcom/ss/android/ttmd5/IRandomAccess;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    .line 331
    goto :goto_b9

    .line 329
    :catchall_b8
    move-exception v0

    .line 325
    :goto_b9
    return-object v5

    .line 327
    .end local v3    # "buffer":[B
    .end local v4    # "md5":Ljava/lang/String;
    .end local v12    # "fileLength":J
    .end local v15    # "position":J
    :catchall_ba
    move-exception v0

    move-object v3, v0

    goto :goto_c6

    .end local v1    # "sampleSize":J
    .restart local v9    # "sampleSize":J
    :catchall_bd
    move-exception v0

    move-wide v1, v9

    move-object v3, v0

    .end local v9    # "sampleSize":J
    .restart local v1    # "sampleSize":J
    goto :goto_c6

    .end local v1    # "sampleSize":J
    .end local v14    # "sampleCount":I
    .local p1, "sampleCount":I
    .restart local p2    # "sampleSize":J
    :catchall_c1
    move-exception v0

    move-object v3, v0

    move v14, v1

    move-wide/from16 v1, p2

    .line 328
    .end local p1    # "sampleCount":I
    .end local p2    # "sampleSize":J
    .restart local v1    # "sampleSize":J
    .restart local v14    # "sampleCount":I
    :goto_c6
    :try_start_c6
    invoke-interface/range {p0 .. p0}, Lcom/ss/android/ttmd5/IRandomAccess;->close()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_ca

    .line 331
    goto :goto_cb

    .line 329
    :catchall_ca
    move-exception v0

    .line 331
    :goto_cb
    throw v3
.end method

.method private static _ttmd5(Ljava/io/File;IJ)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "sampleCount"    # I
    .param p2, "sampleSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    new-instance v0, Lcom/ss/android/ttmd5/FileRandomAccess;

    invoke-direct {v0, p0}, Lcom/ss/android/ttmd5/FileRandomAccess;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1, p2, p3}, Lcom/ss/android/ttmd5/TTMd5;->_ttmd5(Lcom/ss/android/ttmd5/IRandomAccess;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkMd5(Ljava/io/File;Ljava/io/File;)I
    .registers 7
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;

    .line 246
    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    .line 247
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_31

    .line 250
    :cond_11
    const/4 v0, 0x0

    if-ne p0, p1, :cond_15

    .line 251
    return v0

    .line 254
    :cond_15
    const-wide/16 v1, 0x2000

    const/16 v3, 0x9

    invoke-static {p0, v3, v1, v2}, Lcom/ss/android/ttmd5/TTMd5;->_ttmd5(Ljava/io/File;IJ)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "ttmd5_1":Ljava/lang/String;
    invoke-static {p1, v3, v1, v2}, Lcom/ss/android/ttmd5/TTMd5;->_ttmd5(Ljava/io/File;IJ)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "ttmd5_2":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2a

    if-eqz v2, :cond_28

    .line 258
    return v0

    .line 260
    :cond_28
    const/4 v0, 0x1

    return v0

    .line 262
    .end local v1    # "ttmd5_2":Ljava/lang/String;
    .end local v4    # "ttmd5_1":Ljava/lang/String;
    :catchall_2a
    move-exception v0

    .line 263
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    .end local v0    # "t":Ljava/lang/Throwable;
    const/16 v0, 0x63

    return v0

    .line 248
    :cond_31
    :goto_31
    const/4 v0, 0x5

    return v0
.end method

.method public static checkMd5(Ljava/lang/String;Ljava/io/File;)I
    .registers 14
    .param p0, "md5"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 172
    if-eqz p0, :cond_9f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_9f

    .line 176
    :cond_a
    if-eqz p1, :cond_9d

    :try_start_c
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_99

    if-nez v0, :cond_14

    goto/16 :goto_9d

    .line 180
    :cond_14
    const/4 v0, -0x1

    .line 181
    .local v0, "sampleCount":I
    const-wide/16 v1, -0x1

    .line 182
    .local v1, "sampleSize":J
    const/4 v3, 0x0

    .line 184
    .local v3, "args":Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    :try_start_18
    invoke-static {p0}, Lcom/ss/android/ttmd5/TTMd5;->parserTTMd5Args(Ljava/lang/String;)Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_96

    move-object v3, v4

    .line 187
    nop

    .line 188
    const/4 v4, 0x1

    if-eqz v3, :cond_33

    .line 189
    :try_start_21
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionMain:I
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$000(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I

    move-result v5

    if-le v5, v4, :cond_29

    .line 191
    const/4 v4, 0x3

    return v4

    .line 193
    :cond_29
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleCount:I
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$100(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I

    move-result v5

    move v0, v5

    .line 194
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleSize:J
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$200(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)J

    move-result-wide v5
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_99

    move-wide v1, v5

    .line 197
    :cond_33
    const/4 v5, 0x0

    .line 200
    .local v5, "fileMd5":Ljava/lang/String;
    :try_start_34
    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/ttmd5/TTMd5;->_ttmd5(Ljava/io/File;IJ)Ljava/lang/String;

    move-result-object v6
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3a

    move-object v5, v6

    .line 203
    goto :goto_3e

    .line 201
    :catchall_3a
    move-exception v6

    .line 202
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_3b
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_3e
    if-eqz v5, :cond_94

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_47

    goto :goto_94

    .line 209
    :cond_47
    const/4 v6, 0x0

    if-eqz v3, :cond_8c

    .line 210
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionMain:I
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$000(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I

    move-result v7

    if-ne v7, v4, :cond_57

    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionSub:I
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$300(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I

    move-result v7

    if-ne v7, v4, :cond_57

    goto :goto_8c

    .line 217
    :cond_57
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->realMd5:Ljava/lang/String;
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$400(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)Ljava/lang/String;

    move-result-object v7
    :try_end_5b
    .catchall {:try_start_3b .. :try_end_5b} :catchall_99

    if-eqz v7, :cond_93

    .line 218
    const/4 v7, 0x0

    .line 220
    .local v7, "fileArgs":Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    :try_start_5e
    invoke-static {v5}, Lcom/ss/android/ttmd5/TTMd5;->parserTTMd5Args(Ljava/lang/String;)Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;

    move-result-object v8
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_64

    move-object v7, v8

    .line 223
    goto :goto_65

    .line 221
    :catchall_64
    move-exception v8

    .line 224
    :goto_65
    if-eqz v7, :cond_93

    .line 225
    :try_start_67
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleCount:I
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$100(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I

    move-result v8

    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleCount:I
    invoke-static {v7}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$100(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I

    move-result v9

    if-ne v8, v9, :cond_93

    .line 226
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleSize:J
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$200(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)J

    move-result-wide v8

    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleSize:J
    invoke-static {v7}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$200(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_93

    .line 227
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->realMd5:Ljava/lang/String;
    invoke-static {v3}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$400(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->realMd5:Ljava/lang/String;
    invoke-static {v7}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$400(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 228
    return v6

    .line 212
    .end local v7    # "fileArgs":Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    :cond_8c
    :goto_8c
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_90
    .catchall {:try_start_67 .. :try_end_90} :catchall_99

    if-eqz v7, :cond_93

    .line 213
    return v6

    .line 233
    :cond_93
    return v4

    .line 206
    :cond_94
    :goto_94
    const/4 v4, 0x6

    return v4

    .line 185
    .end local v5    # "fileMd5":Ljava/lang/String;
    :catchall_96
    move-exception v4

    .line 186
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v5, 0x4

    return v5

    .line 235
    .end local v0    # "sampleCount":I
    .end local v1    # "sampleSize":J
    .end local v3    # "args":Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_99
    move-exception v0

    .line 236
    .local v0, "t":Ljava/lang/Throwable;
    const/16 v1, 0x63

    return v1

    .line 177
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_9d
    :goto_9d
    const/4 v0, 0x5

    return v0

    .line 173
    :cond_9f
    :goto_9f
    const/4 v0, 0x2

    return v0
.end method

.method private static decryptNum(Ljava/lang/String;)J
    .registers 5
    .param p0, "num"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 412
    const/16 v0, 0x10

    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_c

    const-wide/16 v2, 0x1f

    sub-long/2addr v0, v2

    const/4 v2, 0x4

    shr-long/2addr v0, v2

    return-wide v0

    .line 413
    :catchall_c
    move-exception v0

    .line 414
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ttmd5 decryptNum error, num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encryptionNum(J)Ljava/lang/String;
    .registers 6
    .param p0, "num"    # J

    .line 407
    const/4 v0, 0x4

    shl-long v0, p0, v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateTTMd5Tag(IJ)Ljava/lang/String;
    .registers 6
    .param p0, "sampleCount"    # I
    .param p1, "sampleSize"    # J

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ttmd5:1:1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v1, p0

    .line 376
    invoke-static {v1, v2}, Lcom/ss/android/ttmd5/TTMd5;->encryptionNum(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    invoke-static {p1, p2}, Lcom/ss/android/ttmd5/TTMd5;->encryptionNum(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    return-object v0
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 128
    const/4 v0, -0x1

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, v1, v2}, Lcom/ss/android/ttmd5/TTMd5;->ttmd5(Ljava/io/File;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parserTTMd5Args(Ljava/lang/String;)Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    .registers 9
    .param p0, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    const-string v0, "ttmd5:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 382
    return-object v1

    .line 384
    :cond_a
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "part":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "tagDesc":[Ljava/lang/String;
    new-instance v4, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;

    invoke-direct {v4, v1}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;-><init>(Lcom/ss/android/ttmd5/TTMd5$1;)V

    move-object v1, v4

    .line 387
    .local v1, "args":Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionMain:I
    invoke-static {v1, v5}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$002(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;I)I

    .line 388
    # getter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionMain:I
    invoke-static {v1}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$000(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I

    move-result v5

    if-le v5, v4, :cond_30

    .line 390
    return-object v1

    .line 393
    :cond_30
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionSub:I
    invoke-static {v1, v5}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$302(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;I)I

    .line 395
    const/4 v5, 0x3

    aget-object v5, v3, v5

    const-string v6, "g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "sampleDesc":[Ljava/lang/String;
    aget-object v2, v5, v2

    invoke-static {v2}, Lcom/ss/android/ttmd5/TTMd5;->decryptNum(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v2, v6

    # setter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleCount:I
    invoke-static {v1, v2}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$102(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;I)I

    .line 399
    aget-object v2, v5, v4

    invoke-static {v2}, Lcom/ss/android/ttmd5/TTMd5;->decryptNum(Ljava/lang/String;)J

    move-result-wide v6

    # setter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleSize:J
    invoke-static {v1, v6, v7}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$202(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;J)J

    .line 401
    aget-object v2, v0, v4

    # setter for: Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->realMd5:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->access$402(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    return-object v1
.end method

.method private static toHexString([B)Ljava/lang/String;
    .registers 10
    .param p0, "bytes"    # [B

    .line 356
    if-eqz p0, :cond_30

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "off":I
    array-length v1, p0

    .line 361
    .local v1, "len":I
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [C

    .line 363
    .local v2, "buff":[C
    const/4 v3, 0x0

    .line 364
    .local v3, "c":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v1, :cond_27

    .line 365
    add-int v5, v4, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 366
    .local v5, "v":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "c":I
    .local v6, "c":I
    sget-object v7, Lcom/ss/android/ttmd5/TTMd5;->HEX_CHARS:[C

    shr-int/lit8 v8, v5, 0x4

    aget-char v8, v7, v8

    aput-char v8, v2, v3

    .line 367
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "c":I
    .restart local v3    # "c":I
    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v6

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 369
    .end local v4    # "i":I
    .end local v5    # "v":I
    :cond_27
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    mul-int/lit8 v6, v1, 0x2

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 357
    .end local v0    # "off":I
    .end local v1    # "len":I
    .end local v2    # "buff":[C
    .end local v3    # "c":I
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ttmd5(Lcom/ss/android/ttmd5/IRandomAccess;)Ljava/lang/String;
    .registers 4
    .param p0, "randomAccess"    # Lcom/ss/android/ttmd5/IRandomAccess;

    .line 137
    const/16 v0, 0x9

    const-wide/16 v1, 0x2000

    invoke-static {p0, v0, v1, v2}, Lcom/ss/android/ttmd5/TTMd5;->ttmd5(Lcom/ss/android/ttmd5/IRandomAccess;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ttmd5(Lcom/ss/android/ttmd5/IRandomAccess;I)Ljava/lang/String;
    .registers 4
    .param p0, "randomAccess"    # Lcom/ss/android/ttmd5/IRandomAccess;
    .param p1, "sampleCount"    # I

    .line 146
    const-wide/16 v0, 0x2000

    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttmd5/TTMd5;->ttmd5(Lcom/ss/android/ttmd5/IRandomAccess;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ttmd5(Lcom/ss/android/ttmd5/IRandomAccess;IJ)Ljava/lang/String;
    .registers 6
    .param p0, "randomAccess"    # Lcom/ss/android/ttmd5/IRandomAccess;
    .param p1, "sampleCount"    # I
    .param p2, "sampleSize"    # J

    .line 155
    const-string v0, ""

    if-nez p0, :cond_5

    .line 156
    return-object v0

    .line 159
    :cond_5
    :try_start_5
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttmd5/TTMd5;->_ttmd5(Lcom/ss/android/ttmd5/IRandomAccess;IJ)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    return-object v0

    .line 160
    :catchall_a
    move-exception v1

    .line 161
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .end local v1    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static ttmd5(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 95
    const/16 v0, 0x9

    const-wide/16 v1, 0x2000

    invoke-static {p0, v0, v1, v2}, Lcom/ss/android/ttmd5/TTMd5;->ttmd5(Ljava/io/File;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ttmd5(Ljava/io/File;I)Ljava/lang/String;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "sampleCount"    # I

    .line 104
    const-wide/16 v0, 0x2000

    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttmd5/TTMd5;->ttmd5(Ljava/io/File;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ttmd5(Ljava/io/File;IJ)Ljava/lang/String;
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "sampleCount"    # I
    .param p2, "sampleSize"    # J

    .line 114
    const-string v0, ""

    if-eqz p0, :cond_15

    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_15

    .line 117
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttmd5/TTMd5;->_ttmd5(Ljava/io/File;IJ)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_10

    return-object v0

    .line 118
    :catchall_10
    move-exception v1

    .line 119
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .end local v1    # "t":Ljava/lang/Throwable;
    return-object v0

    .line 115
    :cond_15
    :goto_15
    return-object v0
.end method

.method private static updateSample(Lcom/ss/android/ttmd5/IRandomAccess;Ljava/security/MessageDigest;[BJJ)V
    .registers 14
    .param p0, "randomAccess"    # Lcom/ss/android/ttmd5/IRandomAccess;
    .param p1, "digest"    # Ljava/security/MessageDigest;
    .param p2, "buffer"    # [B
    .param p3, "samplePosition"    # J
    .param p5, "sampleSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-interface {p0, p3, p4, p5, p6}, Lcom/ss/android/ttmd5/IRandomAccess;->seek(JJ)V

    .line 342
    const-wide/16 v0, 0x0

    .line 343
    .local v0, "readTotalCount":J
    :goto_5
    cmp-long v2, v0, p5

    if-gez v2, :cond_4c

    .line 344
    sub-long v2, p5, v0

    array-length v4, p2

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 345
    .local v2, "readLen":I
    const/4 v3, 0x0

    invoke-interface {p0, p2, v3, v2}, Lcom/ss/android/ttmd5/IRandomAccess;->read([BII)I

    move-result v4

    .line 346
    .local v4, "readCount":I
    if-lez v4, :cond_1f

    .line 350
    invoke-virtual {p1, p2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 351
    int-to-long v5, v4

    add-long/2addr v0, v5

    goto :goto_5

    .line 347
    :cond_1f
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSample unexpected readCount <= 0, readCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", readTotalCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sampleSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    .end local v2    # "readLen":I
    .end local v4    # "readCount":I
    :cond_4c
    return-void
.end method
