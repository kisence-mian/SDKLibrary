.class public final Lcom/uc/crashsdk/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/uc/crashsdk/export/ICrashClient;

.field private static b:I

.field private static volatile c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    .line 18
    const/4 v1, 0x3

    sput v1, Lcom/uc/crashsdk/d;->b:I

    .line 143
    sput-object v0, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    .line 144
    sput-object v0, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    .line 145
    sput-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    .line 146
    sput-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 73
    sget-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v0, :cond_d

    .line 75
    :try_start_4
    invoke-interface {v0, p0}, Lcom/uc/crashsdk/export/ICrashClient;->onBeforeUploadLog(Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object p0

    .line 76
    :catchall_9
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 80
    :cond_d
    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 135
    sget-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v0, :cond_9

    .line 136
    invoke-interface {v0, p0, p1}, Lcom/uc/crashsdk/export/ICrashClient;->onGetCallbackInfo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public static a(Lcom/uc/crashsdk/export/ICrashClient;)V
    .registers 1

    .line 22
    sput-object p0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .registers 8

    .line 110
    sget-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v0, :cond_7

    .line 111
    invoke-interface {v0, p0, p1, p2}, Lcom/uc/crashsdk/export/ICrashClient;->onAddCrashStats(Ljava/lang/String;II)V

    .line 114
    :cond_7
    sget-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    if-eqz v0, :cond_42

    .line 115
    sget-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    monitor-enter v0

    .line 116
    :try_start_e
    sget-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_3f

    .line 119
    :try_start_20
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 120
    const-string v4, "processName"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v4, "key"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v4, "count"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_38

    .line 127
    goto :goto_14

    .line 125
    :catchall_38
    move-exception v2

    :try_start_39
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 128
    goto :goto_14

    .line 129
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_3f

    throw p0

    .line 131
    :cond_42
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 27
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 28
    const-string p0, "onLogGenerated file name is null!"

    const-string p1, "crashsdk"

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void

    .line 32
    :cond_f
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 33
    sget-object v1, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v1, :cond_32

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    if-eqz v0, :cond_28

    .line 37
    :try_start_22
    sget-object v2, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    invoke-interface {v2, v1, p2}, Lcom/uc/crashsdk/export/ICrashClient;->onLogGenerated(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_32

    .line 39
    :cond_28
    sget-object v2, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    invoke-interface {v2, p1, v1, p2}, Lcom/uc/crashsdk/export/ICrashClient;->onClientProcessLogGenerated(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2e

    .line 44
    goto :goto_32

    .line 42
    :catchall_2e
    move-exception v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 47
    :cond_32
    :goto_32
    sget-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    .line 48
    if-nez v0, :cond_38

    .line 49
    sget-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    .line 51
    :cond_38
    if-eqz v1, :cond_6f

    .line 52
    monitor-enter v1

    .line 53
    :try_start_3b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/ValueCallback;
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_6c

    .line 56
    :try_start_4b
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v5, "filePathName"

    invoke-virtual {v4, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-nez v0, :cond_5c

    .line 59
    const-string v5, "processName"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_5c
    const-string v5, "logType"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {v3, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_65

    .line 66
    goto :goto_3f

    .line 64
    :catchall_65
    move-exception v3

    :try_start_66
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 67
    goto :goto_3f

    .line 68
    :cond_6a
    monitor-exit v1

    return-void

    :catchall_6c
    move-exception p0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6c

    throw p0

    .line 70
    :cond_6f
    return-void
.end method

.method public static a(Z)V
    .registers 6

    .line 84
    sget-object v0, Lcom/uc/crashsdk/d;->a:Lcom/uc/crashsdk/export/ICrashClient;

    if-eqz v0, :cond_c

    .line 86
    :try_start_4
    invoke-interface {v0, p0}, Lcom/uc/crashsdk/export/ICrashClient;->onCrashRestarting(Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 89
    goto :goto_c

    .line 87
    :catchall_8
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 92
    :cond_c
    :goto_c
    sget-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 93
    sget-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    monitor-enter v0

    .line 94
    :try_start_13
    sget-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_3a

    .line 97
    :try_start_25
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v4, "isJava"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_33

    .line 103
    goto :goto_19

    .line 101
    :catchall_33
    move-exception v2

    :try_start_34
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 104
    goto :goto_19

    .line 105
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw p0

    .line 107
    :cond_3d
    return-void
.end method

.method public static a(Landroid/webkit/ValueCallback;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    if-nez v0, :cond_17

    .line 152
    sget-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_7
    sget-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    if-nez v1, :cond_12

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    .line 156
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 159
    :cond_17
    :goto_17
    sget-object v0, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    monitor-enter v0

    .line 160
    :try_start_1a
    sget-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/uc/crashsdk/d;->b:I

    if-lt v1, v2, :cond_27

    .line 161
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 163
    :cond_27
    sget-object v1, Lcom/uc/crashsdk/d;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v0

    .line 165
    const/4 p0, 0x1

    return p0

    .line 164
    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public static b(Landroid/webkit/ValueCallback;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    if-nez v0, :cond_17

    .line 170
    sget-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_7
    sget-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    if-nez v1, :cond_12

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    .line 174
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 177
    :cond_17
    :goto_17
    sget-object v0, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    monitor-enter v0

    .line 178
    :try_start_1a
    sget-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/uc/crashsdk/d;->b:I

    if-lt v1, v2, :cond_27

    .line 179
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 181
    :cond_27
    sget-object v1, Lcom/uc/crashsdk/d;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    monitor-exit v0

    .line 183
    const/4 p0, 0x1

    return p0

    .line 182
    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public static c(Landroid/webkit/ValueCallback;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    if-nez v0, :cond_17

    .line 189
    sget-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_7
    sget-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    if-nez v1, :cond_12

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    .line 193
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 196
    :cond_17
    :goto_17
    sget-object v0, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    monitor-enter v0

    .line 197
    :try_start_1a
    sget-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/uc/crashsdk/d;->b:I

    if-lt v1, v2, :cond_27

    .line 198
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 200
    :cond_27
    sget-object v1, Lcom/uc/crashsdk/d;->e:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    monitor-exit v0

    .line 202
    const/4 p0, 0x1

    return p0

    .line 201
    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public static d(Landroid/webkit/ValueCallback;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    if-nez v0, :cond_17

    .line 207
    sget-object v0, Lcom/uc/crashsdk/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_7
    sget-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    if-nez v1, :cond_12

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    .line 211
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 214
    :cond_17
    :goto_17
    sget-object v0, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    monitor-enter v0

    .line 215
    :try_start_1a
    sget-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/uc/crashsdk/d;->b:I

    if-lt v1, v2, :cond_27

    .line 216
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 218
    :cond_27
    sget-object v1, Lcom/uc/crashsdk/d;->f:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v0

    .line 220
    const/4 p0, 0x1

    return p0

    .line 219
    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_2f

    throw p0
.end method
