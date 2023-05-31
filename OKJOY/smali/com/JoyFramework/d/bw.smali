.class public Lcom/JoyFramework/d/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "config"

.field private static final c:Ljava/lang/String; = "key_saveUsers"

.field private static final d:Ljava/lang/String; = "key_saveUsers_of_phone"

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    .line 422
    const-string v0, "SwitchUsers"

    sput-object v0, Lcom/JoyFramework/d/bw;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 77
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 7

    .prologue
    .line 91
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 174
    :try_start_1
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 178
    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 203
    :cond_1a
    :goto_1a
    return-object v0

    .line 184
    :cond_1b
    invoke-static {v1}, Lcom/JoyFramework/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Lcom/JoyFramework/d/bw;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 188
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_30
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_30} :catch_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_30} :catch_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_30} :catch_3c

    move-result-object v0

    goto :goto_1a

    .line 195
    :catch_32
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_1a

    .line 197
    :catch_37
    move-exception v1

    .line 198
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 199
    :catch_3c
    move-exception v1

    .line 200
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1a
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 46
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 147
    if-nez p0, :cond_5

    .line 148
    const/4 v0, 0x0

    .line 162
    :goto_4
    return-object v0

    .line 150
    :cond_5
    array-length v0, p0

    if-nez v0, :cond_b

    .line 151
    const-string v0, ""

    goto :goto_4

    .line 153
    :cond_b
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 155
    :goto_12
    array-length v3, p0

    if-ge v0, v3, :cond_31

    .line 156
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_27

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 159
    :cond_27
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 162
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/user/LoginUser;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 464
    const-string v0, ""

    .line 469
    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/d/bw;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 471
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_32} :catch_88
    .catchall {:try_start_3 .. :try_end_32} :catchall_7a

    .line 473
    :goto_32
    :try_start_32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_49
    .catchall {:try_start_32 .. :try_end_37} :catchall_85

    .line 476
    if-nez v2, :cond_3f

    .line 489
    if-eqz v2, :cond_3e

    .line 490
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_81

    .line 496
    :cond_3e
    :goto_3e
    return-object v1

    .line 477
    :cond_3f
    :goto_3f
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 478
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_48} :catch_49
    .catchall {:try_start_3f .. :try_end_48} :catchall_85

    goto :goto_3f

    .line 486
    :catch_49
    move-exception v0

    move-object v0, v2

    .line 489
    :goto_4b
    if-eqz v0, :cond_50

    .line 490
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_77

    :cond_50
    move-object v0, v1

    :cond_51
    :goto_51
    move-object v1, v0

    .line 496
    goto :goto_3e

    .line 480
    :cond_53
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Lcom/JoyFramework/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v3, Lcom/JoyFramework/d/bx;

    invoke-direct {v3}, Lcom/JoyFramework/d/bx;-><init>()V

    .line 484
    invoke-virtual {v3}, Lcom/JoyFramework/d/bx;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 485
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_6f} :catch_49
    .catchall {:try_start_53 .. :try_end_6f} :catchall_85

    .line 489
    if-eqz v2, :cond_51

    .line 490
    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_51

    .line 492
    :catch_75
    move-exception v1

    goto :goto_51

    :catch_77
    move-exception v0

    move-object v0, v1

    .line 495
    goto :goto_51

    .line 488
    :catchall_7a
    move-exception v0

    .line 489
    :goto_7b
    if-eqz v1, :cond_80

    .line 490
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_83

    .line 494
    :cond_80
    :goto_80
    throw v0

    .line 492
    :catch_81
    move-exception v0

    goto :goto_3e

    :catch_83
    move-exception v1

    goto :goto_80

    .line 488
    :catchall_85
    move-exception v0

    move-object v1, v2

    goto :goto_7b

    .line 486
    :catch_88
    move-exception v0

    move-object v0, v1

    goto :goto_4b

    :cond_8b
    move-object v2, v1

    goto :goto_32
.end method

