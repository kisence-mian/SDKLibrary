.class public final Lcom/appsflyer/internal/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static AFInAppEventParameterName:Landroid/content/Intent;

.field static AFKeystoreWrapper:[Ljava/lang/String;

.field static AFLogger$LogLevel:[Ljava/lang/String;

.field private static init:Lcom/appsflyer/internal/f;

.field static volatile valueOf:Z

.field static final values:I


# instance fields
.field public AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkListener;

.field public AFVersionDeclaration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public AppsFlyer2dXConversionCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public getLevel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/appsflyer/internal/f;->values:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/f;->AppsFlyer2dXConversionCallback:Ljava/util/List;

    .line 51
    return-void
.end method

.method public static AFInAppEventParameterName()Lcom/appsflyer/internal/f;
    .registers 1

    .line 54
    sget-object v0, Lcom/appsflyer/internal/f;->init:Lcom/appsflyer/internal/f;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/appsflyer/internal/f;

    invoke-direct {v0}, Lcom/appsflyer/internal/f;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/f;->init:Lcom/appsflyer/internal/f;

    .line 57
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/f;->init:Lcom/appsflyer/internal/f;

    return-object v0
.end method

.method private static AFInAppEventType(Ljava/lang/String;)Z
    .registers 4

    .line 77
    sget-object v0, Lcom/appsflyer/internal/f;->AFKeystoreWrapper:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 78
    return v1

    .line 81
    :cond_6
    const-string v0, "af_tranid="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 82
    return v1

    .line 85
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Validate if link "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " belongs to ESP domains: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/appsflyer/internal/f;->AFKeystoreWrapper:[Ljava/lang/String;

    .line 86
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 88
    :try_start_31
    sget-object v0, Lcom/appsflyer/internal/f;->AFKeystoreWrapper:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_44
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_44} :catch_45

    return p0

    .line 89
    :catch_45
    move-exception p0

    .line 90
    return v1
.end method

.method static AFKeystoreWrapper(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3

    .line 278
    nop

    .line 279
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 280
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    goto :goto_15

    .line 282
    :cond_14
    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method

.method private AFKeystoreWrapper(Ljava/lang/Object;Ljava/util/Iterator;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 248
    :goto_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 249
    return-object v1

    .line 251
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 253
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_23

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 254
    return-object p1

    .line 256
    :cond_23
    return-object v1

    .line 261
    :cond_24
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_37} :catch_39

    .line 265
    nop

    .line 266
    goto :goto_0

    .line 263
    :catch_39
    move-exception p1

    .line 264
    return-object v1
.end method

.method static synthetic valueOf(Ljava/lang/String;)Z
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/appsflyer/internal/f;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/f;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/f;->valueOf:Z

    .line 1045
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    if-nez v0, :cond_18

    .line 1046
    new-instance v0, Lcom/appsflyer/internal/n;

    invoke-direct {v0}, Lcom/appsflyer/internal/n;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 1048
    :cond_18
    sget-object v0, Lcom/appsflyer/internal/n;->valueOf:Lcom/appsflyer/internal/n;

    .line 102
    nop

    .line 1052
    iget-object v1, v0, Lcom/appsflyer/internal/n;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_27

    .line 1053
    iget-object v1, v0, Lcom/appsflyer/internal/n;->values:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/n;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1055
    :cond_27
    iget-object v0, v0, Lcom/appsflyer/internal/n;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    .line 102
    new-instance v1, Lcom/appsflyer/internal/f$4;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/appsflyer/internal/f$4;-><init>(Lcom/appsflyer/internal/f;Landroid/net/Uri;Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_39

    .line 162
    :cond_32
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsflyer/internal/af;->valueOf(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    .line 165
    :goto_39
    const/4 p1, 0x0

    sput-object p1, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Landroid/content/Intent;

    .line 166
    return-void
.end method

.method final values(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 169
    nop

    .line 170
    nop

    .line 1278
    nop

    .line 1279
    const-string v0, "android.intent.action.VIEW"

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1280
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_18

    .line 1282
    :cond_17
    move-object v2, v1

    :goto_18
    nop

    .line 170
    nop

    .line 171
    sget-object v3, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Landroid/content/Intent;

    .line 2278
    nop

    .line 2279
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2280
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2f

    .line 2282
    :cond_2e
    move-object v0, v1

    :goto_2f
    nop

    .line 171
    nop

    .line 172
    nop

    .line 3215
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 3216
    iget-object v4, p0, Lcom/appsflyer/internal/f;->AppsFlyer2dXConversionCallback:Ljava/util/List;

    if-eqz v4, :cond_a0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a0

    if-nez v3, :cond_43

    goto :goto_a0

    .line 3219
    :cond_43
    iget-object v4, p0, Lcom/appsflyer/internal/f;->AppsFlyer2dXConversionCallback:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 3220
    nop

    .line 3232
    if-nez v5, :cond_5a

    .line 3233
    move-object v6, v1

    goto :goto_78

    .line 3235
    :cond_5a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3236
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_66

    .line 3237
    move-object v6, v1

    goto :goto_78

    .line 3239
    :cond_66
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3240
    if-nez v7, :cond_74

    .line 3241
    move-object v6, v1

    goto :goto_78

    .line 3243
    :cond_74
    invoke-direct {p0, v7, v6}, Lcom/appsflyer/internal/f;->AFKeystoreWrapper(Ljava/lang/Object;Ljava/util/Iterator;)Landroid/net/Uri;

    move-result-object v6

    .line 3220
    :goto_78
    nop

    .line 3221
    if-eqz v6, :cond_9e

    .line 3222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found deeplink in push payload at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 3223
    invoke-static {p3}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/appsflyer/internal/f;->AppsFlyer2dXConversionCallback:Ljava/util/List;

    const-string v4, "payloadKey"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3224
    move-object v1, v6

    goto :goto_a1

    .line 3226
    :cond_9e
    goto :goto_49

    .line 3227
    :cond_9f
    goto :goto_a1

    .line 3217
    :cond_a0
    :goto_a0
    nop

    .line 172
    :goto_a1
    nop

    .line 173
    const/4 v3, 0x1

    const-string v4, " w/af_consumed"

    const/4 v5, 0x0

    const-string v6, "af_consumed"

    if-eqz v2, :cond_d6

    .line 174
    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, p2, p3, v2}, Lcom/appsflyer/internal/f;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    .line 177
    return v3

    .line 179
    :cond_bb
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 182
    return v5

    .line 185
    :cond_d6
    if-eqz v0, :cond_108

    .line 186
    sget-object p1, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Landroid/content/Intent;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ed

    .line 187
    sget-object p1, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, p2, p3, v0}, Lcom/appsflyer/internal/f;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    .line 189
    return v3

    .line 191
    :cond_ed
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed trampoline deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 194
    return v5

    .line 196
    :cond_108
    if-eqz v1, :cond_136

    .line 197
    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11b

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, p2, p3, v1}, Lcom/appsflyer/internal/f;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    .line 200
    return v3

    .line 202
    :cond_11b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed deep link from push: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 205
    return v5

    .line 208
    :cond_136
    const-string p1, "No deep link detected"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 209
    return v5
.end method
