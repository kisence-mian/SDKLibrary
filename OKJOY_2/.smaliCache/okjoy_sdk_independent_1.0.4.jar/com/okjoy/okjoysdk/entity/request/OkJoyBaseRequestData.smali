.class public abstract Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isEmulator()Ljava/lang/String;
    .registers 17

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    sget-object v3, Lokjoy/p/b$a;->a:Lokjoy/p/b;

    .line 2
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_4ad

    .line 3
    :try_start_f
    new-instance v0, Ljava/lang/ProcessBuilder;

    const-string v6, "/system/bin/cat"

    const-string v7, "/proc/cpuinfo"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v9, "utf-8"

    invoke-direct {v8, v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_35
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_47
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4a} :catch_4b

    goto :goto_35

    :catch_4b
    move-exception v0

    move-object v0, v1

    :goto_4d
    const-string v6, "intel"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_62

    const-string v7, "amd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_62

    :cond_60
    move v0, v8

    goto :goto_63

    :cond_62
    :goto_62
    move v0, v9

    :goto_63
    if-eqz v0, :cond_67

    goto/16 :goto_49f

    .line 4
    :cond_67
    const-string v0, "ro.hardware"

    invoke-virtual {v3, v0}, Lokjoy/p/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "vbox"

    const/4 v13, -0x1

    const/4 v15, 0x0

    const-string v11, "OkEmulatorCheckUtil2"

    if-nez v0, :cond_7c

    new-instance v0, Lokjoy/p/a;

    invoke-direct {v0, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto/16 :goto_f7

    :cond_7c
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkFeaturesByHardware: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_4b6

    goto :goto_ea

    :sswitch_9e
    const-string v6, "android_x86"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v6, 0x7

    goto :goto_eb

    :sswitch_a8
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v6, 0x4

    goto :goto_eb

    :sswitch_b0
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v6, 0x5

    goto :goto_eb

    :sswitch_b8
    const-string v6, "ttvm"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    move v6, v8

    goto :goto_eb

    :sswitch_c2
    const-string v6, "nox"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v6, 0x2

    goto :goto_eb

    :sswitch_cc
    const-string v6, "ttvm_x86"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    move v6, v9

    goto :goto_eb

    :sswitch_d6
    const-string v6, "vbox86"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v6, 0x6

    goto :goto_eb

    :sswitch_e0
    const-string v6, "cancro"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v6, 0x3

    goto :goto_eb

    :cond_ea
    :goto_ea
    move v6, v13

    :goto_eb
    packed-switch v6, :pswitch_data_4d8

    const/4 v6, 0x2

    goto :goto_f1

    :pswitch_f0
    move v6, v9

    :goto_f1
    new-instance v7, Lokjoy/p/a;

    invoke-direct {v7, v6, v0}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    move-object v0, v7

    .line 5
    :goto_f7
    iget-object v6, v0, Lokjoy/p/a;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hardwareResult: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lokjoy/p/a;->a:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Lokjoy/p/a;->a:I

    if-eqz v0, :cond_119

    if-eq v0, v9, :cond_49f

    move v0, v8

    goto :goto_11a

    :cond_119
    move v0, v9

    .line 6
    :goto_11a
    const-string v7, "ro.build.flavor"

    invoke-virtual {v3, v7}, Lokjoy/p/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_128

    new-instance v7, Lokjoy/p/a;

    invoke-direct {v7, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto :goto_144

    :cond_128
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_133

    goto :goto_13b

    :cond_133
    const-string v12, "sdk_gphone"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_13d

    :goto_13b
    move v10, v9

    goto :goto_13e

    :cond_13d
    const/4 v10, 0x2

    :goto_13e
    new-instance v12, Lokjoy/p/a;

    invoke-direct {v12, v10, v7}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    move-object v7, v12

    .line 7
    :goto_144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "flavorResult: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v7, Lokjoy/p/a;->a:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v7, Lokjoy/p/a;->a:I

    if-eqz v7, :cond_163

    if-eq v7, v9, :cond_49f

    goto :goto_165

    :cond_163
    add-int/lit8 v0, v0, 0x1

    .line 8
    :goto_165
    const-string v7, "ro.product.model"

    invoke-virtual {v3, v7}, Lokjoy/p/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_173

    new-instance v7, Lokjoy/p/a;

    invoke-direct {v7, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto :goto_19b

    :cond_173
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, "google_sdk"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_180

    :goto_17f
    goto :goto_192

    :cond_180
    const-string v12, "emulator"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_189

    goto :goto_17f

    :cond_189
    const-string v12, "android sdk built for x86"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_194

    goto :goto_17f

    :goto_192
    move v10, v9

    goto :goto_195

    :cond_194
    const/4 v10, 0x2

    :goto_195
    new-instance v12, Lokjoy/p/a;

    invoke-direct {v12, v10, v7}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    move-object v7, v12

    .line 9
    :goto_19b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "modelResult: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v7, Lokjoy/p/a;->a:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v7, Lokjoy/p/a;->a:I

    if-eqz v7, :cond_1ba

    if-eq v7, v9, :cond_49f

    goto :goto_1bc

    :cond_1ba
    add-int/lit8 v0, v0, 0x1

    .line 10
    :goto_1bc
    const-string v7, "ro.product.manufacturer"

    invoke-virtual {v3, v7}, Lokjoy/p/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1ca

    new-instance v7, Lokjoy/p/a;

    invoke-direct {v7, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto :goto_1e8

    :cond_1ca
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, "genymotion"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1d7

    goto :goto_1df

    :cond_1d7
    const-string v12, "netease"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e1

    :goto_1df
    move v10, v9

    goto :goto_1e2

    :cond_1e1
    const/4 v10, 0x2

    :goto_1e2
    new-instance v12, Lokjoy/p/a;

    invoke-direct {v12, v10, v7}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    move-object v7, v12

    .line 11
    :goto_1e8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "manufacturerResult: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v7, Lokjoy/p/a;->a:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v7, Lokjoy/p/a;->a:I

    if-eqz v7, :cond_207

    if-eq v7, v9, :cond_49f

    goto :goto_209

    :cond_207
    add-int/lit8 v0, v0, 0x1

    .line 12
    :goto_209
    const-string v7, "ro.product.board"

    invoke-virtual {v3, v7}, Lokjoy/p/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "android"

    if-nez v7, :cond_219

    new-instance v7, Lokjoy/p/a;

    invoke-direct {v7, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto :goto_235

    :cond_219
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_224

    goto :goto_22c

    :cond_224
    const-string v14, "goldfish"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_22e

    :goto_22c
    move v12, v9

    goto :goto_22f

    :cond_22e
    const/4 v12, 0x2

    :goto_22f
    new-instance v14, Lokjoy/p/a;

    invoke-direct {v14, v12, v7}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    move-object v7, v14

    .line 13
    :goto_235
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "boardResult: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v7, Lokjoy/p/a;->a:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v7, Lokjoy/p/a;->a:I

    if-eqz v7, :cond_254

    if-eq v7, v9, :cond_49f

    goto :goto_256

    :cond_254
    add-int/lit8 v0, v0, 0x1

    .line 14
    :goto_256
    const-string v7, "ro.board.platform"

    invoke-virtual {v3, v7}, Lokjoy/p/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkFeaturesByPlatform: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_27a

    new-instance v7, Lokjoy/p/a;

    invoke-direct {v7, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto :goto_28d

    :cond_27a
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_286

    move v10, v9

    goto :goto_287

    :cond_286
    const/4 v10, 0x2

    :goto_287
    new-instance v12, Lokjoy/p/a;

    invoke-direct {v12, v10, v7}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    move-object v7, v12

    .line 15
    :goto_28d
    iget-object v10, v7, Lokjoy/p/a;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "platformResult: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v7, Lokjoy/p/a;->a:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v7, Lokjoy/p/a;->a:I

    if-eqz v7, :cond_2ae

    if-eq v7, v9, :cond_49f

    goto :goto_2b0

    :cond_2ae
    add-int/lit8 v0, v0, 0x1

    .line 16
    :goto_2b0
    const-string v7, "gsm.version.baseband"

    invoke-virtual {v3, v7}, Lokjoy/p/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkFeaturesByBaseBand: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_2d4

    new-instance v7, Lokjoy/p/a;

    invoke-direct {v7, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto :goto_2ef

    :cond_2d4
    const-string v12, "null"

    if-ne v12, v7, :cond_2de

    new-instance v7, Lokjoy/p/a;

    invoke-direct {v7, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto :goto_2ef

    :cond_2de
    const-string v12, "1.0.0.0"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2e8

    move v12, v9

    goto :goto_2e9

    :cond_2e8
    const/4 v12, 0x2

    :goto_2e9
    new-instance v14, Lokjoy/p/a;

    invoke-direct {v14, v12, v7}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    move-object v7, v14

    .line 17
    :goto_2ef
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "baseBandResult: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v7, Lokjoy/p/a;->a:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v7, Lokjoy/p/a;->a:I

    if-eqz v7, :cond_30e

    if-eq v7, v9, :cond_49f

    goto :goto_310

    :cond_30e
    add-int/lit8 v0, v0, 0x2

    .line 18
    :goto_310
    const-string v7, "sensor"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/SensorManager;

    invoke-virtual {v12, v13}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 19
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sensorNumber = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x7

    if-gt v12, v13, :cond_33e

    const/4 v13, 0x4

    if-lt v12, v13, :cond_33e

    add-int/lit8 v0, v0, 0x1

    .line 20
    :cond_33e
    const-string v12, "pm list package -3"

    invoke-virtual {v3, v12}, Lokjoy/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_34c

    move v12, v8

    goto :goto_353

    :cond_34c
    const-string v13, "package:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    .line 22
    :goto_353
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "userAppNumber = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x5

    if-gt v12, v13, :cond_36e

    add-int/lit8 v0, v0, 0x1

    .line 23
    :cond_36e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.camera.flash"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 24
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "supportCameraFlash = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_392

    add-int/lit8 v0, v0, 0x1

    .line 25
    :cond_392
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.camera"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 26
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "supportCamera = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_3b6

    add-int/lit8 v0, v0, 0x1

    .line 27
    :cond_3b6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.bluetooth"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 28
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "supportBluetooth = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_3da

    add-int/lit8 v0, v0, 0x1

    .line 29
    :cond_3da
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/SensorManager;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v12

    if-nez v12, :cond_3e9

    move v12, v8

    goto :goto_3ea

    :cond_3e9
    move v12, v9

    .line 30
    :goto_3ea
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "hasLightSensor = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_404

    add-int/lit8 v0, v0, 0x1

    .line 31
    :cond_404
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    if-nez v5, :cond_414

    move v5, v8

    goto :goto_415

    :cond_414
    move v5, v9

    .line 32
    :goto_415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasProximitySensor = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_42f

    add-int/lit8 v0, v0, 0x1

    .line 33
    :cond_42f
    const-string v5, "cat /proc/self/cgroup"

    invoke-virtual {v3, v5}, Lokjoy/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_43d

    new-instance v3, Lokjoy/p/a;

    invoke-direct {v3, v8, v15}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    goto :goto_444

    :cond_43d
    new-instance v5, Lokjoy/p/a;

    const/4 v7, 0x2

    invoke-direct {v5, v7, v3}, Lokjoy/p/a;-><init>(ILjava/lang/String;)V

    move-object v3, v5

    .line 34
    :goto_444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cgroupResult = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v3, Lokjoy/p/a;->a:I

    if-nez v3, :cond_460

    add-int/lit8 v0, v0, 0x1

    :cond_460
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_486

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_486

    const-string v3, "kirin"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_486

    const-string v3, "msm"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_484

    const-string v3, "APQ"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_486

    :cond_484
    add-int/lit8 v0, v0, 0x1

    :cond_486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmulator: suspectCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    if-le v0, v3, :cond_4a0

    :cond_49f
    :goto_49f
    move v8, v9

    .line 35
    :cond_4a0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_4ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_4b6
    .sparse-switch
        -0x5185cff0 -> :sswitch_e0
        -0x310ae8ad -> :sswitch_d6
        -0x261bfd92 -> :sswitch_cc
        0x1aad7 -> :sswitch_c2
        0x367d37 -> :sswitch_b8
        0x372195 -> :sswitch_b0
        0x5fb64d6 -> :sswitch_a8
        0x37e65fa6 -> :sswitch_9e
    .end sparse-switch

    :pswitch_data_4d8
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
    .end packed-switch
.end method

.method private signRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;
    .registers 8

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "password"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string v5, "repassword"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Cy@mwonv2219jdwjcnsmou29&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokjoy/q/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2Y3SK8UFP9A7L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokjoy/q/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;
    .registers 4

    new-instance v0, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    invoke-direct {v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;-><init>()V

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getGameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getAdId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getOs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osversion"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appversion"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkversion"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brand"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getTimestampStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imei"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "operators"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getMac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packagename"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getPackageSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packagesize"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getOaid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oaid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getAppFirstInstallTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firstinstalltime"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->isEmulator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isemulator"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "body"

    const-string v2, "okjoy"

    invoke-virtual {v0, v1, v2}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lokjoy/a/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :cond_10
    return-object v0
.end method

.method public getAppFirstInstallTime()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_28

    .line 1
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_b
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "0"

    :goto_28
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_17

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, -0x1

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_22
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lokjoy/a/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lokjoy/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lokjoy/a/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 10

    const-string v0, "phone"

    const-string v1, ""

    iget-object v2, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    .line 1
    :try_start_6
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v4}, Lokjoy/a/g;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-static {v2}, Lokjoy/a/g;->h(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_82

    :try_start_1d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v4, v5, :cond_37

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_80

    :cond_35
    move-object v1, v0

    goto :goto_87

    :cond_37
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3f} :catch_7a

    if-eqz v5, :cond_78

    const-string v4, "getDeviceId"

    const/4 v5, 0x0

    .line 2
    :try_start_44
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_7a

    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_72} :catch_76

    move-object v1, v0

    goto :goto_80

    :cond_74
    move-object v1, v5

    goto :goto_87

    :catch_76
    move-exception v0

    goto :goto_81

    .line 1
    :cond_78
    move-object v1, v4

    goto :goto_81

    .line 2
    :catch_7a
    move-exception v0

    .line 3
    :try_start_7b
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7f} :catch_82

    move-object v1, v0

    .line 1
    :goto_80
    goto :goto_87

    .line 2
    :cond_81
    :goto_81
    goto :goto_87

    .line 3
    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_86
    nop

    :goto_87
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 9

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_4

    :cond_1d
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_27

    goto :goto_4

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2f
    const/4 v5, 0x1

    if-ge v4, v2, :cond_48

    aget-byte v6, v1, v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_5b

    const-string v7, "%02X:"

    :try_start_36
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_56

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5a} :catch_5b

    goto :goto_61

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    const-string v0, "02:00:00:00:00:00"

    :goto_61
    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lokjoy/a/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    :try_start_2
    const-string v1, "phone"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_12

    :cond_11
    goto :goto_38

    :cond_12
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_37

    :cond_23
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v1, 0x2

    goto :goto_38

    :cond_2d
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x3

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v1, 0x1

    :goto_38
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_43
    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .registers 2

    const-string v0, "android"

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageSize()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    .line 1
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    move v3, v1

    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_40} :catch_44

    goto :goto_48

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    :goto_48
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lokjoy/a/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "POST"

    return-object v0
.end method

.method public getRequestParams()Ljava/lang/String;
    .registers 5

    const-string v0, "utf-8"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->signRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6c42\u53c2\u6570\u5217\u8868\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    :try_start_25
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    :goto_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRequestUrl()Ljava/lang/String;
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0.4"

    return-object v0
.end method

.method public getTimestampStr()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
