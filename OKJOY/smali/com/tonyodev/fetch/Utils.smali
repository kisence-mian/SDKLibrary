.class final Lcom/tonyodev/fetch/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static bundleListToHeaderString(Ljava/util/List;Z)Ljava/lang/String;
    .registers 10
    .param p1, "loggingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p0, :cond_5

    .line 444
    const-string v4, "{}"

    .line 474
    .local v4, "headerString":Ljava/lang/String;
    :goto_4
    return-object v4

    .line 446
    .end local v4    # "headerString":Ljava/lang/String;
    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 449
    .local v3, "headerObject":Lorg/json/JSONObject;
    :try_start_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 451
    .local v1, "headerBundle":Landroid/os/Bundle;
    const-string v7, "com.tonyodev.fetch.extra_header_name"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "headerName":Ljava/lang/String;
    const-string v7, "com.tonyodev.fetch.extra_header_value"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "headerValue":Ljava/lang/String;
    if-nez v5, :cond_2a

    .line 455
    const-string v5, ""

    .line 458
    :cond_2a
    if-eqz v2, :cond_e

    .line 459
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_2f} :catch_30

    goto :goto_e

    .line 464
    .end local v1    # "headerBundle":Landroid/os/Bundle;
    .end local v2    # "headerName":Ljava/lang/String;
    .end local v5    # "headerValue":Ljava/lang/String;
    :catch_30
    move-exception v0

    .line 466
    .local v0, "e":Lorg/json/JSONException;
    if-eqz p1, :cond_36

    .line 467
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 470
    :cond_36
    const-string v4, "{}"

    .restart local v4    # "headerString":Ljava/lang/String;
    goto :goto_4

    .line 463
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "headerString":Ljava/lang/String;
    :cond_39
    :try_start_39
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_3c} :catch_30

    move-result-object v4

    .restart local v4    # "headerString":Ljava/lang/String;
    goto :goto_4
.end method

.method static containsRequest(Landroid/database/Cursor;Z)Z
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "closeCursor"    # Z

    .prologue
    .line 479
    if-eqz p0, :cond_f

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 481
    if-eqz p1, :cond_d

    .line 482
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_d
    const/4 v0, 0x1

    .line 488
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static createDirIfNotExist(Ljava/lang/String;)Z
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 197
    .local v0, "created":Z
    :goto_f
    return v0

    .line 195
    .end local v0    # "created":Z
    :cond_10
    const/4 v0, 0x1

    .restart local v0    # "created":Z
    goto :goto_f
.end method

.method static createFileIfNotExist(Ljava/lang/String;)Z
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 184
    .local v0, "created":Z
    :goto_f
    return v0

    .line 181
    .end local v0    # "created":Z
    :cond_10
    const/4 v0, 0x1

    .restart local v0    # "created":Z
    goto :goto_f
.end method

.method static createFileOrThrow(Ljava/lang/String;)V
    .registers 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tonyodev/fetch/Utils;->createDirIfNotExist(Ljava/lang/String;)Z

    move-result v2

    .line 223
    .local v2, "parentDirCreated":Z
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tonyodev/fetch/Utils;->createFileIfNotExist(Ljava/lang/String;)Z

    move-result v1

    .line 225
    .local v1, "fileCreated":Z
    if-eqz v2, :cond_1c

    if-nez v1, :cond_35

    .line 226
    :cond_1c
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File could not be created for the filePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_35
    return-void
.end method

.method static createRequestInfo(Landroid/database/Cursor;Z)Lcom/tonyodev/fetch/request/RequestInfo;
    .registers 20
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 302
    if-eqz p0, :cond_12

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v3, v0, :cond_14

    .line 303
    :cond_12
    const/4 v3, 0x0

    .line 321
    :goto_13
    return-object v3

    .line 306
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 307
    .local v4, "id":J
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 308
    .local v6, "status":I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "url":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, "filePath":Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 311
    .local v14, "error":I
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 312
    .local v12, "fileSize":J
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 313
    .local v16, "priority":I
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 315
    .local v10, "downloadedBytes":J
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "headers":Ljava/lang/String;
    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/tonyodev/fetch/Utils;->headerStringToList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v15

    .line 319
    .local v15, "headersList":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/Header;>;"
    invoke-static {v10, v11, v12, v13}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v9

    .line 321
    .local v9, "progress":I
    new-instance v3, Lcom/tonyodev/fetch/request/RequestInfo;

    invoke-direct/range {v3 .. v16}, Lcom/tonyodev/fetch/request/RequestInfo;-><init>(JILjava/lang/String;Ljava/lang/String;IJJILjava/util/List;I)V

    goto :goto_13
