.class public final Lcom/anythink/core/common/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static d:Lcom/anythink/core/common/b/f;


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private e:Landroid/content/SharedPreferences;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "crash_type"

    iput-object v0, p0, Lcom/anythink/core/common/b/f;->f:Ljava/lang/String;

    .line 41
    const-string v0, "crash_msg"

    iput-object v0, p0, Lcom/anythink/core/common/b/f;->g:Ljava/lang/String;

    .line 42
    const-string v0, "psid"

    iput-object v0, p0, Lcom/anythink/core/common/b/f;->h:Ljava/lang/String;

    .line 44
    const-string v0, "com.anythink"

    iput-object v0, p0, Lcom/anythink/core/common/b/f;->a:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/anythink/core/common/b/f;->c:Landroid/content/Context;

    .line 56
    sget-object v0, Lcom/anythink/core/common/b/e;->s:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/f;->e:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/common/b/f;
    .registers 3

    const-class v0, Lcom/anythink/core/common/b/f;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/b/f;->d:Lcom/anythink/core/common/b/f;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Lcom/anythink/core/common/b/f;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/b/f;->d:Lcom/anythink/core/common/b/f;

    .line 50
    :cond_e
    sget-object p0, Lcom/anythink/core/common/b/f;->d:Lcom/anythink/core/common/b/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 46
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/anythink/core/common/b/f;)V
    .registers 7

    .line 33
    nop

    .line 1170
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 1171
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1172
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_20
    const-string v2, ""

    .line 1174
    :goto_22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 1176
    :try_start_28
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1177
    const-string v2, "crash_type"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1178
    const-string v4, "crash_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1179
    const-string v5, "psid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1180
    invoke-static {v2, v4, v3}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_42} :catch_43

    .line 1184
    goto :goto_f

    .line 1182
    :catch_43
    move-exception v2

    .line 1187
    :cond_44
    goto :goto_f

    .line 1189
    :cond_45
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_58

    .line 1190
    iget-object p0, p0, Lcom/anythink/core/common/b/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    :cond_58
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 6

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/anythink/core/common/b/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lcom/anythink/core/common/b/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 112
    invoke-static {p1}, Lcom/anythink/core/common/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_60

    .line 114
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
    const-string v2, "crash_type"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "crash_msg"

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string p1, "psid"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_5e
    .catchall {:try_start_e .. :try_end_32} :catchall_60

    .line 120
    :try_start_32
    iget-object p1, p0, Lcom/anythink/core/common/b/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_crash"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_59} :catch_5c
    .catch Ljava/lang/Error; {:try_start_32 .. :try_end_59} :catch_5a
    .catchall {:try_start_32 .. :try_end_59} :catchall_60

    .line 125
    return-void

    .line 124
    :catch_5a
    move-exception p1

    .line 130
    return-void

    .line 123
    :catch_5c
    move-exception p1

    .line 125
    return-void

    .line 126
    :catch_5e
    move-exception p1

    .line 134
    :cond_5f
    return-void

    .line 132
    :catchall_60
    move-exception p1

    .line 136
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    .line 140
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_45

    .line 142
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->g()I

    move-result v3

    if-nez v3, :cond_1d

    .line 143
    return v1

    .line 146
    :cond_1d
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 148
    :try_start_21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 149
    return v2

    .line 152
    :cond_28
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 153
    move v0, v1

    :goto_2e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_42

    .line 154
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_43

    if-eqz v4, :cond_3f

    .line 156
    return v2

    .line 153
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 161
    :cond_42
    goto :goto_4f

    .line 160
    :catchall_43
    move-exception p1

    goto :goto_4e

    .line 163
    :cond_45
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 164
    return v2

    .line 163
    :cond_4e
    :goto_4e
    nop

    .line 166
    :goto_4f
    return v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 243
    const-string v0, ""

    .line 245
    :try_start_2
    const-string v1, ".*?(Exception|Error|Death)"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 248
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_30

    goto :goto_1a

    .line 247
    :cond_19
    move-object p0, v0

    .line 250
    :goto_1a
    :try_start_1a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 251
    const-string v1, "Caused by:"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_2d

    .line 257
    :cond_2c
    goto :goto_32

    .line 253
    :catch_2d
    move-exception v0

    move-object v0, p0

    goto :goto_31

    :catch_30
    move-exception p0

    :goto_31
    move-object p0, v0

    .line 258
    :goto_32
    return-object p0
.end method

