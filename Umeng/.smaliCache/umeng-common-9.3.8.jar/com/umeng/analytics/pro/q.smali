.class public Lcom/umeng/analytics/pro/q;
.super Ljava/lang/Object;
.source "DefconProcesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/q$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field private final e:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/umeng/analytics/pro/q;->e:J

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/q$1;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/umeng/analytics/pro/q;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/q;
    .registers 1

    .line 36
    sget-object v0, Lcom/umeng/analytics/pro/q$a;->a:Lcom/umeng/analytics/pro/q;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .registers 5

    .line 49
    if-nez p2, :cond_d

    .line 50
    const-string p2, "sessions"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    :cond_d
    const-string p2, "active_user"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    :cond_18
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    :cond_23
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    :cond_2e
    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    :cond_39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 68
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    :cond_42
    const-string p2, "userlevel"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 71
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    :cond_4d
    return-void
.end method

.method private b()Lorg/json/JSONArray;
    .registers 8

    .line 162
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 164
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 165
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string v4, "id"

    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v4, "start_time"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 168
    const-string v4, "end_time"

    const-wide/32 v5, 0xea60

    add-long/2addr v1, v5

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    const-string v1, "duration"

    invoke-virtual {v3, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_36} :catch_37

    .line 173
    goto :goto_38

    .line 171
    :catch_37
    move-exception v1

    .line 174
    :goto_38
    return-object v0
.end method

.method private c()Lorg/json/JSONArray;
    .registers 8

    .line 179
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 181
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 182
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 183
    const-string v4, "id"

    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v4, "start_time"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_29

    .line 188
    goto :goto_2a

    .line 186
    :catch_29
    move-exception v1

    .line 189
    :goto_2a
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .registers 4

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "defcon"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 7

    .line 77
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result v0

    .line 78
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 80
    invoke-direct {p0, p1, v2}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;Z)V

    .line 82
    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    goto :goto_3c

    .line 83
    :cond_13
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    .line 85
    const-string v0, "sessions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    :try_start_1b
    invoke-direct {p0}, Lcom/umeng/analytics/pro/q;->b()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_23

    .line 89
    goto :goto_24

    .line 88
    :catch_23
    move-exception v0

    .line 90
    :goto_24
    invoke-direct {p0, p1, v2}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;Z)V

    .line 92
    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    goto :goto_3c

    .line 93
    :cond_2f
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3c

    .line 95
    invoke-direct {p0, p1, v1}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;Z)V

    .line 97
    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    .line 100
    :cond_3c
    :goto_3c
    return-void
.end method

.method public b(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 11

    .line 108
    const-string v0, "_$pp"

    const-string v1, "_$sp"

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result v2

    .line 109
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "sessions"

    const-string v6, "active_user"

    if-ne v2, v4, :cond_4e

    .line 110
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 111
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    :cond_19
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 116
    :try_start_1f
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 118
    nop

    .line 119
    const/4 v5, 0x0

    :goto_29
    if-ge v5, v2, :cond_44

    .line 120
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 121
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 122
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    :cond_38
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 125
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_41} :catch_45

    .line 119
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 130
    :cond_44
    goto :goto_46

    .line 128
    :catch_45
    move-exception p1

    .line 133
    :cond_46
    :goto_46
    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    goto :goto_8a

    .line 134
    :cond_4e
    const/4 v0, 0x2

    if-ne v2, v0, :cond_74

    .line 135
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 136
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    :cond_5a
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 140
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    :cond_63
    :try_start_63
    invoke-direct {p0}, Lcom/umeng/analytics/pro/q;->c()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6a} :catch_6b

    .line 146
    goto :goto_6c

    .line 145
    :catch_6b
    move-exception p1

    .line 148
    :goto_6c
    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    goto :goto_8a

    .line 149
    :cond_74
    const/4 v0, 0x3

    if-ne v2, v0, :cond_8a

    .line 150
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 151
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    :cond_80
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    invoke-static {p2}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    .line 158
    :cond_8a
    :goto_8a
    return-void
.end method