.end method

.method static cursorToQueryResultList(Landroid/database/Cursor;ZZ)Ljava/util/ArrayList;
    .registers 23
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "closeCursor"    # Z
    .param p2, "loggingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v16, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz p0, :cond_d

    :try_start_7
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isClosed()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_db
    .catchall {:try_start_7 .. :try_end_a} :catchall_f3

    move-result v19

    if-eqz v19, :cond_15

    .line 375
    :cond_d
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 376
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_14
    :goto_14
    return-object v16

    .line 336
    :cond_15
    :try_start_15
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 337
    :goto_18
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_ea

    .line 339
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 340
    .local v12, "id":J
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 341
    .local v17, "status":I
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, "url":Ljava/lang/String;
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "filePath":Ljava/lang/String;
    const/16 v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 344
    .local v6, "error":I
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 345
    .local v8, "fileSize":J
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 346
    .local v14, "priority":I
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 348
    .local v4, "downloadedBytes":J
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 349
    .local v10, "headers":Ljava/lang/String;
    move/from16 v0, p2

    invoke-static {v10, v0}, Lcom/tonyodev/fetch/Utils;->headersToBundleList(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v11

    .line 351
    .local v11, "headersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {v4, v5, v8, v9}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v15

    .line 353
    .local v15, "progress":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v19, "com.tonyodev.fetch.extra_id"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 355
    const-string v19, "com.tonyodev.fetch.extra_status"

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v19, "com.tonyodev.fetch.extra_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v19, "com.tonyodev.fetch.extra_file_path"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v19, "com.tonyodev.fetch.extra_error"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const-string v19, "com.tonyodev.fetch.extra_downloaded_bytes"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    const-string v19, "com.tonyodev.fetch.extra_file_size"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 361
    const-string v19, "com.tonyodev.fetch.extra_progress"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    const-string v19, "com.tonyodev.fetch.extra_priority"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string v19, "com.tonyodev.fetch.extra_headers"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 365
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_d9} :catch_db
    .catchall {:try_start_15 .. :try_end_d9} :catchall_f3

    goto/16 :goto_18

    .line 369
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "downloadedBytes":J
    .end local v6    # "error":I
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "fileSize":J
    .end local v10    # "headers":Ljava/lang/String;
    .end local v11    # "headersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v12    # "id":J
    .end local v14    # "priority":I
    .end local v15    # "progress":I
    .end local v17    # "status":I
    .end local v18    # "url":Ljava/lang/String;
    :catch_db
    move-exception v3

    .line 371
    .local v3, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_e1

    .line 372
    :try_start_de
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_f3

    .line 375
    :cond_e1
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 376
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_14

    .line 375
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_ea
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 376
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_14

    .line 375
    :catchall_f3
    move-exception v19

    if-eqz p0, :cond_fb

    if-eqz p1, :cond_fb

    .line 376
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_fb
    throw v19
.end method

.method static cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;
    .registers 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "closeCursor"    # Z
    .param p2, "loggingEnabled"    # Z

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 249
    .local v1, "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    if-eqz p0, :cond_10

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_29
    .catchall {:try_start_3 .. :try_end_c} :catchall_37

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_19

    .line 261
    :cond_10
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 262
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_17
    move-object v2, v1

    .line 266
    .end local v1    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    .local v2, "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :goto_18
    return-object v2

    .line 253
    .end local v2    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    .restart local v1    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :cond_19
    :try_start_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    invoke-static {p0, p2}, Lcom/tonyodev/fetch/Utils;->createRequestInfo(Landroid/database/Cursor;Z)Lcom/tonyodev/fetch/request/RequestInfo;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_29
    .catchall {:try_start_19 .. :try_end_1f} :catchall_37

    move-result-object v1

    .line 261
    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 262
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_27
    :goto_27
    move-object v2, v1

    .line 266
    .end local v1    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    .restart local v2    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    goto :goto_18

    .line 255
    .end local v2    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    .restart local v1    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :catch_29
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_2f

    .line 258
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 261
    :cond_2f
    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 262
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_37
    move-exception v3

    if-eqz p0, :cond_3f

    if-eqz p1, :cond_3f

    .line 262
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v3
.end method

