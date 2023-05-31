.class public Lcom/JoyFramework/user/UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static path:Ljava/lang/String;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
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

    sput-object v0, Lcom/JoyFramework/user/UserInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "User"

    iput-object v0, p0, Lcom/JoyFramework/user/UserInfo;->name:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/JoyFramework/user/UserInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    :cond_17
    return-void
.end method

.method private writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 121
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 124
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 125
    return-void
.end method


# virtual methods
.method public isFile()Z
    .registers 4

    .prologue
    .line 33
    .line 35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/user/UserInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/user/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 37
    invoke-virtual {p0}, Lcom/JoyFramework/user/UserInfo;->readUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_30

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 39
    const/4 v0, 0x1

    .line 45
    :goto_2f
    return v0

    .line 40
    :cond_30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 45
    :cond_39
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public readUserInfo()Ljava/lang/String;
    .registers 8

    .prologue
    .line 76
    const-string v2, ""

    .line 77
    const/4 v1, 0x0

    .line 82
    :try_start_3
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/JoyFramework/user/UserInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/JoyFramework/user/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 84
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_32} :catch_77
    .catchall {:try_start_3 .. :try_end_32} :catchall_68

    move-object v1, v0

    .line 86
    :cond_33
    :try_start_33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    :goto_38
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_41} :catch_42
    .catchall {:try_start_33 .. :try_end_41} :catchall_68

    goto :goto_38

    .line 97
    :catch_42
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    .line 99
    :goto_47
    :try_start_47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_74

    .line 102
    if-eqz v2, :cond_4f

    .line 103
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_63

    .line 109
    :cond_4f
    :goto_4f
    return-object v0

    .line 91
    :cond_50
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lcom/JoyFramework/d/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_57} :catch_42
    .catchall {:try_start_50 .. :try_end_57} :catchall_68

    move-result-object v0

    .line 102
    if-eqz v1, :cond_4f

    .line 103
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_4f

    .line 105
    :catch_5e
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 105
    :catch_63
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 101
    :catchall_68
    move-exception v0

    .line 102
    :goto_69
    if-eqz v1, :cond_6e

    .line 103
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 107
    :cond_6e
    :goto_6e
    throw v0

    .line 105
    :catch_6f
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    .line 101
    :catchall_74
    move-exception v0

    move-object v1, v2

    goto :goto_69

    .line 97
    :catch_77
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_47
.end method

.method public saveUserInfo(Lcom/JoyFramework/user/User;)V
    .registers 5

    .prologue
    .line 56
    if-nez p1, :cond_3

    .line 67
    :goto_2
    return-void

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/JoyFramework/user/User;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/user/UserInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/user/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    :try_start_2d
    invoke-direct {p0, v1, v0}, Lcom/JoyFramework/user/UserInfo;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_2

    .line 65
    :catch_31
    move-exception v0

    goto :goto_2
.end method
