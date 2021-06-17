.class final Lcom/appsflyer/internal/af$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/af;

.field private final values:Lcom/appsflyer/internal/h;


# direct methods
.method private constructor <init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;)V
    .registers 3

    .line 3089
    iput-object p1, p0, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3090
    iput-object p2, p0, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 3091
    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;B)V
    .registers 4

    .line 3086
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/af$c;-><init>(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    .line 3094
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    invoke-virtual {v0}, Lcom/appsflyer/internal/h;->valueOf()Ljava/util/Map;

    move-result-object v2

    .line 3095
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    invoke-virtual {v0}, Lcom/appsflyer/internal/h;->AFInAppEventType()Z

    move-result v0

    .line 3096
    iget-object v3, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 4081
    iget-object v3, v3, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 3096
    nop

    .line 3097
    iget-object v4, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 4159
    iget v4, v4, Lcom/appsflyer/internal/h;->onDeepLinkingNative:I

    .line 3097
    nop

    .line 3098
    iget-object v5, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 5058
    iget-object v9, v5, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 3098
    nop

    .line 3100
    iget-object v5, v1, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 3101
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 5095
    iget-object v0, v0, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 3101
    nop

    .line 3102
    if-eqz v0, :cond_33

    .line 3103
    sget v2, Lcom/appsflyer/attribution/RequestError;->STOP_TRACKING:I

    sget-object v3, Lcom/appsflyer/internal/at;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 3104
    :cond_33
    return-void

    .line 3106
    :cond_34
    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 3107
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_ce

    if-gt v4, v7, :cond_ce

    .line 3108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3109
    iget-object v10, v1, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-static {v10}, Lcom/appsflyer/internal/af;->getLevel(Lcom/appsflyer/internal/af;)[Lcom/appsflyer/internal/bw;

    move-result-object v10

    if-eqz v10, :cond_b0

    iget-object v10, v1, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-static {v10}, Lcom/appsflyer/internal/af;->getLevel(Lcom/appsflyer/internal/af;)[Lcom/appsflyer/internal/bw;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_52
    if-ge v12, v11, :cond_b0

    aget-object v13, v10, v12

    .line 3110
    instance-of v14, v13, Lcom/appsflyer/internal/bq;

    .line 3111
    sget-object v15, Lcom/appsflyer/internal/af$7;->AFKeystoreWrapper:[I

    .line 6048
    iget-object v5, v13, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 3111
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v15, v5

    packed-switch v5, :pswitch_data_262

    goto :goto_ac

    .line 3123
    :pswitch_66
    if-ne v4, v7, :cond_ac

    if-nez v14, :cond_ac

    .line 3124
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3125
    const-string v14, "source"

    .line 6052
    iget-object v13, v13, Lcom/appsflyer/internal/bw;->valueOf:Ljava/lang/String;

    .line 3125
    invoke-interface {v5, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    const-string v13, "response"

    const-string v14, "TIMEOUT"

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    new-instance v13, Lcom/appsflyer/internal/bs;

    invoke-direct {v13}, Lcom/appsflyer/internal/bs;-><init>()V

    invoke-interface {v5, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3128
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 3113
    :pswitch_89
    if-eqz v14, :cond_a6

    .line 3114
    const-string v5, "rfr"

    move-object v14, v13

    check-cast v14, Lcom/appsflyer/internal/bq;

    iget-object v14, v14, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    invoke-static {v9}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3116
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v14, "newGPReferrerSent"

    .line 3117
    invoke-interface {v5, v14, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 3118
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3120
    :cond_a6
    iget-object v5, v13, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3121
    nop

    .line 3109
    :cond_ac
    :goto_ac
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_52

    .line 3133
    :cond_b0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "referrers"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3134
    :cond_bb
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Lcom/appsflyer/internal/af;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 3135
    const-string v0, "fb_ddl"

    iget-object v4, v1, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-static {v4}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Lcom/appsflyer/internal/af;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3138
    :cond_ce
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    instance-of v0, v0, Lcom/appsflyer/internal/bf;

    if-nez v0, :cond_e5

    .line 3139
    new-instance v0, Lcom/appsflyer/internal/d$a;

    invoke-direct {v0, v2, v9}, Lcom/appsflyer/internal/d$a;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3140
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    invoke-virtual {v0}, Lcom/appsflyer/internal/af;->valueOf()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3143
    :cond_e5
    const/4 v4, 0x0

    :try_start_e6
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    instance-of v5, v0, Lcom/appsflyer/internal/bf;

    if-eqz v5, :cond_f5

    const-string v5, "af_key"

    .line 3144
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_fd

    :cond_f5
    const-string v5, "appsflyerKey"

    .line 3145
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3143
    :goto_fd
    nop

    .line 6127
    iput-object v5, v0, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;

    .line 3146
    monitor-enter v2
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_101} :catch_172
    .catchall {:try_start_e6 .. :try_end_101} :catchall_159

    .line 3147
    :try_start_101
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;
    :try_end_103
    .catchall {:try_start_101 .. :try_end_103} :catchall_156

    :try_start_103
    new-array v5, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const/4 v0, 0x0

    invoke-static {v10, v0, v0}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v11

    cmpl-float v0, v11, v0

    add-int/lit8 v0, v0, 0x30

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    shr-int/lit8 v10, v10, 0x16

    int-to-char v10, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v11

    shr-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0x18

    invoke-static {v0, v10, v11}, Lcom/appsflyer/internal/b;->values(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v10, "AFInAppEventType"

    new-array v11, v8, [Ljava/lang/Class;

    const-class v12, Lcom/appsflyer/internal/h;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [B
    :try_end_13a
    .catchall {:try_start_103 .. :try_end_13a} :catchall_14d

    .line 3148
    :try_start_13a
    monitor-exit v2
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_14a

    .line 3149
    :try_start_13b
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    iget-object v2, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 6163
    iput-object v5, v2, Lcom/appsflyer/internal/h;->getLevel:[B

    .line 6164
    nop

    .line 3149
    invoke-static {v0, v2}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;)V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_145} :catch_146
    .catchall {:try_start_13b .. :try_end_145} :catchall_159

    .line 3166
    return-void

    .line 3151
    :catch_146
    move-exception v0

    move-object v12, v0

    move-object v6, v5

    goto :goto_174

    .line 3148
    :catchall_14a
    move-exception v0

    move-object v6, v5

    goto :goto_157

    .line 3147
    :catchall_14d
    move-exception v0

    :try_start_14e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_155

    throw v5

    :cond_155
    throw v0
    :try_end_156
    .catchall {:try_start_14e .. :try_end_156} :catchall_156

    .line 3148
    :catchall_156
    move-exception v0

    :goto_157
    :try_start_157
    monitor-exit v2

    throw v0
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_159} :catch_172
    .catchall {:try_start_157 .. :try_end_159} :catchall_159

    .line 3161
    :catchall_159
    move-exception v0

    .line 3162
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3163
    iget-object v2, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 9095
    iget-object v2, v2, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 3163
    nop

    .line 3164
    if-eqz v2, :cond_171

    .line 3165
    sget v3, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 3167
    :cond_171
    return-void

    .line 3151
    :catch_172
    move-exception v0

    move-object v12, v0

    .line 3152
    :goto_174
    const-string v0, "Exception while sending request to server. "

    invoke-static {v0, v12}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3153
    if-eqz v6, :cond_243

    if-eqz v9, :cond_243

    const-string v0, "&isCachedRequest=true&timeincache="

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_243

    .line 3154
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    new-instance v0, Lcom/appsflyer/internal/i;

    const-string v2, "6.3.0"

    invoke-direct {v0, v3, v6, v2}, Lcom/appsflyer/internal/i;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 7056
    nop

    .line 7058
    :try_start_190
    invoke-static {v9}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 7059
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_19f

    .line 7061
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 7062
    goto/16 :goto_22d

    .line 7064
    :cond_19f
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 7065
    if-eqz v2, :cond_1b1

    array-length v2, v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_1b1

    .line 7066
    const-string v0, "reached cache limit, not caching request"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 7067
    goto/16 :goto_22d

    .line 7069
    :cond_1b1
    const-string v2, "caching request..."

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 7070
    new-instance v2, Ljava/io/File;

    invoke-static {v9}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7071
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 7072
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_1d8} :catch_21a
    .catchall {:try_start_190 .. :try_end_1d8} :catchall_217

    .line 7073
    :try_start_1d8
    const-string v2, "version="

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7074
    nop

    .line 8057
    iget-object v2, v0, Lcom/appsflyer/internal/i;->AFInAppEventParameterName:Ljava/lang/String;

    .line 7074
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7075
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 7077
    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7078
    nop

    .line 8073
    iget-object v4, v0, Lcom/appsflyer/internal/i;->AFInAppEventType:Ljava/lang/String;

    .line 7078
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7079
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 7081
    const-string v4, "data="

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7082
    invoke-virtual {v0}, Lcom/appsflyer/internal/i;->values()[B

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7083
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 7085
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_20c} :catch_214
    .catchall {:try_start_1d8 .. :try_end_20c} :catchall_210

    .line 7092
    :try_start_20c
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_226

    goto :goto_22c

    .line 7090
    :catchall_210
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    goto :goto_235

    .line 7087
    :catch_214
    move-exception v0

    move-object v4, v3

    goto :goto_21b

    .line 7090
    :catchall_217
    move-exception v0

    move-object v2, v0

    goto :goto_235

    .line 7087
    :catch_21a
    move-exception v0

    .line 7088
    :goto_21b
    :try_start_21b
    const-string v2, "Could not cache request"

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_220
    .catchall {:try_start_21b .. :try_end_220} :catchall_217

    .line 7091
    if-eqz v4, :cond_22c

    .line 7092
    :try_start_222
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_225
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_225} :catch_226

    goto :goto_22c

    .line 7095
    :catch_226
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/Throwable;)V

    .line 7097
    goto :goto_22d

    .line 7096
    :cond_22c
    :goto_22c
    nop

    .line 3155
    :goto_22d
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_243

    .line 7091
    :goto_235
    if-eqz v4, :cond_241

    .line 7092
    :try_start_237
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_23a} :catch_23b

    goto :goto_241

    .line 7095
    :catch_23b
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/Throwable;)V

    goto :goto_242

    .line 7096
    :cond_241
    :goto_241
    nop

    .line 7097
    :goto_242
    throw v2

    .line 3157
    :cond_243
    :goto_243
    iget-object v0, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 8095
    iget-object v0, v0, Lcom/appsflyer/internal/h;->values:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 3157
    nop

    .line 3158
    if-eqz v0, :cond_253

    .line 3159
    sget v2, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 3160
    :cond_253
    iget-object v6, v1, Lcom/appsflyer/internal/af$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/af;

    iget-object v7, v1, Lcom/appsflyer/internal/af$c;->values:Lcom/appsflyer/internal/h;

    .line 8132
    iget-object v8, v7, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;

    .line 3160
    invoke-static {v9}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {v6 .. v12}, Lcom/appsflyer/internal/ay;->AFKeystoreWrapper(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 3166
    return-void

    :pswitch_data_262
    .packed-switch 0x1
        :pswitch_89
        :pswitch_66
    .end packed-switch
.end method