.method static cursorToRequestInfoList(Landroid/database/Cursor;ZZ)Ljava/util/List;
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "closeCursor"    # Z
    .param p2, "loggingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/RequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/RequestInfo;>;"
    if-eqz p0, :cond_14

    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_30
    .catchall {:try_start_7 .. :try_end_10} :catchall_46

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1c

    .line 292
    :cond_14
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 293
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_1b
    :goto_1b
    return-object v1

    .line 279
    :cond_1c
    :try_start_1c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 280
    :goto_1f
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 282
    invoke-static {p0, p2}, Lcom/tonyodev/fetch/Utils;->createRequestInfo(Landroid/database/Cursor;Z)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_30
    .catchall {:try_start_1c .. :try_end_2f} :catchall_46

    goto :goto_1f

    .line 286
    :catch_30
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_36

    .line 289
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_46

    .line 292
    :cond_36
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 293
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 293
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 292
    :catchall_46
    move-exception v2

    if-eqz p0, :cond_4e

    if-eqz p1, :cond_4e

    .line 293
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v2
.end method

.method static deleteFile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method static fileExist(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static generateRequestId()J
    .registers 2

    .prologue
    .line 385
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getFileSize(Ljava/lang/String;)J
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method static getProgress(JJ)I
    .registers 8
    .param p0, "downloadedBytes"    # J
    .param p2, "fileSize"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 89
    cmp-long v0, p2, v2

    if-ltz v0, :cond_a

    cmp-long v0, p0, v2

    if-gez v0, :cond_c

    .line 90
    :cond_a
    const/4 v0, 0x0

    .line 94
    :goto_b
    return v0

    .line 91
    :cond_c
    cmp-long v0, p0, p2

    if-ltz v0, :cond_13

    .line 92
    const/16 v0, 0x64

    goto :goto_b

    .line 94
    :cond_13
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_b
.end method

.method static hasIntervalElapsed(JJJ)Z
    .registers 10
    .param p0, "startTime"    # J
    .param p2, "stopTime"    # J
    .param p4, "onUpdateInterval"    # J

    .prologue
    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v2, p2, p0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-ltz v0, :cond_e

    .line 81
    const/4 v0, 0x1

    .line 84
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static headerListToString(Ljava/util/List;Z)Ljava/lang/String;
    .registers 9
    .param p1, "loggingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/Header;>;"
    if-nez p0, :cond_5

    .line 101
    const-string v3, "{}"

    .line 124
    :goto_4
    return-object v3

    .line 108
    :cond_5
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v2, "headerObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch/request/Header;

    .line 111
    .local v1, "header":Lcom/tonyodev/fetch/request/Header;
    invoke-virtual {v1}, Lcom/tonyodev/fetch/request/Header;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tonyodev/fetch/request/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_25} :catch_26

    goto :goto_e

    .line 115
    .end local v1    # "header":Lcom/tonyodev/fetch/request/Header;
    .end local v2    # "headerObject":Lorg/json/JSONObject;
    :catch_26
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    if-eqz p1, :cond_2c

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 121
    :cond_2c
    const-string v3, "{}"

    .local v3, "headerString":Ljava/lang/String;
    goto :goto_4

    .line 114
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "headerString":Ljava/lang/String;
    .restart local v2    # "headerObject":Lorg/json/JSONObject;
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_32} :catch_26

    move-result-object v3

    .restart local v3    # "headerString":Ljava/lang/String;
    goto :goto_4
.end method

