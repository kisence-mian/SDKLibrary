.class public Lcom/bytedance/sdk/openadsdk/utils/ad;
.super Ljava/lang/Object;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/ad$a;
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
    .registers 1

    .line 57
    const-string v0, "sony"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->c:Ljava/lang/CharSequence;

    .line 58
    const-string v0, "amigo"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->d:Ljava/lang/CharSequence;

    .line 59
    const-string v0, "funtouch"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->e:Ljava/lang/CharSequence;

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->a:Z

    .line 138
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->b:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->r()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 88
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_2c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->m()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 93
    return-object v0

    .line 96
    :cond_37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 102
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_4d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->j()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 112
    return-object v0

    .line 115
    :cond_63
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->n()Ljava/lang/String;

    move-result-object p0

    .line 276
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "emotionui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_22

    :cond_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->t()Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 33
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .registers 2

    .line 119
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    const-string v1, "flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.uiversion"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

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
    .registers 9

    .line 280
    const-string v0, "Exception while closing InputStream"

    const-string v1, "ToolUtils"

    const-string v2, ""

    .line 281
    nop

    .line 282
    nop

    .line 284
    const/4 v3, 0x0

    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getprop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4
    :try_end_24
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_9 .. :try_end_24} :catch_7e
    .catchall {:try_start_9 .. :try_end_24} :catchall_4d

    .line 285
    :try_start_24
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 286
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x400

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_34
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_24 .. :try_end_34} :catch_49
    .catchall {:try_start_24 .. :try_end_34} :catchall_4d

    .line 287
    :try_start_34
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I
    :try_end_3b
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_34 .. :try_end_3b} :catch_47
    .catchall {:try_start_34 .. :try_end_3b} :catchall_45

    .line 301
    nop

    .line 303
    :try_start_3c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 306
    :goto_3f
    goto :goto_8b

    .line 304
    :catch_40
    move-exception p0

    .line 305
    invoke-static {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 297
    :catchall_45
    move-exception v3

    goto :goto_50

    .line 290
    :catch_47
    move-exception p0

    goto :goto_4b

    :catch_49
    move-exception p0

    move-object v5, v3

    :goto_4b
    move-object v3, v4

    goto :goto_80

    .line 297
    :catchall_4d
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    .line 298
    :goto_50
    :try_start_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read sysprop "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_72

    .line 299
    nop

    .line 301
    if-eqz v5, :cond_71

    .line 303
    :try_start_69
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 306
    goto :goto_71

    .line 304
    :catch_6d
    move-exception p0

    .line 305
    invoke-static {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    :cond_71
    :goto_71
    return-object v2

    .line 301
    :catchall_72
    move-exception p0

    if-eqz v5, :cond_7d

    .line 303
    :try_start_75
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    .line 306
    goto :goto_7d

    .line 304
    :catch_79
    move-exception v2

    .line 305
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    :cond_7d
    :goto_7d
    throw p0

    .line 290
    :catch_7e
    move-exception p0

    move-object v5, v3

    .line 293
    :goto_80
    :try_start_80
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    .line 296
    goto :goto_85

    .line 294
    :catchall_84
    move-exception p0

    .line 301
    :goto_85
    if-eqz v5, :cond_8b

    .line 303
    :try_start_87
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_40

    goto :goto_3f

    .line 309
    :cond_8b
    :goto_8b
    return-object v2
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 313
    const-string v0, ""

    .line 315
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->u()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_32

    .line 316
    :try_start_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 317
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/ad$a;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/ad$a;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance p0, Lcom/bytedance/sdk/openadsdk/j/f;

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/j/f;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 319
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/ad$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/utils/ad$1;-><init>(Lcom/bytedance/sdk/openadsdk/j/f;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 327
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/j/f;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_30

    move-object v1, p0

    .line 330
    :cond_2f
    goto :goto_34

    .line 329
    :catchall_30
    move-exception p0

    goto :goto_34

    :catchall_32
    move-exception p0

    move-object v1, v0

    .line 332
    :goto_34
    if-nez v1, :cond_37

    .line 333
    return-object v0

    .line 336
    :cond_37
    return-object v1
.end method

.method public static d()Z
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 129
    return v2

    .line 130
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "qiku"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    const/4 v2, 0x1

    :cond_32
    return v2
.end method

.method public static e()Z
    .registers 2

    .line 141
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->b:Z

    if-nez v0, :cond_16

    .line 143
    const/4 v0, 0x1

    :try_start_5
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_12

    .line 145
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->a:Z

    .line 146
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->b:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    .line 148
    return v0

    .line 152
    :cond_12
    goto :goto_14

    .line 150
    :catch_13
    move-exception v1

    .line 153
    :goto_14
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->b:Z

    .line 155
    :cond_16
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/ad;->a:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string v1, "ro.vivo.product.version"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method public static g()Z
    .registers 2

    .line 164
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/ad;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 165
    :goto_1b
    return v0
.end method

.method public static h()Z
    .registers 2

    .line 170
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/ad;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 170
    :goto_19
    return v0
.end method

.method public static i()Ljava/lang/String;
    .registers 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.gn.sv.version"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 2

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string v1, "ro.letv.release.version"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

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

    .line 182
    return-object v0

    .line 185
    :cond_2c
    const-string v0, ""

    return-object v0
.end method

.method public static k()Z
    .registers 1

    .line 189
    const-string v0, "ro.letv.release.version"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static l()Ljava/lang/String;
    .registers 2

    .line 198
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

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

    return-object v0

    .line 202
    :cond_2c
    const-string v0, ""

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .registers 3

    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->n()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emotionui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 211
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

    return-object v0

    .line 213
    :cond_2c
    const-string v0, ""

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .registers 1

    .line 217
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Z
    .registers 2

    .line 221
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "smartisan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static p()Ljava/lang/String;
    .registers 3

    .line 225
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->o()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 227
    :try_start_6
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartisan_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    return-object v0

    .line 229
    :catchall_20
    move-exception v0

    .line 232
    :cond_21
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .registers 3

    .line 236
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 237
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flyme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 238
    return-object v0

    .line 240
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public static r()Z
    .registers 3

    .line 244
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 245
    nop

    .line 246
    const-string v1, "kllk"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public static s()Ljava/lang/String;
    .registers 3

    .line 251
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->r()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 252
    const-string v0, "ro.build.version.kllkrom"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coloros_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    return-object v0

    .line 256
    :cond_30
    const-string v0, ""

    return-object v0
.end method

.method public static t()Z
    .registers 3

    .line 260
    nop

    .line 262
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_30

    const-string v2, "huawei"

    if-nez v1, :cond_18

    :try_start_c
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 263
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    :cond_18
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 264
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_30

    if-eqz v1, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 268
    :goto_2f
    goto :goto_31

    .line 266
    :catchall_30
    move-exception v1

    .line 269
    :goto_31
    return v0
.end method

.method private static u()Ljava/lang/String;
    .registers 5

    .line 376
    const-string v0, ""

    .line 378
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_4c

    const-string v2, "RomUtils"

    const-string v3, "rom_property_info"

    const-string v4, "rom_info"

    if-eqz v1, :cond_29

    .line 379
    :try_start_e
    invoke-static {v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Property From SPMultiHelper..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-object v1

    .line 383
    :cond_29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ae;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Property From SP...="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_4c

    .line 385
    return-object v1

    .line 387
    :catchall_4c
    move-exception v1

    .line 389
    return-object v0
.end method
