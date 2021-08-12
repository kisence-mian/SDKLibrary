.class public Lcom/bytedance/tea/crash/g/l;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static final a:Ljava/lang/CharSequence;

.field private static final b:Ljava/lang/CharSequence;

.field private static final c:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, "sony"

    sput-object v0, Lcom/bytedance/tea/crash/g/l;->a:Ljava/lang/CharSequence;

    .line 28
    const-string v0, "amigo"

    sput-object v0, Lcom/bytedance/tea/crash/g/l;->b:Ljava/lang/CharSequence;

    .line 29
    const-string v0, "funtouch"

    sput-object v0, Lcom/bytedance/tea/crash/g/l;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 39
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_b
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 44
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_16
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->m()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 48
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_21
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->k()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 53
    return-object v0

    .line 56
    :cond_2c
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->e()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 57
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_37
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->f()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 62
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_42
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->c()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 66
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_4d
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->h()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 72
    return-object v0

    .line 75
    :cond_58
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 174
    const-string v0, ""

    .line 175
    nop

    .line 177
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

    .line 178
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 179
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_3e

    .line 180
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3b

    .line 186
    invoke-static {v2}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 187
    nop

    .line 188
    return-object v0

    .line 182
    :catchall_3b
    move-exception p0

    move-object v1, v2

    goto :goto_3f

    :catchall_3e
    move-exception p0

    .line 184
    :goto_3f
    nop

    .line 186
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 184
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.uiversion"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

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

.method public static c()Z
    .registers 3

    .line 83
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

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 85
    return v2

    .line 87
    :cond_1d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "qiku"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    const/4 v2, 0x1

    :cond_36
    return v2
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string v1, "ro.vivo.product.version"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static e()Z
    .registers 2

    .line 97
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/tea/crash/g/l;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 98
    :goto_1f
    return v0
.end method

.method public static f()Z
    .registers 2

    .line 103
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/tea/crash/g/l;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 103
    :goto_1d
    return v0
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.gn.sv.version"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 2

    .line 114
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->i()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string v1, "ro.letv.release.version"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

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

    .line 115
    return-object v0

    .line 118
    :cond_2c
    const-string v0, ""

    return-object v0
.end method

.method public static i()Z
    .registers 1

    .line 122
    const-string v0, "ro.letv.release.version"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static j()Ljava/lang/String;
    .registers 2

    .line 131
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

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

    .line 135
    :cond_2c
    const-string v0, ""

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .registers 3

    .line 142
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_30

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "emotionui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 144
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

    .line 146
    :cond_30
    const-string v0, ""

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .registers 3

    .line 150
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 151
    if-eqz v0, :cond_15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flyme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 152
    return-object v0

    .line 154
    :cond_15
    const-string v0, ""

    return-object v0
.end method

.method public static m()Z
    .registers 2

    .line 158
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 162
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static n()Ljava/lang/String;
    .registers 2

    .line 166
    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->m()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coloros_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/l;->a(Ljava/lang/String;)Ljava/lang/String;

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

    .line 170
    :cond_2c
    const-string v0, ""

    return-object v0
.end method