.method private static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    .line 195
    nop

    .line 196
    nop

    .line 198
    const-string v0, ""

    if-nez p0, :cond_7

    .line 199
    return-object v0

    .line 201
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "UA_5.7.8"

    invoke-direct {v2, v3, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :goto_f
    if-eqz v2, :cond_1b

    .line 203
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_16

    .line 204
    return-object v0

    .line 206
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_f

    .line 208
    :cond_1b
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_5b
    .catchall {:try_start_8 .. :try_end_20} :catchall_4a

    .line 209
    :try_start_20
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_46
    .catchall {:try_start_20 .. :try_end_25} :catchall_42

    .line 210
    :try_start_25
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 211
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 212
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 213
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    .line 214
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_40
    .catchall {:try_start_25 .. :try_end_35} :catchall_3e

    .line 222
    :try_start_35
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    .line 226
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3c

    .line 232
    goto :goto_3d

    .line 228
    :catchall_3c
    move-exception v0

    .line 214
    :goto_3d
    return-object p0

    .line 220
    :catchall_3e
    move-exception p0

    goto :goto_44

    .line 215
    :catch_40
    move-exception p0

    goto :goto_48

    .line 220
    :catchall_42
    move-exception p0

    move-object v3, v1

    :goto_44
    move-object v1, v2

    goto :goto_4c

    .line 215
    :catch_46
    move-exception p0

    move-object v3, v1

    :goto_48
    move-object v1, v2

    goto :goto_5d

    .line 220
    :catchall_4a
    move-exception p0

    move-object v3, v1

    .line 221
    :goto_4c
    if-eqz v1, :cond_54

    .line 222
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    goto :goto_54

    .line 228
    :catchall_52
    move-exception v0

    goto :goto_5a

    .line 225
    :cond_54
    :goto_54
    if-eqz v3, :cond_59

    .line 226
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_52

    .line 232
    :cond_59
    nop

    .line 234
    :goto_5a
    throw p0

    .line 215
    :catch_5b
    move-exception p0

    move-object v3, v1

    .line 221
    :goto_5d
    if-eqz v1, :cond_65

    .line 222
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    goto :goto_65

    .line 228
    :catchall_63
    move-exception p0

    goto :goto_6b

    .line 225
    :cond_65
    :goto_65
    if-eqz v3, :cond_6c

    .line 226
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_63

    goto :goto_6c

    .line 234
    :goto_6b
    goto :goto_6d

    .line 232
    :cond_6c
    :goto_6c
    nop

    .line 235
    :goto_6d
    return-object v0
.end method

.method private b()V
    .registers 7

    .line 170
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1f
    const-string v2, ""

    .line 174
    :goto_21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 176
    :try_start_27
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v2, "crash_type"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    const-string v4, "crash_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    const-string v5, "psid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v2, v4, v3}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_41} :catch_42

    .line 184
    goto :goto_e

    .line 182
    :catch_42
    move-exception v2

    .line 187
    :cond_43
    goto :goto_e

    .line 189
    :cond_44
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 190
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    :cond_57
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->g()I

    move-result v0

    if-nez v0, :cond_1b

    .line 65
    return-void

    .line 69
    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/f$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/f$1;-><init>(Lcom/anythink/core/common/b/f;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 76
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/core/common/b/f;

    if-nez v0, :cond_35

    .line 77
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 79
    :cond_35
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_38} :catch_39

    .line 84
    return-void

    .line 80
    :catch_39
    move-exception v0

    .line 85
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8

    .line 91
    if-nez p2, :cond_3

    .line 92
    return-void

    .line 96
    :cond_3
    nop

    .line 1110
    :try_start_4
    invoke-static {p2}, Lcom/anythink/core/common/b/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-direct {p0, v0}, Lcom/anythink/core/common/b/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1112
    invoke-static {v0}, Lcom/anythink/core/common/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_64

    .line 1114
    :try_start_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1115
    const-string v3, "crash_type"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1116
    const-string v1, "crash_msg"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1117
    const-string v0, "psid"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_36} :catch_62
    .catchall {:try_start_12 .. :try_end_36} :catchall_64

    .line 1120
    :try_start_36
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_crash"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5d} :catch_60
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_5d} :catch_5e
    .catchall {:try_start_36 .. :try_end_5d} :catchall_64

    goto :goto_61

    .line 1124
    :catch_5e
    move-exception v0

    .line 1130
    goto :goto_65

    .line 1123
    :catch_60
    move-exception v0

    .line 1125
    :goto_61
    goto :goto_65

    .line 1126
    :catch_62
    move-exception v0

    .line 1134
    :cond_63
    goto :goto_65

    .line 1132
    :catchall_64
    move-exception v0

    .line 98
    :goto_65
    :try_start_65
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_72

    if-eq v0, p0, :cond_72

    instance-of v1, v0, Lcom/anythink/core/common/b/f;

    if-nez v1, :cond_72

    .line 99
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_72} :catch_73

    .line 105
    :cond_72
    return-void

    .line 101
    :catch_73
    move-exception p1

    .line 106
    return-void
.end method
