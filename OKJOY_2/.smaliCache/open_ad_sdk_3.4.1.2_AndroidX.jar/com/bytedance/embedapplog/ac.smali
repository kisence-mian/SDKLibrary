.class public Lcom/bytedance/embedapplog/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/CharSequence;

.field private static final b:Ljava/lang/CharSequence;

.field private static final c:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, "sony"

    sput-object v0, Lcom/bytedance/embedapplog/ac;->a:Ljava/lang/CharSequence;

    .line 27
    const-string v0, "amigo"

    sput-object v0, Lcom/bytedance/embedapplog/ac;->b:Ljava/lang/CharSequence;

    .line 28
    const-string v0, "funtouch"

    sput-object v0, Lcom/bytedance/embedapplog/ac;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 224
    const-string v0, ""

    .line 225
    nop

    .line 227
    const/4 v1, 0x0

    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 228
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 229
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_41

    .line 230
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3e

    .line 237
    nop

    .line 239
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 243
    :goto_3a
    goto :goto_3d

    .line 240
    :catch_3b
    move-exception p0

    goto :goto_3a

    .line 246
    :goto_3d
    return-object v0

    .line 232
    :catchall_3e
    move-exception p0

    move-object v1, v2

    goto :goto_42

    :catchall_41
    move-exception p0

    .line 235
    :goto_42
    nop

    .line 237
    if-eqz v1, :cond_4a

    .line 239
    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 243
    goto :goto_4a

    .line 240
    :catch_49
    move-exception p0

    .line 235
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public static a()Z
    .registers 2

    .line 168
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13

    if-lez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 170
    :catch_13
    move-exception v1

    .line 173
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .line 310
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HUAWEI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .registers 2

    .line 208
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 212
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Z
    .registers 2

    .line 264
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 265
    if-nez v0, :cond_6

    .line 266
    const/4 v0, 0x0

    return v0

    .line 269
    :cond_6
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .registers 2

    .line 273
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "OnePlus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .registers 2

    .line 277
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    .line 281
    :cond_13
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static f()Z
    .registers 3

    .line 293
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "VIBEUI_V2"

    if-nez v1, :cond_f

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 297
    :cond_f
    const-string v0, "ro.build.version.incremental"

    invoke-static {v0}, Lcom/bytedance/embedapplog/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public static g()Z
    .registers 2

    .line 302
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NUBIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .registers 2

    .line 306
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static i()Ljava/lang/String;
    .registers 1

    .line 289
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method
