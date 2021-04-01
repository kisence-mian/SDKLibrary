.class public Lcom/anythink/core/b/e/c;
.super Lcom/anythink/core/b/e/a;


# static fields
.field private static final H:Ljava/lang/String;


# instance fields
.field G:J

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/anythink/core/b/e/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/e/c;->H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/anythink/core/b/e/a;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/anythink/core/b/e/c;->I:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/anythink/core/b/e/c;->J:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 186
    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private o()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->a()I

    move-result v0

    if-nez v0, :cond_33

    .line 145
    invoke-direct {p0}, Lcom/anythink/core/b/e/c;->p()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/anythink/core/b/g/c;->a(Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2186
    const-string v1, "^[0-]+$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 147
    if-eqz v1, :cond_2d

    .line 148
    :cond_21
    iget-object v0, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_2d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 156
    :cond_33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_3b
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-static {v0}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/a/e;->f(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private p()Ljava/lang/String;
    .registers 7

    .prologue
    .line 163
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 165
    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 166
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 170
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 181
    :goto_39
    return-object v0

    :catch_3a
    move-exception v0

    .line 175
    :try_start_3b
    new-instance v0, Lcom/anythink/core/b/a/a;

    invoke-direct {v0}, Lcom/anythink/core/b/a/a;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/a$a;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/anythink/core/b/a/a$a;->a()Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_4b

    move-result-object v0

    goto :goto_39

    .line 181
    :catch_4b
    move-exception v0

    const-string v0, ""

    goto :goto_39
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 192
    const-string v0, "app"

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/anythink/core/b/e/c;->G:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 193
    return-object v6
.end method

.method public final a(ILcom/anythink/core/b/e/e;)V
    .registers 5

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/e/c;->G:J

    .line 50
    invoke-super {p0, p1, p2}, Lcom/anythink/core/b/e/a;->a(ILcom/anythink/core/b/e/e;)V

    .line 51
    return-void
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 8

    .prologue
    .line 203
    const-string v0, "app"

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string v0, "https://aa.toponad.com/v1/open/app"

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 199
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object v0
.end method

.method protected final d()[B
    .registers 3

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/b/e/c;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 78
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {p0}, Lcom/anythink/core/b/e/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_a
.end method

.method protected final e()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/anythink/core/b/e/c;->I:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/anythink/core/b/e/c;->J:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const-string v0, "1.0"

    return-object v0
.end method

.method protected final j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 114
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1144
    iget-object v0, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->a()I

    move-result v0

    if-nez v0, :cond_41

    .line 1145
    invoke-direct {p0}, Lcom/anythink/core/b/e/c;->p()Ljava/lang/String;

    move-result-object v0

    .line 1146
    invoke-static {v0}, Lcom/anythink/core/b/g/c;->a(Ljava/lang/String;)V

    .line 1147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1186
    const-string v1, "^[0-]+$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1147
    if-eqz v1, :cond_3b

    .line 1148
    :cond_2f
    iget-object v0, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    :cond_3b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1156
    :cond_41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    :cond_49
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-static {v0}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/a/e;->f(Ljava/lang/String;)V

    .line 118
    :cond_54
    invoke-super {p0}, Lcom/anythink/core/b/e/a;->k()Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    :try_start_58
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/anythink/core/b/e/c;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v1, "nw_ver"

    invoke-static {}, Lcom/anythink/core/b/g/c;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v1, "gdpr_cs"

    iget-object v2, p0, Lcom/anythink/core/b/e/c;->K:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_7b} :catch_7c

    .line 129
    :goto_7b
    return-object v0

    :catch_7c
    move-exception v1

    goto :goto_7b
.end method

.method protected final l()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/anythink/core/b/e/a;->l()Lorg/json/JSONObject;

    move-result-object v0

    .line 135
    return-object v0
.end method
