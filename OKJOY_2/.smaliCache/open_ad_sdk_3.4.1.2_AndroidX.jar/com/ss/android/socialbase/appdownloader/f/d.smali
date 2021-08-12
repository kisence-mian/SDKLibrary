.class public Lcom/ss/android/socialbase/appdownloader/f/d;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->a:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 221
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/ss/android/socialbase/appdownloader/f/d;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/f/d;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_34

    .line 43
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->b()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/d;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 44
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->c()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/d;->e(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    .line 43
    :goto_2e
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/appdownloader/f/d;->a:Ljava/lang/Boolean;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    .line 46
    :cond_34
    monitor-exit v0

    return-void

    .line 41
    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0
.end method

.method public static b()Z
    .registers 1

    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->d()I

    move-result v0

    .line 51
    if-nez v0, :cond_8

    .line 52
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->e()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 60
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_d

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 61
    :catch_d
    move-exception p0

    .line 62
    return v0
.end method

.method public static c()Z
    .registers 3

    .line 128
    const-string v0, "127.0.0.1"

    :try_start_2
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 129
    new-instance v1, Ljava/net/Socket;

    const-string v2, "3237303432"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_16

    .line 130
    const/4 v0, 0x1

    return v0

    .line 131
    :catch_16
    move-exception v0

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 109
    const/4 v0, 0x0

    if-nez p0, :cond_10

    .line 110
    return v0

    .line 111
    :cond_10
    const/4 v1, -0x1

    const-string v2, "plugged"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 112
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method private static d()I
    .registers 7

    .line 68
    nop

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 71
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "726f2e736563757265"

    .line 72
    invoke-static {v5}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    if-eqz v3, :cond_29

    check-cast v3, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_2a

    move-object v0, v3

    .line 76
    :cond_29
    goto :goto_2b

    .line 74
    :catch_2a
    move-exception v3

    .line 77
    :goto_2b
    if-nez v0, :cond_2f

    .line 78
    move v1, v2

    goto :goto_39

    .line 79
    :cond_2f
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 80
    goto :goto_39

    .line 82
    :cond_38
    move v1, v2

    .line 84
    :goto_39
    return v1
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    .line 117
    nop

    .line 118
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 119
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    .line 120
    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private static e()Z
    .registers 7

    .line 88
    nop

    .line 89
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "2f7362696e2f7375"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 90
    const-string v2, "2f73797374656d2f62696e2f7375"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 91
    const-string v2, "2f73797374656d2f7862696e2f7375"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 92
    const-string v2, "2f646174612f6c6f63616c2f7862696e2f7375"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 93
    const-string v2, "2f646174612f6c6f63616c2f62696e2f7375"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 94
    const-string v2, "2f73797374656d2f73642f7862696e2f7375"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 95
    const-string v2, "2f73797374656d2f62696e2f6661696c736166652f7375"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    .line 96
    const-string v2, "2f646174612f6c6f63616c2f7375"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 98
    move v2, v3

    :goto_4e
    if-ge v2, v0, :cond_61

    aget-object v5, v1, v2

    .line 99
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5e

    return v4

    .line 98
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 102
    :cond_61
    return v3
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    .line 140
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->f()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/d;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    .line 143
    :cond_d
    const/4 p0, 0x0

    return p0

    .line 141
    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static f()Z
    .registers 5

    .line 169
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/maps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 173
    :cond_2c
    :goto_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_52

    .line 174
    const-string v4, ".so"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, ".jar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 175
    :cond_43
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 176
    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    goto :goto_2c

    .line 179
    :cond_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 180
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    const-string v2, "636f6d2e73617572696b2e737562737472617465"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 182
    return v3

    .line 184
    :cond_72
    const-string v2, "58706f7365644272696467652e6a6172"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 185
    return v3

    .line 187
    :cond_7f
    const-string v2, "6c696273616e64686f6f6b2e656478702e736f"

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_8e

    if-eqz v1, :cond_8c

    .line 188
    return v3

    .line 190
    :cond_8c
    goto :goto_59

    .line 192
    :cond_8d
    goto :goto_8f

    .line 191
    :catch_8e
    move-exception v0

    .line 193
    :goto_8f
    const/4 v0, 0x0

    return v0
.end method

.method private static f(Landroid/content/Context;)Z
    .registers 6

    .line 197
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 198
    const-string v1, "64652e726f62762e616e64726f69642e78706f736564"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 199
    const-string v1, "636f6d2e746f706a6f686e77752e6d616769736b"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 200
    const-string v1, "696f2e76612e6578706f736564"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 201
    const-string v1, "636f6d2e77696e642e636f74746572"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 202
    const-string v1, "6f72672e6d656f776361742e656478706f7365642e6d616e61676572"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 203
    const-string v1, "6d652e7765697368752e657870"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 204
    const-string v1, "636f6d2e73617572696b2e737562737472617465"

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 197
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    :try_start_5a
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_5e} :catch_62

    if-eqz v1, :cond_61

    .line 211
    return v3

    .line 215
    :cond_61
    goto :goto_66

    .line 213
    :catch_62
    move-exception v1

    .line 214
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 216
    :goto_66
    goto :goto_4e

    .line 217
    :cond_67
    return v2
.end method
