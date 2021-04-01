.class public Lcom/qq/e/comm/managers/setting/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/managers/setting/c$a;,
        Lcom/qq/e/comm/managers/setting/c$b;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/c;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/qq/e/comm/managers/setting/c;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialize GDTAPPSetting,Json="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/c;->a:Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string v1, "JsonException While build GDTAPPSetting Instance from JSON"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "e_qq_com_setting"

    invoke-static {v0}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_61

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".cfg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_50

    :cond_4e
    move-object v0, v1

    :goto_4f
    return-object v0

    :cond_50
    :try_start_50
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Lcom/qq/e/comm/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/qq/e/comm/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5d} :catch_5e

    goto :goto_4f

    :catch_5e
    move-exception v0

    move-object v0, v1

    goto :goto_4f

    :cond_61
    move-object v0, v1

    goto :goto_4f
.end method

.method public static a(Landroid/content/Context;)Lcom/qq/e/comm/managers/setting/c$a;
    .registers 8

    const/4 v2, 0x0

    const-string v0, "devCloudSetting"

    invoke-static {p0, v0}, Lcom/qq/e/comm/managers/setting/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_b

    move-object v0, v2

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v3

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/qq/e/comm/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v3, Lcom/qq/e/comm/managers/setting/c$a;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/qq/e/comm/managers/setting/c;

    new-instance v6, Ljava/lang/String;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v6, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/qq/e/comm/managers/setting/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0, v5}, Lcom/qq/e/comm/managers/setting/c$a;-><init>(Ljava/lang/String;Lcom/qq/e/comm/managers/setting/c;)V

    move-object v0, v3

    goto :goto_a

    :cond_3d
    const-string v0, "verify local dev cloud setting fail"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_42} :catch_44

    move-object v0, v2

    goto :goto_a

    :catch_44
    move-exception v0

    const-string v1, "exception while loading local dev cloud setting"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "sdkCloudSetting"

    invoke-static {p0, v0, p1, p2}, Lcom/qq/e/comm/managers/setting/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/qq/e/comm/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {p0, p1, p2, p3}, Lcom/qq/e/comm/managers/setting/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const-string v1, "Fail to update Cloud setting due to sig verify fail,name=%s\tsig=%s\tsetting=%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_1e

    :cond_31
    const-string v1, "Fail to update Cloud setting due to sig or setting is empty,name=%s\tsig=%s\tsetting=%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static b(Landroid/content/Context;)Lcom/qq/e/comm/managers/setting/c$b;
    .registers 8

    const/4 v2, 0x0

    const-string v0, "sdkCloudSetting"

    invoke-static {p0, v0}, Lcom/qq/e/comm/managers/setting/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_b

    move-object v0, v2

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v3

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/qq/e/comm/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v3, Lcom/qq/e/comm/managers/setting/c$b;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/qq/e/comm/managers/setting/b;

    new-instance v6, Ljava/lang/String;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v6, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/qq/e/comm/managers/setting/b;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v3, v0, v5, v1}, Lcom/qq/e/comm/managers/setting/c$b;-><init>(Ljava/lang/String;Lcom/qq/e/comm/managers/setting/b;B)V

    move-object v0, v3

    goto :goto_a

    :cond_3e
    const-string v0, "verify local sdk cloud setting fail"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_43} :catch_45

    move-object v0, v2

    goto :goto_a

    :catch_45
    move-exception v0

    const-string v1, "exception while loading local sdk cloud setting"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "devCloudSetting"

    invoke-static {p0, v0, p1, p2}, Lcom/qq/e/comm/managers/setting/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v1, "e_qq_com_setting"

    invoke-static {v1}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_15
    new-instance v4, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".cfg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".sig"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_45
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_5d
    .catchall {:try_start_45 .. :try_end_4a} :catchall_72

    :try_start_4a
    invoke-virtual {v3, p3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_8a
    .catchall {:try_start_4a .. :try_end_52} :catchall_81

    :try_start_52
    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_8e
    .catchall {:try_start_52 .. :try_end_55} :catchall_83

    :try_start_55
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5b} :catch_91

    :goto_5b
    const/4 v0, 0x1

    :cond_5c
    :goto_5c
    return v0

    :catch_5d
    move-exception v1

    move-object v1, v2

    :goto_5f
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_86

    if-eqz v2, :cond_6a

    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    :cond_6a
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_70

    goto :goto_5c

    :catch_70
    move-exception v1

    goto :goto_5c

    :catchall_72
    move-exception v0

    move-object v3, v2

    :goto_74
    if-eqz v3, :cond_79

    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    :cond_79
    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7e} :catch_7f

    :cond_7e
    :goto_7e
    throw v0

    :catch_7f
    move-exception v1

    goto :goto_7e

    :catchall_81
    move-exception v0

    goto :goto_74

    :catchall_83
    move-exception v0

    move-object v2, v1

    goto :goto_74

    :catchall_86
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_74

    :catch_8a
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_5f

    :catch_8e
    move-exception v2

    move-object v2, v3

    goto :goto_5f

    :catch_91
    move-exception v0

    goto :goto_5b
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/c;->a:Lorg/json/JSONObject;

    const-string v2, "ps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_15
    return-object v0

    :cond_16
    move-object v1, v0

    goto :goto_f
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Exception while update setting"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/c;->a:Lorg/json/JSONObject;

    const-string v1, "ps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3a

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/c;->a:Lorg/json/JSONObject;

    const-string v2, "ps"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    :goto_17
    if-eqz v1, :cond_2d

    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_1d
    if-nez v0, :cond_27

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27
    if-nez p2, :cond_2f

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1d

    :cond_2f
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_2c

    :catch_33
    move-exception v0

    const-string v1, "Exception while update setting"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    :cond_3a
    move-object v1, v0

    goto :goto_17
.end method
