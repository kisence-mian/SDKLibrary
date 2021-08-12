.class Lcom/qq/e/comm/managers/setting/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/managers/setting/e$a;
    }
.end annotation


# instance fields
.field protected a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/e/comm/managers/setting/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    :try_start_2d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qq/e/comm/managers/setting/e;->a:Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_34} :catch_35

    goto :goto_4e

    :catch_35
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JsonException While build"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Instance from JSON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/qq/e/comm/managers/setting/e;->a:Lorg/json/JSONObject;

    if-nez p1, :cond_59

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/managers/setting/e;->a:Lorg/json/JSONObject;

    :cond_59
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "e_qq_com_setting"

    invoke-static {v0}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_13

    return-object v2

    :cond_13
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

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

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_ab

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_50

    goto :goto_ab

    :cond_50
    :try_start_50
    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Lcom/qq/e/comm/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7f

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/qq/e/comm/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {v4, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, p0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_7f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "verify "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " setting fail"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_97} :catch_98

    goto :goto_ab

    :catch_98
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception while loading local "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ab
    :goto_ab
    return-object v2
.end method

.method static a(Landroid/content/Context;)Lcom/qq/e/comm/managers/setting/e$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/qq/e/comm/managers/setting/e$a<",
            "Lcom/qq/e/comm/managers/setting/a;",
            ">;"
        }
    .end annotation

    const-string v0, "devCloudSetting"

    invoke-static {p0, v0}, Lcom/qq/e/comm/managers/setting/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance v0, Lcom/qq/e/comm/managers/setting/e$a;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/qq/e/comm/managers/setting/a;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, p0}, Lcom/qq/e/comm/managers/setting/a;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/qq/e/comm/managers/setting/e$a;-><init>(Ljava/lang/String;Ljava/lang/Object;B)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "sdkCloudSetting"

    invoke-static {p0, v0, p1, p2}, Lcom/qq/e/comm/managers/setting/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v0, :cond_31

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/qq/e/comm/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p0, p1, p2, p3}, Lcom/qq/e/comm/managers/setting/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1f
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v4

    aput-object p2, p0, v2

    aput-object p3, p0, v1

    const-string p1, "Fail to update Cloud setting due to sig verify fail,name=%s\tsig=%s\tsetting=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2d
    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return v4

    :cond_31
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v4

    aput-object p2, p0, v2

    aput-object p3, p0, v1

    const-string p1, "Fail to update Cloud setting due to sig or setting is empty,name=%s\tsig=%s\tsetting=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2d
.end method

.method static b(Landroid/content/Context;)Lcom/qq/e/comm/managers/setting/e$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/qq/e/comm/managers/setting/e$a<",
            "Lcom/qq/e/comm/managers/setting/d;",
            ">;"
        }
    .end annotation

    const-string v0, "sdkCloudSetting"

    invoke-static {p0, v0}, Lcom/qq/e/comm/managers/setting/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance v0, Lcom/qq/e/comm/managers/setting/e$a;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/qq/e/comm/managers/setting/d;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, p0}, Lcom/qq/e/comm/managers/setting/d;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/qq/e/comm/managers/setting/e$a;-><init>(Ljava/lang/String;Ljava/lang/Object;B)V

    return-object v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "devCloudSetting"

    invoke-static {p0, v0, p1, p2}, Lcom/qq/e/comm/managers/setting/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "e_qq_com_setting"

    invoke-static {v0}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_14
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cfg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ".sig"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_45
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_70
    .catchall {:try_start_45 .. :try_end_4a} :catchall_6b

    :try_start_4a
    invoke-virtual {p1, p3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance p3, Ljava/io/FileWriter;

    invoke-direct {p3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_67
    .catchall {:try_start_4a .. :try_end_52} :catchall_63

    :try_start_52
    invoke-virtual {p3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_61
    .catchall {:try_start_52 .. :try_end_55} :catchall_5f

    :try_start_55
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V

    invoke-virtual {p3}, Ljava/io/FileWriter;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception p0

    :goto_5d
    const/4 p0, 0x1

    return p0

    :catchall_5f
    move-exception p0

    goto :goto_8a

    :catch_61
    move-exception p0

    goto :goto_69

    :catchall_63
    move-exception p2

    move-object p3, p0

    move-object p0, p2

    goto :goto_8a

    :catch_67
    move-exception p2

    move-object p3, p0

    :goto_69
    move-object p0, p1

    goto :goto_72

    :catchall_6b
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    move-object p1, p3

    goto :goto_8a

    :catch_70
    move-exception p1

    move-object p3, p0

    :goto_72
    :try_start_72
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_86

    if-eqz p0, :cond_80

    :try_start_7a
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    goto :goto_80

    :catch_7e
    move-exception p0

    goto :goto_85

    :cond_80
    :goto_80
    if-eqz p3, :cond_85

    invoke-virtual {p3}, Ljava/io/FileWriter;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_85} :catch_7e

    :cond_85
    :goto_85
    return v1

    :catchall_86
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_8a
    if-eqz p1, :cond_92

    :try_start_8c
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V

    goto :goto_92

    :catch_90
    move-exception p1

    goto :goto_97

    :cond_92
    :goto_92
    if-eqz p3, :cond_97

    invoke-virtual {p3}, Ljava/io/FileWriter;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_97} :catch_90

    :cond_97
    :goto_97
    throw p0
.end method

.method static c(Landroid/content/Context;)Lcom/qq/e/comm/managers/setting/e$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/qq/e/comm/managers/setting/e$a<",
            "Lcom/qq/e/comm/managers/setting/c;",
            ">;"
        }
    .end annotation

    const-string v0, "placementCloudSetting"

    invoke-static {p0, v0}, Lcom/qq/e/comm/managers/setting/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance v0, Lcom/qq/e/comm/managers/setting/e$a;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/qq/e/comm/managers/setting/c;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, p0}, Lcom/qq/e/comm/managers/setting/c;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/qq/e/comm/managers/setting/e$a;-><init>(Ljava/lang/String;Ljava/lang/Object;B)V

    return-object v0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "placementCloudSetting"

    invoke-static {p0, v0, p1, p2}, Lcom/qq/e/comm/managers/setting/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static d(Landroid/content/Context;)V
    .registers 5

    const-string v0, "e_qq_com_setting"

    invoke-static {v0}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placementCloudSetting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".cfg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_34
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_55

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_55
    return-void
.end method
