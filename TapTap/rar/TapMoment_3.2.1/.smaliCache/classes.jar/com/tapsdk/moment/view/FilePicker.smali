.class public Lcom/tapsdk/moment/view/FilePicker;
.super Ljava/lang/Object;
.source "FilePicker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilePicker"


# instance fields
.field private final PREFIX_RESOURCE:Ljava/lang/String;

.field private data:Lorg/json/JSONObject;

.field private pathMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "originData"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "moment://"

    iput-object v0, p0, Lcom/tapsdk/moment/view/FilePicker;->PREFIX_RESOURCE:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 47
    invoke-direct {p0, v0}, Lcom/tapsdk/moment/view/FilePicker;->parseData(Lorg/json/JSONObject;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_12

    .line 50
    goto :goto_16

    .line 48
    :catch_12
    move-exception v1

    .line 49
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_16
    return-void
.end method

.method private checkNull()V
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/tapsdk/moment/view/FilePicker;->pathMaps:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapsdk/moment/view/FilePicker;->pathMaps:Ljava/util/HashMap;

    .line 183
    :cond_b
    return-void
.end method

.method private static createTemporalFileFrom(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "targetFile":Ljava/io/File;
    if-eqz p1, :cond_37

    .line 310
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 312
    .local v1, "buffer":[B
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 316
    :cond_1a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 318
    .local v2, "outputStream":Ljava/io/OutputStream;
    :goto_1f
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2c

    .line 319
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1f

    .line 321
    :cond_2c
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 324
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    .line 327
    goto :goto_37

    .line 325
    :catch_33
    move-exception v3

    .line 326
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 330
    .end local v1    # "buffer":[B
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "read":I
    :cond_37
    :goto_37
    return-object v0
.end method

.method private encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 428
    const-string v0, ""

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_22

    .line 432
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 433
    .local v1, "valid":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_1c} :catch_1d

    return-object v0

    .line 434
    .end local v1    # "valid":Ljava/lang/String;
    :catch_1d
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 437
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    return-object v0

    .line 429
    :cond_22
    :goto_22
    return-object v0
.end method

.method private generateId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 131
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0}, Lcom/tapsdk/moment/view/FilePicker;->checkNull()V

    .line 133
    iget-object v1, p0, Lcom/tapsdk/moment/view/FilePicker;->pathMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_24

    .line 134
    iget-object v1, p0, Lcom/tapsdk/moment/view/FilePicker;->pathMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_24
    return-object v0
.end method

.method private generatePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moment://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileFromContentUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    if-nez p0, :cond_4

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_4
    const/4 v0, 0x0

    .line 249
    .local v0, "file":Ljava/io/File;
    const-string v1, "_data"

    const-string v2, "_display_name"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 251
    .local v8, "contentResolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 253
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_81

    .line 254
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 255
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "filePath":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "fileName":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 258
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 259
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 261
    :cond_45
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_59

    .line 262
    :cond_4d
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_59

    .line 264
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 268
    :cond_59
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-lez v5, :cond_71

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 269
    :cond_71
    invoke-static {p1, p0, v4}, Lcom/tapsdk/moment/view/FilePicker;->getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    :cond_75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 272
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 275
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_81
    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_8a

    :cond_88
    const-string v3, ""

    :goto_8a
    return-object v3
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 441
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 444
    :cond_9
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapsdk/moment/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :cond_1a
    :goto_1a
    const-string v0, ""

    return-object v0
.end method

.method private getFileSize(Ljava/lang/String;)I
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_24

    .line 118
    :cond_a
    invoke-direct {p0}, Lcom/tapsdk/moment/view/FilePicker;->checkNull()V

    .line 119
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "file":Ljava/io/File;
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1f

    long-to-int v0, v2

    return v0

    .line 126
    :cond_1e
    goto :goto_23

    .line 124
    :catch_1f
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_23
    return v0

    .line 116
    .end local v1    # "file":Ljava/io/File;
    :cond_24
    :goto_24
    return v0
.end method

.method private static getFileValidPath(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    const-string v0, ""

    .line 208
    .local v0, "validPath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 209
    move-object v0, p0

    goto :goto_48

    .line 211
    :cond_d
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_65

    .line 215
    :cond_1a
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_66

    :cond_26
    goto :goto_3a

    :sswitch_27
    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v4, 0x0

    goto :goto_3a

    :sswitch_31
    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v4, 0x1

    :goto_3a
    packed-switch v4, :pswitch_data_70

    goto :goto_48

    .line 220
    :pswitch_3e
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 217
    :pswitch_43
    invoke-static {v1, p1}, Lcom/tapsdk/moment/view/FilePicker;->getFileFromContentUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 218
    nop

    .line 224
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_48
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_51

    goto :goto_64

    .line 227
    :cond_51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 229
    return-object v0

    .line 231
    :cond_63
    return-object v2

    .line 225
    .end local v1    # "file":Ljava/io/File;
    :cond_64
    :goto_64
    return-object v2

    .line 213
    .local v1, "uri":Landroid/net/Uri;
    :cond_65
    :goto_65
    return-object v2

    :sswitch_data_66
    .sparse-switch
        0x2ff57c -> :sswitch_31
        0x38b73479 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
    .end packed-switch
.end method

.method public static getFileValidPathArray([Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 9
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 186
    if-eqz p0, :cond_53

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_53

    .line 189
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_3c

    aget-object v3, p0, v2

    .line 191
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/tapsdk/moment/view/FilePicker;->getFileValidPath(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "validPath":Ljava/lang/String;
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_21

    .line 193
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 195
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find invalid path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FilePicker"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "validPath":Ljava/lang/String;
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 198
    :cond_3c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 199
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 202
    .end local v2    # "i":I
    :cond_52
    return-object v1

    .line 187
    .end local v0    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_53
    :goto_53
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMimeTypeByPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 235
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1b

    .line 238
    :cond_9
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    .line 239
    .local v0, "fileNameMap":Ljava/net/FileNameMap;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    .end local v0    # "fileNameMap":Ljava/net/FileNameMap;
    :cond_1b
    :goto_1b
    const-string v0, ""

    return-object v0
.end method

.method private getPathById(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/tapsdk/moment/view/FilePicker;->checkNull()V

    .line 141
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 142
    iget-object v0, p0, Lcom/tapsdk/moment/view/FilePicker;->pathMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 144
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 282
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 284
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 285
    invoke-static {p0, v0, p2}, Lcom/tapsdk/moment/view/FilePicker;->createTemporalFileFrom(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 286
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_28
    .catchall {:try_start_8 .. :try_end_19} :catchall_26

    move-object v1, v3

    .line 292
    .end local v2    # "file":Ljava/io/File;
    if-eqz v0, :cond_25

    .line 293
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_25

    .line 295
    :catch_20
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3f

    .line 297
    :cond_25
    :goto_25
    goto :goto_3f

    .line 291
    :catchall_26
    move-exception v2

    goto :goto_32

    .line 288
    :catch_28
    move-exception v2

    .line 289
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_29
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 292
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_25

    .line 293
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_20

    goto :goto_25

    .line 292
    :goto_32
    if-eqz v0, :cond_3d

    .line 293
    :try_start_34
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3d

    .line 295
    :catch_38
    move-exception v3

    .line 296
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 297
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_3d
    nop

    .line 298
    :goto_3e
    throw v2

    .line 301
    :cond_3f
    :goto_3f
    return-object v1
.end method

.method private parseData(Lorg/json/JSONObject;)V
    .registers 20
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 59
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "video_paths"

    const-string v3, "image_paths"

    const-string v4, "content"

    const-string v5, "desc"

    const-string v6, "title"

    if-nez v2, :cond_11

    .line 60
    return-void

    .line 63
    :cond_11
    :try_start_11
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, v1, Lcom/tapsdk/moment/view/FilePicker;->data:Lorg/json/JSONObject;

    .line 64
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_111

    const-string v8, "size"

    const-string v9, "path"

    const-string v10, "type"

    const-string v11, "id"

    const-string v12, "name"

    if-eqz v7, :cond_83

    .line 65
    :try_start_28
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 66
    .local v3, "imagePaths":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 67
    .local v7, "imageArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_32
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_77

    .line 68
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 69
    .local v14, "path":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v15, "fileJson":Lorg/json/JSONObject;
    invoke-direct {v1, v14}, Lcom/tapsdk/moment/view/FilePicker;->generateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 71
    .local v17, "id":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "imagePaths":Lorg/json/JSONArray;
    .local v16, "imagePaths":Lorg/json/JSONArray;
    invoke-direct {v1, v14}, Lcom/tapsdk/moment/view/FilePicker;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    move-object/from16 v3, v17

    .end local v17    # "id":Ljava/lang/String;
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v15, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    move-object/from16 v17, v4

    invoke-static {v14}, Lcom/tapsdk/moment/view/FilePicker;->getMimeTypeByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-direct {v1, v3}, Lcom/tapsdk/moment/view/FilePicker;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-direct {v1, v14}, Lcom/tapsdk/moment/view/FilePicker;->getFileSize(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 67
    nop

    .end local v3    # "id":Ljava/lang/String;
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "fileJson":Lorg/json/JSONObject;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_32

    .end local v16    # "imagePaths":Lorg/json/JSONArray;
    .local v3, "imagePaths":Lorg/json/JSONArray;
    :cond_77
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 78
    .end local v3    # "imagePaths":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .restart local v16    # "imagePaths":Lorg/json/JSONArray;
    iget-object v3, v1, Lcom/tapsdk/moment/view/FilePicker;->data:Lorg/json/JSONObject;

    const-string v4, "images"

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_85

    .line 64
    .end local v7    # "imageArray":Lorg/json/JSONArray;
    .end local v16    # "imagePaths":Lorg/json/JSONArray;
    :cond_83
    move-object/from16 v17, v4

    .line 80
    :goto_85
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d5

    .line 81
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 82
    .local v0, "videoPaths":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v3, "videoArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_95
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_ce

    .line 84
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "path":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v13, "fileJson":Lorg/json/JSONObject;
    invoke-direct {v1, v7}, Lcom/tapsdk/moment/view/FilePicker;->generateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 87
    .local v14, "id":Ljava/lang/String;
    invoke-direct {v1, v7}, Lcom/tapsdk/moment/view/FilePicker;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v13, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-static {v7}, Lcom/tapsdk/moment/view/FilePicker;->getMimeTypeByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-direct {v1, v14}, Lcom/tapsdk/moment/view/FilePicker;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-direct {v1, v7}, Lcom/tapsdk/moment/view/FilePicker;->getFileSize(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    nop

    .end local v7    # "path":Ljava/lang/String;
    .end local v13    # "fileJson":Lorg/json/JSONObject;
    .end local v14    # "id":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    .line 94
    .end local v4    # "i":I
    :cond_ce
    iget-object v4, v1, Lcom/tapsdk/moment/view/FilePicker;->data:Lorg/json/JSONObject;

    const-string v7, "videos"

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .end local v0    # "videoPaths":Lorg/json/JSONArray;
    .end local v3    # "videoArray":Lorg/json/JSONArray;
    :cond_d5
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 98
    iget-object v0, v1, Lcom/tapsdk/moment/view/FilePicker;->data:Lorg/json/JSONObject;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapsdk/moment/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_e8
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 102
    iget-object v0, v1, Lcom/tapsdk/moment/view/FilePicker;->data:Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapsdk/moment/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_fb
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_110

    .line 106
    iget-object v3, v1, Lcom/tapsdk/moment/view/FilePicker;->data:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tapsdk/moment/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_110} :catch_111

    .line 110
    :cond_110
    goto :goto_115

    .line 108
    :catch_111
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_115
    return-void
.end method


# virtual methods
.method public encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 334
    if-nez p1, :cond_4

    .line 335
    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateWebResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 11
    .param p1, "url"    # Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 382
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_40

    const-string v2, "moment://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_40

    .line 385
    :cond_10
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "id":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/tapsdk/moment/view/FilePicker;->getPathById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "validPath":Ljava/lang/String;
    if-eqz v3, :cond_3f

    .line 390
    invoke-static {v3}, Lcom/tapsdk/moment/view/FilePicker;->getMimeTypeByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "mime":Ljava/lang/String;
    if-eqz v4, :cond_3f

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 392
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_41

    .line 401
    .local v5, "file":Ljava/io/File;
    :try_start_2d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 409
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v7, Landroid/webkit/WebResourceResponse;

    const-string v8, "UTF-8"

    invoke-direct {v7, v4, v8, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_39} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_41

    move-object v0, v7

    .line 411
    .local v0, "resourceResponse":Landroid/webkit/WebResourceResponse;
    return-object v0

    .line 412
    .end local v0    # "resourceResponse":Landroid/webkit/WebResourceResponse;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_3b
    move-exception v6

    .line 413
    .local v6, "e":Ljava/io/IOException;
    :try_start_3c
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_41

    .line 419
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "validPath":Ljava/lang/String;
    .end local v4    # "mime":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3f
    goto :goto_45

    .line 383
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_40
    :goto_40
    return-object v0

    .line 417
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_41
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return-object v0
.end method

.method public getData()Lorg/json/JSONObject;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/tapsdk/moment/view/FilePicker;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFileData(Ljava/lang/String;II)Ljava/lang/String;
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 149
    const-string v0, "TestEncode"

    invoke-direct {p0}, Lcom/tapsdk/moment/view/FilePicker;->checkNull()V

    .line 150
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/FilePicker;->getPathById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_26

    .line 152
    :cond_11
    iget-object v2, p0, Lcom/tapsdk/moment/view/FilePicker;->pathMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Ljava/lang/String;

    .line 153
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/FilePicker;->getPathById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 157
    .local v3, "fileSize":I
    move v4, p3

    .line 158
    .local v4, "validLength":I
    add-int v5, p2, p3

    if-ge v3, v5, :cond_37

    .line 159
    sub-int v4, v3, p2

    .line 162
    :cond_37
    :try_start_37
    new-array v5, v4, [B

    .line 163
    .local v5, "data":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " start time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    .local v6, "bufferedInputStream":Ljava/io/BufferedInputStream;
    int-to-long v7, p2

    invoke-virtual {v6, v7, v8}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 166
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 167
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 168
    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "encodeString":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " end time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_8a} :catch_8b

    .line 171
    return-object v7

    .line 172
    .end local v5    # "data":[B
    .end local v6    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v7    # "encodeString":Ljava/lang/String;
    :catch_8b
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
