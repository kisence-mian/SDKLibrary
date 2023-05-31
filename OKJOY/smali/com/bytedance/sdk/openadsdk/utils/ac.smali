.class public Lcom/bytedance/sdk/openadsdk/utils/ac;
.super Ljava/lang/Object;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/ac$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field private static final c:Ljava/lang/CharSequence;

.field private static final d:Ljava/lang/CharSequence;

.field private static final e:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "sony"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ac;->c:Ljava/lang/CharSequence;

    .line 57
    const-string v0, "amigo"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ac;->d:Ljava/lang/CharSequence;

    .line 58
    const-string v0, "funtouch"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ac;->e:Ljava/lang/CharSequence;

    .line 136
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/utils/ac;->a:Z

    .line 137
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/utils/ac;->b:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->p()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_a
    :goto_a
    return-object v0

    .line 78
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 82
    :cond_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 86
    :cond_21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->r()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 90
    :cond_2c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->m()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 100
    :cond_41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->h()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 101
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 104
    :cond_4c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 109
    :cond_57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->j()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 114
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 270
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->n()Ljava/lang/String;

    move-result-object p0

    .line 272
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "emotionui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->t()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Z
    .registers 2

    .prologue
    .line 118
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    const-string v1, "flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.uiversion"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 276
    const-string v3, ""

    .line 280
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1d
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_1d} :catch_44
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1d} :catch_5a
    .catchall {:try_start_3 .. :try_end_1d} :catchall_84

    move-result-object v1

    .line 281
    :try_start_1e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 282
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2e
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1e .. :try_end_2e} :catch_a0
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2e} :catch_5a
    .catchall {:try_start_1e .. :try_end_2e} :catchall_84

    .line 283
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2e .. :try_end_31} :catch_a4
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_9a
    .catchall {:try_start_2e .. :try_end_31} :catchall_98

    move-result-object v0

    .line 285
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_35
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_32 .. :try_end_35} :catch_a7
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_9e
    .catchall {:try_start_32 .. :try_end_35} :catchall_98

    .line 297
    if-eqz v2, :cond_3a

    .line 299
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 305
    :cond_3a
    :goto_3a
    return-object v0

    .line 300
    :catch_3b
    move-exception v1

    .line 301
    const-string v2, "ToolUtils"

    const-string v3, "Exception while closing InputStream"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 286
    :catch_44
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v0, v3

    .line 289
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_96
    .catchall {:try_start_48 .. :try_end_4b} :catchall_98

    .line 297
    :goto_4b
    if-eqz v2, :cond_3a

    .line 299
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_3a

    .line 300
    :catch_51
    move-exception v1

    .line 301
    const-string v2, "ToolUtils"

    const-string v3, "Exception while closing InputStream"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 293
    :catch_5a
    move-exception v1

    move-object v2, v0

    move-object v0, v3

    .line 294
    :goto_5d
    :try_start_5d
    const-string v3, "ToolUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read sysprop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_98

    .line 297
    if-eqz v2, :cond_3a

    .line 299
    :try_start_77
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_3a

    .line 300
    :catch_7b
    move-exception v1

    .line 301
    const-string v2, "ToolUtils"

    const-string v3, "Exception while closing InputStream"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 297
    :catchall_84
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_87
    if-eqz v2, :cond_8c

    .line 299
    :try_start_89
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 302
    :cond_8c
    :goto_8c
    throw v0

    .line 300
    :catch_8d
    move-exception v1

    .line 301
    const-string v2, "ToolUtils"

    const-string v3, "Exception while closing InputStream"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8c

    .line 290
    :catch_96
    move-exception v1

    goto :goto_4b

    .line 297
    :catchall_98
    move-exception v0

    goto :goto_87

    .line 293
    :catch_9a
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_5d

    :catch_9e
    move-exception v1

    goto :goto_5d

    .line 286
    :catch_a0
    move-exception v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_48

    :catch_a4
    move-exception v0

    move-object v0, v3

    goto :goto_48

    :catch_a7
    move-exception v3

    goto :goto_48
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 309
    const-string v1, ""

    .line 311
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->u()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 313
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ac$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ac$a;-><init>(Ljava/lang/String;)V

    .line 314
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/b;

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/b;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 315
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/ac$1;

    invoke-direct {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/b;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Lcom/bytedance/sdk/openadsdk/i/c;)V

    .line 323
    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/i/b;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2e} :catch_33

    .line 328
    :goto_2e
    if-nez v0, :cond_32

    .line 329
    const-string v0, ""

    .line 332
    :cond_32
    return-object v0

    .line 325
    :catch_33
    move-exception v0

    move-object v0, v1

    goto :goto_2e

    :cond_36
    move-object v0, v1

    goto :goto_2e
