.class public final Lcom/efs/sdk/base/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/a/a$a;
    }
.end annotation


# static fields
.field private static volatile b:J


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/efs/sdk/base/a/a/a;->b:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/a/a;->a:Z

    .line 46
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/efs/sdk/base/a/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/a/a;
    .registers 1

    .line 53
    invoke-static {}, Lcom/efs/sdk/base/a/a/a$a;->a()Lcom/efs/sdk/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/efs/sdk/base/a/a/c;)Ljava/lang/String;
    .registers 3

    .line 165
    iget-byte p1, p1, Lcom/efs/sdk/base/a/a/c;->g:B

    const-string v0, "/api/v1/raw/upload"

    packed-switch p1, :pswitch_data_24

    .line 179
    goto :goto_12

    .line 176
    :pswitch_8
    nop

    .line 177
    const-string v0, "/api/v1/mix/upload"

    goto :goto_12

    .line 172
    :pswitch_c
    nop

    .line 174
    const-string v0, "/perf_upload"

    goto :goto_12

    .line 167
    :pswitch_10
    nop

    .line 169
    nop

    .line 181
    :goto_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method static a(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 7

    .line 188
    const-string v0, "cver"

    if-nez p0, :cond_5

    .line 189
    return-void

    .line 193
    :cond_5
    iget-boolean v1, p0, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    if-nez v1, :cond_a

    .line 194
    return-void

    .line 197
    :cond_a
    iget-object v1, p0, Lcom/efs/sdk/base/http/HttpResponse;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 198
    return-void

    .line 204
    :cond_13
    :try_start_13
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/efs/sdk/base/http/HttpResponse;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v2, "code"

    .line 208
    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {p0, v2}, Lcom/efs/sdk/base/http/HttpResponse;->setBizCode(Ljava/lang/String;)V

    .line 211
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 212
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    .line 215
    :cond_30
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 216
    iget-object p0, p0, Lcom/efs/sdk/base/http/HttpResponse;->extra:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_41
    const-string p0, "stm"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2066
    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 2067
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x16e360

    cmp-long p0, v2, v4

    if-lez p0, :cond_63

    .line 2068
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/efs/sdk/base/a/a/a;->b:J
    :try_end_63
    .catchall {:try_start_13 .. :try_end_63} :catchall_64

    .line 222
    :cond_63
    return-void

    .line 220
    :catchall_64
    move-exception p0

    .line 221
    const-string v0, "efs.px.api"

    const-string v1, "checkPxReturn error"

    invoke-static {v0, v1, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method public static b()J
    .registers 5

    .line 76
    sget-wide v0, Lcom/efs/sdk/base/a/a/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 79
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/efs/sdk/base/a/a/a;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/efs/sdk/base/a/a/c;Ljava/io/File;Z)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 8

    .line 110
    invoke-virtual {p2}, Lcom/efs/sdk/base/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/a/a;->a(Ljava/lang/String;Lcom/efs/sdk/base/a/a/c;)Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-boolean v1, p0, Lcom/efs/sdk/base/a/a/a;->a:Z

    if-eqz v1, :cond_1b

    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Upload file, url is "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    const-string v2, "efs.px.api"

    invoke-static {v2, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1b
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 116
    const-string v2, "wpk-header"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/efs/sdk/base/a/h/b/d;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/a/h/b/d;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/util/Map;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object p1

    .line 119
    nop

    .line 1068
    iget-object v0, p1, Lcom/efs/sdk/base/a/h/b/d;->a:Lcom/efs/sdk/base/a/h/b/b;

    iput-object p3, v0, Lcom/efs/sdk/base/a/h/b/b;->d:Ljava/io/File;

    .line 1069
    nop

    .line 119
    iget-object p3, p2, Lcom/efs/sdk/base/a/a/c;->h:Ljava/lang/String;

    .line 120
    const-string v0, "type"

    invoke-virtual {p1, v0, p3}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p2, Lcom/efs/sdk/base/a/a/c;->l:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    const-string p3, "size"

    invoke-virtual {p1, p3, p2}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object p1

    .line 122
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "flow_limit"

    invoke-virtual {p1, p3, p2}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object p1

    .line 123
    invoke-static {}, Lcom/efs/sdk/base/a/a/d;->a()Lcom/efs/sdk/base/a/a/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/efs/sdk/base/a/h/b/d;->a(Lcom/efs/sdk/base/http/AbsHttpListener;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/h/b/d;->a()Lcom/efs/sdk/base/a/h/b/c;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/h/b/c;->b()Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p1

    .line 117
    return-object p1
.end method
