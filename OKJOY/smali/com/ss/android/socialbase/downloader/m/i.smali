.class public Lcom/ss/android/socialbase/downloader/m/i;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method public static a()Z
    .registers 1

    .prologue
    .line 60
    const-string v0, "EMUI"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 149
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 150
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 194
    :goto_a
    return v0

    .line 153
    :cond_b
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 154
    const-string v0, "MIUI"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 155
    const-string v0, "com.xiaomi.market"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    .line 194
    :goto_21
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    .line 156
    :cond_28
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 157
    const-string v0, "EMUI"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 158
    const-string v0, "com.huawei.appmarket"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto :goto_21

    .line 159
    :cond_3f
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 160
    const-string v0, "OPPO"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 161
    const-string v0, "com.oppo.market"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto :goto_21

    .line 162
    :cond_56
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 163
    const-string v0, "VIVO"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 164
    const-string v0, "com.bbk.appstore"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto :goto_21

    .line 165
    :cond_6d
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 166
    const-string v0, "SMARTISAN"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 167
    const-string v0, "com.smartisanos.appstore"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto :goto_21

    .line 168
    :cond_84
    const-string v0, "ro.gn.sv.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 169
    const-string v0, "QIONEE"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 170
    const-string v0, "com.gionee.aora.market"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto :goto_21

    .line 171
    :cond_9b
    const-string v0, "ro.lenovo.lvp.version"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 172
    const-string v0, "LENOVO"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 173
    const-string v0, "com.lenovo.leos.appstore"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto/16 :goto_21

    .line 174
    :cond_b3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 175
    const-string v0, "SAMSUNG"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 176
    const-string v0, "com.sec.android.app.samsungapps"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto/16 :goto_21

    .line 177
    :cond_cd
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 179
    const-string v0, "ZTE"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 180
    const-string v0, "zte.com.market"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto/16 :goto_21

    .line 181
    :cond_e7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NUBIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 182
    const-string v0, "NUBIA"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 183
    const-string v0, "cn.nubia.neostore"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto/16 :goto_21

    .line 185
    :cond_101
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 187
    const-string v0, "FLYME"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    .line 188
    const-string v0, "com.meizu.mstore"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    goto/16 :goto_21

    .line 190
    :cond_11d
    const-string v0, "unknown"

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    .line 191
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    goto/16 :goto_21
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 198
    .line 201
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 202
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2c} :catch_3e
    .catchall {:try_start_1 .. :try_end_2c} :catchall_4c

    .line 203
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_33} :catch_5b
    .catchall {:try_start_2c .. :try_end_33} :catchall_58

    .line 208
    if-eqz v2, :cond_38

    .line 210
    :try_start_35
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 216
    :cond_38
    :goto_38
    return-object v0

    .line 211
    :catch_39
    move-exception v1

    .line 212
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 205
    :catch_3e
    move-exception v0

    move-object v0, v1

    .line 208
    :goto_40
    if-eqz v0, :cond_45

    .line 210
    :try_start_42
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_47

    :cond_45
    :goto_45
    move-object v0, v1

    .line 206
    goto :goto_38

    .line 211
    :catch_47
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 208
    :catchall_4c
    move-exception v0

    :goto_4d
    if-eqz v1, :cond_52

    .line 210
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 213
    :cond_52
    :goto_52
    throw v0

    .line 211
    :catch_53
    move-exception v1

    .line 212
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 208
    :catchall_58
    move-exception v0

    move-object v1, v2

    goto :goto_4d

    .line 205
    :catch_5b
    move-exception v0

    move-object v0, v2

    goto :goto_40
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 65
    const-string v0, "MIUI"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 70
    const-string v0, "VIVO"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 75
    const-string v0, "OPPO"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .registers 1

    .prologue
    .line 100
    const-string v0, "SAMSUNG"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 125
    const-string v0, ""

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->a(Ljava/lang/String;)Z

    .line 127
    :cond_9
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 134
    const-string v0, ""

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->a(Ljava/lang/String;)Z

    .line 136
    :cond_9
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    .prologue
    .line 142
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 143
    const-string v0, ""

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->a(Ljava/lang/String;)Z

    .line 145
    :cond_9
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final i()Ljava/lang/String;
    .registers 1

    .prologue
    .line 220
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static j()Z
    .registers 2

    .prologue
    .line 241
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->l()V

    .line 242
    const-string v0, "V10"

    sget-object v1, Lcom/ss/android/socialbase/downloader/m/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .registers 2

    .prologue
    .line 246
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->l()V

    .line 247
    const-string v0, "V11"

    sget-object v1, Lcom/ss/android/socialbase/downloader/m/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static l()V
    .registers 1

    .prologue
    .line 251
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->d:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 253
    :try_start_4
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->d:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_15

    .line 257
    :goto_c
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->d:Ljava/lang/String;

    if-nez v0, :cond_1a

    const-string v0, ""

    :goto_12
    sput-object v0, Lcom/ss/android/socialbase/downloader/m/i;->d:Ljava/lang/String;

    .line 259
    :cond_14
    return-void

    .line 254
    :catch_15
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 257
    :cond_1a
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/i;->d:Ljava/lang/String;

    goto :goto_12
.end method
