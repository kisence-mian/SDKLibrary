.class public Lcom/umeng/commonsdk/internal/utils/f;
.super Ljava/lang/Object;
.source "InfoPreference.java"


# static fields
.field private static final a:Ljava/lang/String; = "info"

.field private static final b:Ljava/lang/String; = "a_dc"

.field private static final c:Ljava/lang/String; = "bssid"

.field private static final d:Ljava/lang/String; = "ssid"

.field private static final e:Ljava/lang/String; = "a_fcy"

.field private static final f:Ljava/lang/String; = "a_hssid"

.field private static final g:Ljava/lang/String; = "a_ip"

.field private static final h:Ljava/lang/String; = "a_ls"

.field private static final i:Ljava/lang/String; = "a_mac"

.field private static final j:Ljava/lang/String; = "a_nid"

.field private static final k:Ljava/lang/String; = "rssi"

.field private static final l:Ljava/lang/String; = "sta"

.field private static final m:Ljava/lang/String; = "ts"

.field private static final n:Ljava/lang/String; = "wifiinfo"

.field private static final o:Ljava/lang/String; = "ua"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 4

    .line 123
    nop

    .line 125
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "info"

    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 128
    if-eqz p0, :cond_1d

    .line 129
    const-string v1, "wifiinfo"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    if-eqz p0, :cond_1d

    .line 131
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1e

    move-object v0, v1

    .line 138
    :cond_1d
    goto :goto_27

    .line 134
    :catch_1e
    move-exception p0

    .line 135
    nop

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 139
    :goto_27
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/commonsdk/internal/utils/a$b;)V
    .registers 8

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "info"

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_93

    .line 167
    nop

    .line 168
    const-string v0, "wifiinfo"

    const/4 v1, 0x0

    if-eqz p0, :cond_85

    .line 169
    :try_start_11
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    nop

    .line 171
    if-nez v1, :cond_1e

    .line 172
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_24

    .line 174
    :cond_1e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 176
    :goto_24
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 177
    const-string v3, "a_dc"

    iget v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->a:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v3, "bssid"

    iget-object v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v3, "ssid"

    iget-object v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v3, "a_fcy"

    iget v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->d:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string v3, "a_hssid"

    iget v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->e:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v3, "a_ip"

    iget v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->f:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v3, "a_ls"

    iget v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->g:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v3, "a_mac"

    iget-object v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v3, "a_nid"

    iget v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->i:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v3, "rssi"

    iget v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->j:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v3, "sta"

    iget v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->k:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v3, "ts"

    iget-wide v4, p1, Lcom/umeng/commonsdk/internal/utils/a$b;->l:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 192
    nop

    .line 193
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_85
    if-eqz v1, :cond_92

    .line 198
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_92} :catch_93

    .line 204
    :cond_92
    goto :goto_9c

    .line 200
    :catch_93
    move-exception p0

    .line 201
    nop

    .line 202
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 205
    :goto_9c
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 215
    const-string v0, "info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 217
    if-eqz p0, :cond_1a

    .line 218
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ua"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    :cond_1a
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 149
    const-string v0, "info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 151
    if-eqz p0, :cond_1a

    .line 152
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "wifiinfo"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    :cond_1a
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 229
    nop

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 231
    const-string v0, "info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 233
    const/4 v0, 0x0

    if-eqz p0, :cond_15

    .line 234
    const-string v1, "ua"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_15
    return-object v0
.end method