.end method

.method public static d()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 130
    :cond_1c
    :goto_1c
    return v0

    .line 129
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, "360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "qiku"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_31
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public static e()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 140
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ac;->b:Z

    if-nez v0, :cond_19

    .line 142
    :try_start_5
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_17

    .line 144
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ac;->a:Z

    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ac;->b:Z

    .line 147
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ac;->a:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    .line 154
    :goto_15
    return v0

    .line 149
    :catch_16
    move-exception v0

    .line 152
    :cond_17
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/utils/ac;->b:Z

    .line 154
    :cond_19
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ac;->a:Z

    goto :goto_15
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.vivo.product.version"

    .line 159
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public static g()Z
    .registers 2

    .prologue
    .line 163
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/ac;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 164
    :goto_19
    return v0

    .line 165
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static h()Z
    .registers 2

    .prologue
    .line 169
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/ac;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 169
    :goto_17
    return v0

    .line 170
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.gn.sv.version"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->k()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.letv.release.version"

    .line 182
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_2b
    return-object v0

    :cond_2c
    const-string v0, ""

    goto :goto_2b
.end method

.method public static k()Z
    .registers 1

    .prologue
    .line 188
    const-string v0, "ro.letv.release.version"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_2b
    return-object v0

    :cond_2c
    const-string v0, ""

    goto :goto_2b
.end method

.method public static m()Ljava/lang/String;
    .registers 3

    .prologue
    .line 208
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->n()Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emotionui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_2b
    return-object v0

    :cond_2c
    const-string v0, ""

    goto :goto_2b
.end method

.method public static n()Ljava/lang/String;
    .registers 1

    .prologue
    .line 216
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Z
    .registers 2

    .prologue
    .line 220
    const-string v0, "smartisan"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "smartisan"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static p()Ljava/lang/String;
    .registers 3

    .prologue
    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->o()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 226
    :try_start_6
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartisan_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 231
    :goto_1f
    return-object v0

    .line 228
    :catch_20
    move-exception v0

    .line 231
    :cond_21
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_1f
.end method

.method public static q()Ljava/lang/String;
    .registers 3

    .prologue
    .line 235
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 236
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flyme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 239
    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public static r()Z
    .registers 2

    .prologue
    .line 243
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->r()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coloros_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_2b
    return-object v0

    :cond_2c
    const-string v0, ""

    goto :goto_2b
.end method

.method public static t()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 258
    :try_start_1
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_17
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 261
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2f

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2d
    const/4 v0, 0x1

    .line 265
    :cond_2e
    :goto_2e
    return v0

    .line 262
    :catch_2f
    move-exception v1

    goto :goto_2e
.end method

.method private static u()Ljava/lang/String;
    .registers 4

    .prologue
    .line 372
    const-string v0, ""

    .line 374
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 375
    const-string v0, "rom_info"

    const-string v1, "rom_property_info"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, "RomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Property From SPMultiHelper..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_2a
    return-object v0

    .line 379
    :cond_2b
    const-string v0, "rom_info"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    const-string v1, "rom_property_info"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v1, "RomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Property From SP...="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_55} :catch_56

    goto :goto_2a

    .line 383
    :catch_56
    move-exception v0

    .line 385
    const-string v0, ""

    goto :goto_2a
.end method
