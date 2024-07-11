.class final Lcom/appsflyer/internal/ag;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static valueOf:Lcom/appsflyer/internal/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/appsflyer/internal/ag;

    invoke-direct {v0}, Lcom/appsflyer/internal/ag;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ag;->valueOf:Lcom/appsflyer/internal/ag;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static AFInAppEventType()Lcom/appsflyer/internal/ag;
    .registers 1

    .line 33
    sget-object v0, Lcom/appsflyer/internal/ag;->valueOf:Lcom/appsflyer/internal/ag;

    return-object v0
.end method

.method static AFKeystoreWrapper(Ljava/io/File;)Lcom/appsflyer/internal/i;
    .registers 5

    .line 122
    nop

    .line 124
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_39
    .catchall {:try_start_2 .. :try_end_7} :catchall_2b

    .line 125
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [C

    .line 126
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    .line 127
    new-instance v3, Lcom/appsflyer/internal/i;

    invoke-direct {v3, v2}, Lcom/appsflyer/internal/i;-><init>([C)V

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1085
    iput-object p0, v3, Lcom/appsflyer/internal/i;->valueOf:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_29
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 129
    nop

    .line 135
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 139
    goto :goto_25

    .line 138
    :catch_21
    move-exception p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/Throwable;)V

    .line 129
    :goto_25
    return-object v3

    .line 133
    :catchall_26
    move-exception p0

    move-object v0, v1

    goto :goto_2c

    .line 130
    :catch_29
    move-exception p0

    goto :goto_3b

    .line 133
    :catchall_2b
    move-exception p0

    .line 134
    :goto_2c
    if-eqz v0, :cond_37

    .line 135
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_37

    .line 138
    :catch_32
    move-exception v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/Throwable;)V

    goto :goto_38

    .line 139
    :cond_37
    :goto_37
    nop

    .line 140
    :goto_38
    throw p0

    .line 130
    :catch_39
    move-exception p0

    move-object v1, v0

    .line 134
    :goto_3b
    if-eqz v1, :cond_46

    .line 135
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_46

    .line 138
    :catch_41
    move-exception p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/Throwable;)V

    goto :goto_47

    .line 139
    :cond_46
    :goto_46
    nop

    .line 131
    :goto_47
    return-object v0
.end method

.method static valueOf(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "AFRequestCache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static values(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/i;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "AFRequestCache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    nop

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_4c

    .line 108
    :cond_1b
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 109
    array-length v1, p0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_45

    aget-object v3, p0, v2

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found cached request"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 111
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/io/File;)Lcom/appsflyer/internal/i;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_46

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 116
    :cond_45
    goto :goto_4c

    .line 114
    :catch_46
    move-exception p0

    .line 115
    const-string v1, "Could not cache request"

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :goto_4c
    return-object v0
.end method

.method static values(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    .line 2037
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "AFRequestCache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    nop

    .line 145
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 149
    :try_start_2f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 152
    return-void

    .line 150
    :catch_33
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not delete "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :cond_4a
    return-void
.end method
