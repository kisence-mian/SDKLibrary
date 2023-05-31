.class public Lcom/JoyFramework/crash/LCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static INSTANCE:Lcom/JoyFramework/crash/LCrashHandler; = null

.field static final TAG:Ljava/lang/String; = "CrashHandler"


# instance fields
.field private context:Landroid/content/Context;

.field private defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private formatter:Ljava/text/DateFormat;

.field private infos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->infos:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->formatter:Ljava/text/DateFormat;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/JoyFramework/crash/LCrashHandler;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/JoyFramework/crash/LCrashHandler;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/JoyFramework/crash/LCrashHandler;->INSTANCE:Lcom/JoyFramework/crash/LCrashHandler;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/JoyFramework/crash/LCrashHandler;

    invoke-direct {v0}, Lcom/JoyFramework/crash/LCrashHandler;-><init>()V

    sput-object v0, Lcom/JoyFramework/crash/LCrashHandler;->INSTANCE:Lcom/JoyFramework/crash/LCrashHandler;

    .line 60
    :cond_b
    sget-object v0, Lcom/JoyFramework/crash/LCrashHandler;->INSTANCE:Lcom/JoyFramework/crash/LCrashHandler;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .registers 3

    .prologue
    .line 130
    if-nez p1, :cond_4

    .line 131
    const/4 v0, 0x0

    .line 134
    :goto_3
    return v0

    .line 133
    :cond_4
    invoke-virtual {p0, p1}, Lcom/JoyFramework/crash/LCrashHandler;->saveExToFile(Ljava/lang/Throwable;)V

    .line 134
    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected collectDeviceInfo(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_38

    .line 149
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_5f

    const-string v0, "null"

    .line 150
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/JoyFramework/crash/LCrashHandler;->infos:Ljava/util/Map;

    const-string v3, "versionName"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->infos:Ljava/util/Map;

    const-string v2, "versionCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_38} :catch_62

    .line 157
    :cond_38
    :goto_38
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 158
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_41
    if-ge v1, v3, :cond_96

    aget-object v0, v2, v1

    .line 160
    const/4 v4, 0x1

    :try_start_46
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    iget-object v4, p0, Lcom/JoyFramework/crash/LCrashHandler;->infos:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5b} :catch_7c

    .line 158
    :goto_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    .line 149
    :cond_5f
    :try_start_5f
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_61} :catch_62

    goto :goto_15

    .line 154
    :catch_62
    move-exception v0

    .line 155
    const-string v1, "CrashHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occured when collect package mPaymentinfo, Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 162
    :catch_7c
    move-exception v0

    .line 163
    const-string v4, "CrashHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occured when collect crash mPaymentinfo, Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 166
    :cond_96
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 69
    iput-object p1, p0, Lcom/JoyFramework/crash/LCrashHandler;->context:Landroid/content/Context;

    .line 71
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 73
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/JoyFramework/crash/LCrashHandler;->collectDeviceInfo(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public onDestory()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->context:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->infos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 86
    return-void
.end method

.method public saveExToFile(Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    .line 176
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    const-string v0, "[\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->infos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 183
    :cond_4d
    const-string v0, "]\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 185
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 186
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 188
    :goto_63
    if-eqz v0, :cond_6d

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_63

    .line 193
    :cond_6d
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :try_start_77
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

    iget-object v1, p0, Lcom/JoyFramework/crash/LCrashHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "crash_log_file_name.log"

    .line 201
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b2

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 207
    :cond_b2
    const-string v3, "CrashHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_fd

    .line 210
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 215
    :goto_e9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 218
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 223
    :goto_fc
    return-void

    .line 212
    :cond_fd
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 213
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_103} :catch_104

    goto :goto_e9

    .line 219
    :catch_104
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    const-string v0, "CrashHandler"

    const-string v1, "\u5954\u6e83\u65e5\u5fd7\u5199\u5165\u672c\u5730\u51fa\u9519"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/JoyFramework/crash/LCrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_10

    .line 91
    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 122
    :goto_f
    return-void

    .line 93
    :cond_10
    iget-object v0, p0, Lcom/JoyFramework/crash/LCrashHandler;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_24

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/JoyFramework/crash/a;

    invoke-direct {v1, p0}, Lcom/JoyFramework/crash/a;-><init>(Lcom/JoyFramework/crash/LCrashHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_f

    .line 114
    :cond_24
    const-wide/16 v0, 0xbb8

    :try_start_26
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_35

    .line 118
    :goto_29
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_f

    .line 115
    :catch_35
    move-exception v0

    .line 116
    const-string v1, "CrashHandler"

    const-string v2, "error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method