.method public static a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V
    .registers 5

    .prologue
    .line 620
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 637
    :cond_4
    :goto_4
    return-void

    .line 623
    :cond_5
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "\u62d2\u7edd\u8be5\u6743\u9650\uff0c\u4e0b\u6b21\u6253\u5f00\u6e38\u620f\u5c06\u65e0\u6cd5\u83b7\u53d6\u767b\u5f55\u8d26\u53f7\uff0c\u9700\u91cd\u65b0\u8f93\u5165\u8d26\u53f7\u8fdb\u884c\u767b\u5f55"

    new-instance v2, Lcom/JoyFramework/d/by;

    invoke-direct {v2, p1}, Lcom/JoyFramework/d/by;-><init>(Lcom/JoyFramework/d/ba$b;)V

    invoke-static {p0, v0, v1, v2}, Lcom/JoyFramework/d/ba;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V
    .registers 10

    .prologue
    .line 385
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 418
    :cond_4
    :goto_4
    return-void

    .line 388
    :cond_5
    const/4 v2, 0x0

    .line 390
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_64

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_64

    .line 392
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 393
    invoke-virtual {p1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {p1}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-virtual {p1}, Lcom/JoyFramework/user/LoginUser;->getType()Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v6

    .line 397
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    sget-object v5, Lcom/JoyFramework/user/LoginUser$LoginType;->FAST_LOGIN:Lcom/JoyFramework/user/LoginUser$LoginType;

    if-ne v5, v6, :cond_16

    .line 398
    :cond_3e
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 399
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 400
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-static {v1}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;)V

    .line 403
    const/4 v0, 0x1

    .line 410
    :goto_52
    if-nez v0, :cond_4

    .line 411
    if-nez v1, :cond_62

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    :goto_5b
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-static {v0}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_62
    move-object v0, v1

    goto :goto_5b

    :cond_64
    move v0, v2

    goto :goto_52
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    .prologue
    .line 69
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 115
    :try_start_0
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/JoyFramework/d/bw;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/JoyFramework/d/b;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 138
    :goto_2e
    return-void

    .line 135
    :catch_2f
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 507
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 510
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 511
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 512
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/user/LoginUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    if-eqz p0, :cond_66

    .line 431
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 455
    :cond_11
    :goto_11
    return-void

    .line 433
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    .line 436
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/d/bw;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    :try_start_46
    invoke-static {v1, v0}, Lcom/JoyFramework/d/bw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_11

    .line 441
    :catch_4a
    move-exception v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SharedPreUtil.saveSwitchUserListToDisk \u5f02\u5e38 --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_11

    .line 446
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/d/bw;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 450
    :try_start_86
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_11

    .line 451
    :catch_8a
    move-exception v0

    goto :goto_11
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 660
    :cond_6
    :goto_6
    return-void

    .line 645
    :cond_7
    if-eqz p0, :cond_6

    .line 646
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 648
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 650
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    .line 651
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 653
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    :try_start_4a
    invoke-static {v1, v0}, Lcom/JoyFramework/d/bw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_6

    .line 656
    :catch_4e
    move-exception v0

    .line 657
    const-string v1, "\u4fdd\u5b58\u51fa\u9519"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedPreUtil.saveListStringToDisk \u5f02\u5e38 --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 63
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 11

    .prologue
    const/16 v9, 0x46

    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    move-object v0, v2

    .line 240
    :goto_1a
    return-object v0

    .line 217
    :cond_1b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    .line 218
    const/4 v0, 0x0

    :goto_24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 220
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 222
    if-lt v1, v6, :cond_4b

    if-gt v1, v7, :cond_4b

    .line 223
    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x10

    .line 228
    :goto_36
    add-int/lit8 v5, v0, 0x1

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 231
    if-lt v0, v6, :cond_56

    if-gt v0, v7, :cond_56

    .line 232
    add-int/lit8 v0, v0, -0x30

    .line 237
    :goto_42
    add-int/2addr v0, v1

    .line 238
    div-int/lit8 v1, v5, 0x2

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 218
    add-int/lit8 v0, v5, 0x1

    goto :goto_24

    .line 224
    :cond_4b
    if-lt v1, v8, :cond_54

    if-gt v1, v9, :cond_54

    .line 225
    add-int/lit8 v1, v1, -0x37

    mul-int/lit8 v1, v1, 0x10

    goto :goto_36

    :cond_54
    move-object v0, v2

    .line 227
    goto :goto_1a

    .line 233
    :cond_56
    if-lt v0, v8, :cond_5d

    if-gt v0, v9, :cond_5d

    .line 234
    add-int/lit8 v0, v0, -0x37

    goto :goto_42

    :cond_5d
    move-object v0, v2

    .line 236
    goto :goto_1a

    :cond_5f
    move-object v0, v3

    .line 240
    goto :goto_1a