.method static headerStringToList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .param p0, "headers"    # Ljava/lang/String;
    .param p1, "loggingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "headerList":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/Header;>;"
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 136
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "key":Ljava/lang/String;
    new-instance v5, Lcom/tonyodev/fetch/request/Header;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/tonyodev/fetch/request/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_e

    .line 141
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_27
    move-exception v0

    .line 143
    .local v0, "e":Lorg/json/JSONException;
    if-eqz p1, :cond_2d

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2d
    return-object v1
.end method

.method static headersToBundleList(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 10
    .param p0, "headers"    # Ljava/lang/String;
    .param p1, "loggingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v2, "headerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez p0, :cond_8

    .line 436
    :cond_7
    :goto_7
    return-object v2

    .line 416
    :cond_8
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 417
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 419
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 420
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 422
    .local v4, "key":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "com.tonyodev.fetch.extra_header_name"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v6, "com.tonyodev.fetch.extra_header_value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_33} :catch_34

    goto :goto_11

    .line 429
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_34
    move-exception v1

    .line 431
    .local v1, "e":Lorg/json/JSONException;
    if-eqz p1, :cond_7

    .line 432
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const-string v2, "connectivity"

    .line 167
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 168
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 169
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method static isOnWiFi(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    const-string v4, "connectivity"

    .line 154
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 155
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 157
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 158
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1d

    .line 161
    :goto_1c
    return v2

    :cond_1d
    move v2, v3

    .line 158
    goto :goto_1c

    :cond_1f
    move v2, v3

    .line 161
    goto :goto_1c
.end method

.method static sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V
    .registers 13
    .param p0, "broadcastManager"    # Landroid/support/v4/content/LocalBroadcastManager;
    .param p1, "id"    # J
    .param p3, "status"    # I
    .param p4, "progress"    # I
    .param p5, "downloadedBytes"    # J
    .param p7, "fileSize"    # J
    .param p9, "error"    # I

    .prologue
    .line 391
    if-nez p0, :cond_3

    .line 404
    :goto_2
    return-void

    .line 395
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tonyodev.fetch.event_action_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 397
    const-string v1, "com.tonyodev.fetch.extra_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v1, "com.tonyodev.fetch.extra_progress"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v1, "com.tonyodev.fetch.extra_downloaded_bytes"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 400
    const-string v1, "com.tonyodev.fetch.extra_file_size"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 401
    const-string v1, "com.tonyodev.fetch.extra_error"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2
.end method

.method static throwIfFetchTaskNull(Lcom/tonyodev/fetch/callback/FetchTask;)V
    .registers 3
    .param p0, "fetchTask"    # Lcom/tonyodev/fetch/callback/FetchTask;

    .prologue
    .line 56
    if-nez p0, :cond_a

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FetchTask cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_a
    return-void
.end method

.method static throwIfInvalidStatus(I)V
    .registers 4
    .param p0, "status"    # I

    .prologue
    .line 63
    sparse-switch p0, :sswitch_data_20

    .line 73
    new-instance v0, Lcom/tonyodev/fetch/exception/InvalidStatusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x72

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch/exception/InvalidStatusException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 71
    :sswitch_1e
    return-void

    .line 63
    nop

    :sswitch_data_20
    .sparse-switch
        -0x384 -> :sswitch_1e
        0x384 -> :sswitch_1e
        0x385 -> :sswitch_1e
        0x386 -> :sswitch_1e
        0x387 -> :sswitch_1e
        0x388 -> :sswitch_1e
        0x389 -> :sswitch_1e
    .end sparse-switch
.end method

.method static throwIfInvalidUrl(Ljava/lang/String;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_1a

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 495
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_33
    return-void
.end method

.method static throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V
    .registers 4
    .param p0, "fetch"    # Lcom/tonyodev/fetch/Fetch;

    .prologue
    .line 232
    if-nez p0, :cond_a

    .line 233
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Fetch cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_a
    invoke-virtual {p0}, Lcom/tonyodev/fetch/Fetch;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 237
    new-instance v0, Lcom/tonyodev/fetch/exception/NotUsableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused after calling its release() method.Call Fetch.getInstance() for a new instance of Fetch."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x73

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch/exception/NotUsableException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 241
    :cond_35
    return-void
.end method