.end method

.method public static b()V
    .registers 4

    .prologue
    .line 519
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 521
    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4c

    .line 522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 525
    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-virtual {v0, v3}, Lcom/JoyFramework/user/LoginUser;->setType(Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 526
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 528
    :cond_32
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    .line 529
    if-nez v0, :cond_3d

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    :cond_3d
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    invoke-static {v0}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;)V

    .line 535
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 537
    :cond_4c
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers_of_phone"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 538
    if-eqz v0, :cond_98

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_98

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 542
    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->PHONE_CODE:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-virtual {v0, v3}, Lcom/JoyFramework/user/LoginUser;->setType(Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 543
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 545
    :cond_7e
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    .line 546
    if-nez v0, :cond_89

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    :cond_89
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 550
    invoke-static {v0}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;)V

    .line 552
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers_of_phone"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 554
    :cond_98
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 250
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 83
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7

    .prologue
    .line 97
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 52
    if-nez p0, :cond_a

    .line 53
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 55
    :cond_a
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 359
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 376
    :cond_6
    :goto_6
    return-void

    .line 362
    :cond_7
    const/4 v1, 0x0

    .line 363
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v2

    .line 364
    if-eqz v2, :cond_38

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_38

    .line 365
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 366
    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 367
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    const/4 v0, 0x1

    .line 373
    :goto_32
    if-eqz v0, :cond_6

    .line 374
    invoke-static {v2}, Lcom/JoyFramework/d/bw;->a(Ljava/util/List;)V

    goto :goto_6

    :cond_38
    move v0, v1

    goto :goto_32
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 663
    .line 665
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 667
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_20} :catch_93
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_20} :catch_72
    .catchall {:try_start_c .. :try_end_20} :catchall_80

    .line 668
    :try_start_20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_25} :catch_3d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_91
    .catchall {:try_start_20 .. :try_end_25} :catchall_8f

    .line 672
    if-nez v2, :cond_33

    .line 687
    if-eqz v2, :cond_2c

    .line 689
    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2e

    :cond_2c
    :goto_2c
    move-object v0, v1

    .line 698
    :cond_2d
    :goto_2d
    return-object v0

    .line 690
    :catch_2e
    move-exception v0

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 673
    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 674
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_91
    .catchall {:try_start_33 .. :try_end_3c} :catchall_8f

    goto :goto_33

    .line 682
    :catch_3d
    move-exception v0

    move-object v0, v2

    .line 687
    :goto_3f
    if-eqz v0, :cond_44

    .line 689
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_6d

    :cond_44
    :goto_44
    move-object v0, v1

    .line 683
    goto :goto_2d

    .line 676
    :cond_46
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-static {v0}, Lcom/JoyFramework/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    new-instance v3, Lcom/JoyFramework/d/bz;

    invoke-direct {v3}, Lcom/JoyFramework/d/bz;-><init>()V

    .line 679
    invoke-virtual {v3}, Lcom/JoyFramework/d/bz;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 680
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_62} :catch_3d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_62} :catch_91
    .catchall {:try_start_46 .. :try_end_62} :catchall_8f

    .line 687
    if-eqz v2, :cond_2d

    .line 689
    :try_start_64
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_2d

    .line 690
    :catch_68
    move-exception v1

    .line 691
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 690
    :catch_6d
    move-exception v0

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 684
    :catch_72
    move-exception v0

    move-object v2, v1

    .line 687
    :goto_74
    if-eqz v2, :cond_79

    .line 689
    :try_start_76
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7b

    :cond_79
    :goto_79
    move-object v0, v1

    .line 685
    goto :goto_2d

    .line 690
    :catch_7b
    move-exception v0

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 687
    :catchall_80
    move-exception v0

    move-object v2, v1

    :goto_82
    if-eqz v2, :cond_87

    .line 689
    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 692
    :cond_87
    :goto_87
    throw v0

    .line 690
    :catch_88
    move-exception v1

    .line 691
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    :cond_8d
    move-object v0, v1

    .line 698
    goto :goto_2d

    .line 687
    :catchall_8f
    move-exception v0

    goto :goto_82

    .line 684
    :catch_91
    move-exception v0

    goto :goto_74

    .line 682
    :catch_93
    move-exception v0

    move-object v0, v1

    goto :goto_3f
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 296
    :cond_c
    :goto_c
    return-void

    .line 271
    :cond_d
    const/4 v2, 0x0

    .line 272
    const-string v0, "key_saveUsers"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 273
    if-eqz v0, :cond_5e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5e

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/JoyFramework/user/LoginUser;

    .line 275
    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 276
    const/4 v2, 0x1

    .line 280
    new-instance v3, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v1, "key_saveUsers"

    invoke-static {p0, v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v2

    .line 291
    :goto_4e
    if-nez v1, :cond_c

    .line 292
    new-instance v1, Lcom/JoyFramework/user/LoginUser;

    invoke-direct {v1, p1, p2}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v1, "key_saveUsers"

    invoke-static {p0, v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 289
    :cond_5e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    goto :goto_4e

    :cond_65
    move v1, v2

    goto :goto_4e
.end method

.method public static c(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 562
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 595
    :cond_7
    :goto_7
    return-void

    .line 565
    :cond_8
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 566
    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_45

    .line 567
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_21
    if-ge v3, v4, :cond_45

    .line 568
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/JoyFramework/user/LoginUser;

    .line 569
    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_82

    .line 571
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 572
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 573
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "key_saveUsers"

    invoke-static {v1, v3, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    :cond_45
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_saveUsers_of_phone"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 581
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 582
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_5d
    if-ge v2, v3, :cond_7

    .line 583
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/JoyFramework/user/LoginUser;

    .line 584
    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 585
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_86

    .line 586
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 587
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 588
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_saveUsers_of_phone"

    invoke-static {v1, v2, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 567
    :cond_82
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_21

    .line 582
    :cond_86
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5d
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 351
    :cond_c
    :goto_c
    return-void

    .line 311
    :cond_d
    const-string v0, "key_saveUsers_of_phone"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 312
    if-eqz v0, :cond_56

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/JoyFramework/user/LoginUser;

    .line 315
    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 320
    new-instance v2, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 322
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v1, "key_saveUsers_of_phone"

    invoke-static {p0, v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 329
    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    new-instance v1, Lcom/JoyFramework/user/LoginUser;

    invoke-direct {v1, p1, p2}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v1, "key_saveUsers_of_phone"

    invoke-static {p0, v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 336
    :cond_69
    const/4 v2, 0x0

    .line 337
    if-eqz v0, :cond_9e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9e

    .line 338
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/JoyFramework/user/LoginUser;

    .line 339
    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 340
    const/4 v1, 0x1

    .line 345
    :goto_8d
    if-eqz v1, :cond_c

    .line 346
    new-instance v1, Lcom/JoyFramework/user/LoginUser;

    invoke-direct {v1, p1, p2}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v1, "key_saveUsers_of_phone"

    invoke-static {p0, v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_9e
    move v1, v2

    goto :goto_8d
.end method
